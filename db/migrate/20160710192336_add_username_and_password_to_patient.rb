class AddUsernameAndPasswordToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :username, :string
    add_column :patients, :password, :string
  end
end
