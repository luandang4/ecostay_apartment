class Owner::Users::CreateOperation < ApplicationOperation

def initialize(params, current_user, options = {})
    super
    @session = options[:session]
  end

  def call
    set_instance_variables
    set_apartment
    validation { return true }
    create_user!
  end

  private

  def set_instance_variables
    %i[
      apartment
      user
      form
    ].each do |v|
      singleton_class.class_eval { attr_reader v }
    end
  end

  def set_apartment
    @apartment = current_user.apartment
  end

  def validation
    if params[:owner_users_new_form].present?
      room = Room.find(params[:owner_users_new_form][:room_id])
      group_user = room.group_user.present? ? room.group_user : GroupUser.create(room_id: room.id)
      attrs = params.require(:owner_users_new_form).permit(Owner::Users::CreateForm.attribute_names)
    else
      room = Room.find(params[:owner_users_create_form][:room_id])
      group_user = room.group_user.present? ? room.group_user : GroupUser.create(room_id: room.id)
      attrs = params.require(:owner_users_create_form).permit(Owner::Users::CreateForm.attribute_names)
    end

    @form   = Owner::Users::CreateForm.new(attrs.merge(role: 1, group_user_id: group_user.id))
    return if form.valid?

    yield
  end

  def create_user!
    User.create!(form.attributes)
  end
end
