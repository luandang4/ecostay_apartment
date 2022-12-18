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

  def new
    @user = Owner::Users::NewForm.new()
  end

  def create
    operation = Owner::Users::CreateOperation.new(params, current_user, session: session)
    operation.call

    @user = operation.form
    if @user.errors.messages.present?
      return render :new
    end

    redirect_to owner_users_path
    flash[:success] = 'Successful created'
  end

  def update
    operation = Owner::Users::UpdateOperation.new(params, current_user, session: session)
    operation.call

    @user = operation.form
    if @user.errors.messages.present?
      return render :show
    end

    redirect_to owner_users_path
    flash[:success] = 'Successful updated'
  end
end
