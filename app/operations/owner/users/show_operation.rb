class Owner::Users::ShowOperation < ApplicationOperation

def initialize(params, current_user, options = {})
    super
    @session = options[:session]
  end

  def call
    set_instance_variables
    set_user
    set_name
  end

  private

  def set_instance_variables
    %i[
      user
      name
    ].each do |v|
      singleton_class.class_eval { attr_reader v }
    end
  end

  def set_user
    @user = User.find(params[:id])
  end

  def set_name
    @name = user.first_name + ' ' + user.last_name
  end
end
