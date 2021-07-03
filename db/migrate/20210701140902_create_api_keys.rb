class CreateApiKeys < ActiveRecord::Migration[6.1]
  def change
    create_table :api_keys do |t|
      t.string :app_name
      t.string :token

      t.timestamps
    end
  end
end
