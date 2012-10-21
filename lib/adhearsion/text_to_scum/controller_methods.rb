require 'adhearsion/text_to_scum/adapter'

module Adhearsion
  module TextToScum
    module ControllerMethods
      def text_to_scum(phrase)
        adapter_type = Adhearsion.config[:text_to_scum].adapter
        adapter = Adhearsion::TextToScum::Adapter.get(adapter_type).new
        adapter.convert phrase
      end
    end
  end
end