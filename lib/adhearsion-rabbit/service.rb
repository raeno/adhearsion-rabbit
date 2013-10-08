require "bunny"

module AdhearsionRabbit
	class Service

		def initialize
			@conn = Bunny.new bunny_config
			@conn.start
			@channel = @conn.create_channel
		end

		def bunny_config
			{ 
				:host     => Adhearsion.config.adhearsion_rabbit[:ip],
	            :user     => Adhearsion.config.adhearsion_rabbit[:user],
	            :password => Adhearsion.config.adhearsion_rabbit[:password],
	            :vhost 	  => Adhearsion.config.adhearsion_rabbit[:vhost]
	        }
		end

		def start
			begin
			    @queue_processor = QueueProcessor.new(@channel)
			    queue_name = Adhearsion.config.adhearsion_rabbit[:queue_name]
				@queue_processor.start(queue_name)
			rescue Interrupt => _
			  @channel.close
			  @conn.close
			end
		end
	end
end