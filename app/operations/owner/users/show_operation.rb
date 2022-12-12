class Owner::Users::ShowOperation < ApplicationOperation

def initialize(params, current_user, options = {})
    super
    @session = options[:session]
  end

  def call
    set_instance_variables
    set_user
    set_name
    set_age
  end

  private

  def set_instance_variables
    %i[
      user
      name
      age
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

  def set_age
    birth_date = user.birthdate.to_date
    now = Date.today
    @age = now.year - birth_date.year
  end
end
