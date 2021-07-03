class ApplicationController < ActionController::Base
  # before_action :set_time_zone, if: :user_signed_in?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  include Spree::AuthenticationHelpers
  include Spree::Core::ControllerHelpers::Auth
  include Spree::Core::ControllerHelpers::Common
  include Spree::Core::ControllerHelpers::Order
  include Spree::Core::ControllerHelpers::Store
  include Spree::Core::ControllerHelpers::Currency
  include Spree::Core::ControllerHelpers::Locale

  # helper 'spree/base'
  # helper 'spree/locale', 'spree/currency', 'spree/store'
  after_action :set_company_header

  def company_header

  end

  private

  def set_company_header
    @company_id = response.headers['company_id']
  end

end

