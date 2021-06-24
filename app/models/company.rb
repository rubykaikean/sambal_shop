class Company < ApplicationRecord


  belongs_to :user, class_name: 'Spree::User'

  # def self.testing
  #   "testing model"
  # end

end
