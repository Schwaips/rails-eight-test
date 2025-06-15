# frozen_string_literal: true

module Common
  module Button
    class BtnComponent < ViewComponent::Base
      AVAILABLE_BUILDERS = %w[default button_to link_to].freeze
      AVAILABLE_TYPES = %w[submit button].freeze
      AVAILABLE_STYLE = %w[primary secondary ghost link].freeze
      AVAILABLE_OTHER_STYLES = %w[icon load full].freeze

      def initialize(builder:, # rubocop:disable Metrics/ParameterLists
                     style:, other_styles: nil,
                     type: nil,
                     path: nil, method: nil,
                     left_icon: nil, right_icon: nil,
                     disabled: false, data: {})
        super

        @builder = builder
        @classes = generate_classes(style, other_styles)
        @left_icon = left_icon
        @right_icon = right_icon
        @disabled = disabled
        @type = type
        @path = path
        @method = method
        @data = data
      end

      private

      def generate_classes(style, other_styles)
        classes = [ "btn" ]
        classes << "btn-#{style}"
        return classes unless other_styles

        other_styles.split.each do |other_style|
          classes << "#{other_style}"
        end

        classes
      end
    end
  end
end
