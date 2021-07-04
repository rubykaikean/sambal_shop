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
require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
