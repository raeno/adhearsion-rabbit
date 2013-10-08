require 'spec_helper'

module Adhearsion-rabbit
  describe ControllerMethods do
    describe "mixed in to a CallController" do

      class TestController < Adhearsion::CallController
        include Adhearsion-rabbit::ControllerMethods
      end

      let(:mock_call) { double 'Call' }

      subject do
        TestController.new mock_call
      end

      describe "#greet" do
        it "greets with the correct parameter" do
          subject.expects(:play).once.with("Hello, Luca")
          subject.greet "Luca"
        end
      end

    end
  end
end
