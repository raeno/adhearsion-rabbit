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
      config.ip = "rabbitmq ip"
      config.user = "rabbitmq username"
      config.password = 'rabbitmq password'
      config.vhost = 'rabbitmq vhost'
      config.queue_name = 'rabbitmq queue name'
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

