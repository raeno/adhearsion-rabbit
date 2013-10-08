require "bunny"

module AdhearsionRabbit
	class Service

		def initialize
			@conn = Bunny.new
			@conn.start
			@channel = @conn.create_channel
		end

		def start
			begin
			    @queue_processor = QueueProcessor.new(@channel)
				@queue_processor.start("call_queue")
			rescue Interrupt => _
			  @channel.close
			  @conn.close
			end
		end
	end
end