# frozen_string_literal: true

class ApplicationForm
    include ActiveModel::Model
    include ActiveModel::Attributes
    extend ActiveModel::Translation
    include ActiveModel::Validations::Callbacks

    def initialize(attributes = {})
      # Define dynamic attributes
      self.class.attribute_names.each do |attr|
        self.class.attribute attr.to_sym
      end
      super attributes
    end

    def self.human_attribute_name(attr, _options = {})
      attr
    end

    def valid!
      raise ExceptionError::UnprocessableEntity, error_messages.to_json unless valid?
    end


    def error_message
      errors.messages.map { |key, value| { key => value.first } }
    end

    private
    def self.attribute_names
      []
    end
  end
