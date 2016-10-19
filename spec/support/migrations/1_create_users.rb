class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :phone
      t.string :password
      t.string :country
      t.string :state
      t.string :city
      t.string :zip
      t.boolean :seeking_coach
      t.boolean :accept_email
      t.boolean :accept_phone
    end
  end
end
