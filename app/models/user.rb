# == Schema Information
#
# Table name: users
#
#  id                    :bigint           not null, primary key
#  description           :text
#  display_name          :string
#  email                 :string
#  identification_number :string
#  mobile_contact_number :string
#  spree_api_key         :string(48)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  bill_address_id       :integer
#  company_id            :integer
#  role_id               :integer
#  ship_address_id       :integer
#  status_id             :integer
#
class User < ApplicationRecord

  include Spree::UserMethods
  include Spree::UserAddress
  include Spree::UserPaymentSource

  # has_and_belongs_to_many :spree_roles

  SUPERADMIN = 1
  ADMIN      = 2
  CLIENT     = 3

  validates :email, :status_id, presence: true
  validates :email, uniqueness: true


end
