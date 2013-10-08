module AdhearsionRabbit
	class QueueProcessor
		def initialize(ch)
    		@channel = ch
    		@calls = {}
  		end

		def start(queue_name)
		    @queue = @channel.queue(queue_name)
		    @exchange = @channel.default_exchange
		    @subscriber = Adhearsion.config[:subscriber]

		    @queue.subscribe(:block => true) do |delivery_info, properties, payload|
		      @subscriber.process_message delivery_info, properties, payload
		    end
		end

		def place_call(id,number, route)
			callee = "SIP/#{number}@#{route}"
    		call = Adhearsion::OutboundCall.originate callee, from: callee
    		call.on_end do |event|
    			publish_call_result(id, event.reason) unless @ca
    		end
    		call
		end

		def cancel_call(id)
			call_info = @calls[id]
			call_info.cancelled = true
			call_info.call_handler.hangup
		end

		def publish_call_result(id, result)
			call_info = @calls[id]

			callback = call_info.properties.reply_to
			cancelled? = @call_info.cancelled?
			@exchange.publish(result, :routing_key => callback, :correlation_id => id) unless cancelled?
			@calls.remove(id)
		end
	end
end