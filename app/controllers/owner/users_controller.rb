class Owner::UsersController < Owner::BaseController
  def index
    operation = Owner::Users::IndexOperation.new(params, current_user, session: session)
    operation.call

    @apartment = operation.apartment
    @users     = operation.users
  end

  def show
    operation = Owner::Users::ShowOperation.new(params, current_user, session: session)
    operation.call

    @user = operation.user
    @name = operation.name
    @age  = operation.age
  end
end
