class Owner::OrdersController < Owner::BaseController
    skip_before_action :verify_authenticity_token, only: :destroy
  
    def index
    end

    def new
    end
  end
  