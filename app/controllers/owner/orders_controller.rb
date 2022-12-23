class Owner::OrdersController < Owner::BaseController
    skip_before_action :verify_authenticity_token, only: :destroy

    def index
    end

    def new
      @order = Owner::Orders::NewForm.new()
    end

    def create
      operation = Owner::Orders::CreateOperation.new(params, current_user, session: session)
      operation.call

      @user = operation.form
      if @user.errors.messages.present?
        return render :new
      end

      redirect_to owner_users_path
      flash[:success] = 'Successful created'
    end
  end
