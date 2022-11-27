class ApplicationOperation
  attr_reader :current_user, :params, :errors

  def initialize(params, current_user, opts = {})
    @current_user = current_user
    @params = params
  end

  def call; end

  def error?
    @errors.present?
  end
end
