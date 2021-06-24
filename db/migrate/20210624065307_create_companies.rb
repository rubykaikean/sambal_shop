class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :client
      # t.references :user_id, null: false, foreign_key: true
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
