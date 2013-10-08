module AdhearsionRabbit
	class QueueProcessor
		def initialize(ch)
	    	  @channel = ch
  		end

		def start(queue_name)
		    @queue = @channel.queue(queue_name)
		    @exchange = @channel.default_exchange
		    @subscriber = Adhearsion.config.adhearsion_rabbit[:subscriber]

		    @queue.subscribe(:block => true) do |delivery_info, properties, payload|
		      @subscriber.process_message delivery_info, properties, payload
		    end
		end
	end
end
