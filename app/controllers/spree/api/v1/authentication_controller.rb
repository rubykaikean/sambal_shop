class Spree::Api::V1::AuthenticationController < Api::V1::BaseController

  def authenticate
    # extra = {
    #   encode_type: params[:encode_type],
    #   ip_address: request.remote_ip,
    #   origin: request.headers['Origin'],
    #   browser: browser,
    #   device_os: params[:device_os]
    # }

    # expire_time = JsonWebToken.expiry_format(Time.current + JsonWebToken::ACCESS_TOKEN_EXPIRY.seconds)

    # command = AuthenticateUser.call(params[:email]&.downcase&.strip, params[:password]&.strip, extra)
    # command = AuthenticateUser.call(params[:email]&.downcase&.strip, params[:password]&.strip)

    # if command.success?
    #   render json: { auth_token: command.result.first, expire_time: expire_time, refresh_token: command.result.last }
    # else
    #   realm = "Atlas API"
    #   self.headers["WWW-Authenticate"] = %(Token realm="#{realm.gsub(/"/, "")}")
    #   render json: { message: command.errors[:user_authentication] }, status: 422
    # end
  end

  def logout
    session = Session.find_by(access_token: params[:access_token])
    if session.present?
      session.delete
    end
    render json: { message: 'You have log out successfully' }, status: 200
  end

end
