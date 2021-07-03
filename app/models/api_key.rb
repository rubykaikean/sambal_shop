class ApiKey < ApplicationRecord

  validates :app_name, :token, presence: true
  validates :app_name, :token, uniqueness: true

  # Generate key using the method below :
  # SecureRandom.base64.tr('+/=', 'Qrt')
end
