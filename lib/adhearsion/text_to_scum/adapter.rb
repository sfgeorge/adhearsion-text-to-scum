require 'adhearsion/text_to_scum/adapter/yql'

module Adhearsion
  module TextToScum
    module Adapter
      class << self
        def get(type)
          case type.to_sym
          when :yql
            Adhearsion::TextToScum::Adapter::YQL
          else raise "Unsupport Adhearsion::TextToScum::Adapter type #{type.inspect}"
          end
        end
      end
    end
  end
end