module Globals
  module Sentry
    extend ActiveSupport::Concern

    included do
      before_action :set_sentry_context
    end

    private

    def set_sentry_context
      ::Sentry.set_user(id: session[:current_user_id]) # or anything else in session
      ::Sentry.set_extras(params: params.to_unsafe_h, url: request.url)
    end
  end
end
