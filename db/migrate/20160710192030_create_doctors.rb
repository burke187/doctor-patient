class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :encrypted_password
      t.string :username

      t.timestamps null: false
    end
  end
end
