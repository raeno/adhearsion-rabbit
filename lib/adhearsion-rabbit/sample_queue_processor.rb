# sample queue processor
# any queue processor should take a channel as a param in a constructor
# and have a 'start' that receive queue name and do all processing

module AdhearsionRabbit
	class SampleQueueProcessor
		def initialize(channel)
	    	@channel = channel
  		end

		def start(queue_name)
		    @queue = @channel.queue(queue_name)
		    @exchange = @channel.default_exchange

		    @queue.subscribe(:block => true) do |delivery_info, properties, payload|
		      process_message delivery_info, properties, payload
		    end
		end

		private

		def process_message(delivery_info, properties, payload)
			puts 'Message processed'
			puts "Delivery Info: #{delivery_info}"
			puts "Properties: #{properties}"
			puts "Payload #{payload}"
		end

	end
end
