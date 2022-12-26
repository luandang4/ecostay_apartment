class Owner::Dashboards::IndexOperation < ApplicationOperation

def initialize(params, current_user, options = {})
    super
    @session = options[:session]
  end

  def call
    set_instance_variables
    set_apartment
    set_member
    set_services
  end

  private

  def set_instance_variables
    %i[
      apartment
      members
      services
    ].each do |v|
      singleton_class.class_eval { attr_reader v }
    end
  end

  def set_apartment
    @apartment = current_user.apartment
  end

  def set_member
    @members = apartment.users
  end

  def set_services
    @services = apartment.services
  end
end
