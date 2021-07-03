class Spree::Api::V1::UsersController < Spree::Api::BaseController

  # skip_before_action :authenticate_user, except: [:index]

  def index
    company_id = request.headers['Company-Id']
    render json: {company_id: company_id}
  end

end
