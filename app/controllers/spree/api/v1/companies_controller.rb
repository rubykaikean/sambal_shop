class Spree::Api::V1::CompaniesController < Spree::Api::BaseController

  # before_filter :check_registration
  # before_action :find_company

  # def index
  #   @companies = Company.all

  #   respond_with(@companies)
  # end

  def show
    if @company.present?
      render @company
    else
      render json: "No Record Found", status: 422
    end
  end

  private

  def find_company
    @company = Company.find_by(id: params[:id])
  end

end
