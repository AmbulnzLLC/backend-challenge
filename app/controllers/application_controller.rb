class ApplicationController < ActionController::Base
  include Globals::Sentry
  include Pundit
  layout :layout_by_resource

  protect_from_forgery prepend: true, with: :exception
  before_action :authenticate_user!

  private

  def layout_by_resource
    return 'devise' if request.controller_class.to_s.start_with?('Devise')

    'application'
  end
end
