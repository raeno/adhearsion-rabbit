module AdhearsionRabbit
  class Plugin < Adhearsion::Plugin
    # Actions to perform when the plugin is loaded
    #
    init :adhearsion_rabbit do
      Service.new.start
    end

    # Basic configuration for the plugin
    #
    config :adhearsion_rabbit do
      ip 'localhost', :desc => 'RabbitMQ service ip'
      user 'user', :desc => 'RabbitMQ user name'
      password 'password', :desc => 'RabbitMQ password'
      vhost '/', :desc => 'RabbitMQ virtual host'
      queue_processor nil, :desc => 'Object to process queue messages. See "sample_queue_processor" for more details'
    end

    # Defining a Rake task is easy
    # The following can be invoked with:
    #   rake plugin_demo:info
    #
    tasks do
      namespace :adhearsion_rabbit do
        desc "Prints the PluginTemplate information"
        task :info do
          STDOUT.puts "Adhearsion-rabbit plugin v. #{VERSION}"
        end
      end
    end

  end
end