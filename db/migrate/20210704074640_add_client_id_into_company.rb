class AddClientIdIntoCompany < ActiveRecord::Migration[6.1]
  def change

    remove_column :companies, :client, :string

    add_column :companies, :client_id, :integer

  end
end
