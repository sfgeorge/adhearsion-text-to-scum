module Adhearsion
  module TextToScum
    class Plugin < Adhearsion::Plugin
      # Actions to perform when the plugin is loaded
      #
      init :text_to_scum do
        ::Adhearsion::CallController.mixin ::Adhearsion::TextToScum::ControllerMethods
        logger.info "adhearsion-text-to-scum has been loaded"
      end

      # Basic configuration for the plugin
      #
      config :text_to_scum do
        adapter :yql, :desc => 'What adapter to use to convert to pirate. Currently, only :yql is supported.'
      end

      # Defining a Rake task is easy
      # The following can be invoked with:
      #   rake plugin_demo:info
      #
      tasks do
        namespace :text_to_scum do
          desc "Prints the general plugin information"
          task :info do
            STDOUT.puts "TextToScum plugin v. #{VERSION}"
          end
        end
      end

    end
  end
end
