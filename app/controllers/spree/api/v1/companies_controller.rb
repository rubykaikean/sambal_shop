class Spree::Api::V1::CompaniesController < Spree::Api::BaseController

  # before_filter :check_registration
  before_action :find_company, only: [:show, :edit, :update, :create]

  def index
    @companies = Company.all
    render json: @companies
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      render json: @company
    else
      render error: { error: "Unable create Company." }, status: 422
    end
  end

  def show
    if @company.present?
      render json: @company
    else
      render json: "No Record Found.", status: 422
    end
  end

  def edit
    render json: @company
  end

  def update
    if @company.update(company_params)
      render json: @company
    else
      # message = error_messages_wrapper(contact.errors.full_messages)
      render json: { message: @company }, status: 422
    end
  end

  private

  def find_company
    @company = Company.find_by(id: params[:id])
  end

  def company_params
    params.permit(:name, :client, :user_id)
  end

end
