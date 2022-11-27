class Owner::Users::IndexOperation < ApplicationOperation

def initialize(params, current_user, options = {})
    super
    @session = options[:session]
  end

  def call
    set_instance_variables
    set_apartment
    set_users
  end

  private

  def set_instance_variables
    %i[
      apartment
      users
    ].each do |v|
      singleton_class.class_eval { attr_reader v }
    end
  end

  def set_apartment
    @apartment = current_user.apartment
  end

  def set_users
    @users = apartment.users
  end
end
