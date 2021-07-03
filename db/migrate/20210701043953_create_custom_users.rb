class CreateCustomUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :mobile_contact_number
      t.string :identification_number
      t.integer :role_id
      t.integer :status_id
      t.string :display_name
      t.integer :company_id
      t.text :description

      t.timestamps
    end
  end
end
