require 'spec_helper'

module Adhearsion
  module TextToScum
    describe ControllerMethods do
      describe "mixed in to a CallController" do

        class TestController < Adhearsion::CallController
          include Adhearsion::TextToScum::ControllerMethods
        end

        let(:mock_call) { default_mock_call }
        subject { TestController.new mock_call }

        describe "#text_to_scum" do
          it 'converts thar land lubber talk into that of a good, filthy pirate', :integration => true do
            land_lubber_phrase = 'Is it noon yet, good friend?'
            pirate_phrase = 'Be it noon yet, good mate?'
            subject.text_to_scum(land_lubber_phrase).should eq pirate_phrase
          end
        end

      end # describe "mixed in to a CallController"
    end # ControllerMethods
  end # TextToScum
end # Adhearsion
