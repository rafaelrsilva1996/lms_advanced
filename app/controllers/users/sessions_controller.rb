# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  prepend_before_filter: require_no_authentication, : only => [: create]
  before_filter: ensure_params_exist, only: : create

  respond_to: json

  def create
    user = User.find_by(: email => params[: user_login])
    unless user.nil ?
      if user.valid_password ? params[: password]
        render: json => user
        return
      end
    end
    render: json => '{"error": "invalid email and password combination"}'
  end

  def destroy
    sign_out(resource_name)
  end

  protected
  def ensure_params_exist
    return unless params[: user_login].blank ?
    render : json => {: success => false, : message => "missing user_login parameter"}, : status => 422
  end

  def invalid_login_attempt
    warden.custom_failure!
    render: json => {: success => false, : message => "Error with your login or password"}, : status => 401
  end
end
