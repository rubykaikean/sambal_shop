# == Schema Information
#
# Table name: companies
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  client_id  :integer
#  user_id    :integer          not null
#
class Company < ApplicationRecord


  belongs_to :user, class_name: 'User'
  belongs_to :client, class_name: 'User'

  validates :name, presence: true


end
