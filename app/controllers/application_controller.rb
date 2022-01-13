class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:email])
  end

  private

  def user_not_authorized(exception)
    respond_to do |format|
      format.html { redirect_to '/', notice: 'Current user access denied' }
      format.json { render json: { error: 'Current user access denied' }, status: :forbidden }
    end
  end

end
