class NotAuthorizedException < StandardError; end

module TokenAuthenticatable
  extend ActiveSupport::Concern

  included do
    attr_reader :current_user

    before_action :get_current_user
    before_action :authenticate_user

    rescue_from NotAuthorizedException, with: -> { render json: { error: 'Not Authorized' }, status: 401 }
  end

  private

  def get_current_user
    @current_user = DecodeAuthenticationCommand.call(request.headers).result
  end

  def authenticate_user
    raise NotAuthorizedException unless @current_user
  end
end
