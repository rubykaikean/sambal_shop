# == Schema Information
#
# Table name: api_keys
#
#  id         :bigint           not null, primary key
#  app_name   :string
#  token      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ApiKey < ApplicationRecord

  validates :app_name, :token, presence: true
  validates :app_name, :token, uniqueness: true

  # Generate key using the method below :
  # SecureRandom.base64.tr('+/=', 'Qrt')
end
