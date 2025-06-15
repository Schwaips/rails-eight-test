# frozen_string_literal: true

module Common
  module Flash
    class FlashComponent < ViewComponent::Base
      def initialize(type:, message:)
        super

        @type = type
        @message = message
      end
    end
  end
end
