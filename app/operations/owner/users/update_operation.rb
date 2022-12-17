class Owner::Users::UpdateOperation < ApplicationOperation

def initialize(params, current_user, options = {})
    super
    @session = options[:session]
  end

  def call
    set_instance_variables
    set_user
    set_room
    validation { return true }
    update_user!
  end

  private

  def set_instance_variables
    %i[
      user
      room
      form
    ].each do |v|
      singleton_class.class_eval { attr_reader v }
    end
  end

  def set_user
    @user = User.find(params[:id])
  end

  def set_room
    @room = user.room
  end

  def validation
    attrs   = params[:user].present? ?
              params.require(:user).permit(Owner::Users::UpdateForm.attribute_names) :
              params.require(:owner_users_update_form).permit(Owner::Users::UpdateForm.attribute_names)
    @form   = Owner::Users::UpdateForm.new(attrs.merge(id: user.id, role: 1, room_id: room.id, avatar: user.avatar, created_at: user.created_at))

    return if form.valid?

    yield
  end

  def update_user!
    attributes = form.attributes
    attributes.delete("avatar")
    user.update!(attributes)
  end
end
