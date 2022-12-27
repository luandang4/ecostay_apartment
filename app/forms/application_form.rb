# frozen_string_literal: true

class ApplicationForm
    include ActiveModel::Model
    include ActiveModel::Attributes
    extend ActiveModel::Translation
    include ActiveModel::Validations::Callbacks

    VALID_PHONE_REGEX = /([+]84|0)([3|5|7|8|9])+([0-9]{8})\b/
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

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
