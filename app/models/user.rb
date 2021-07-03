class User < ApplicationRecord

  include Spree::UserMethods
  include Spree::UserAddress
  include Spree::UserPaymentSource

  has_and_belongs_to_many :spree_roles


  def self.testing
    "testing"
  end


end
