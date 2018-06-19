# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :name
      t.string :email
      t.string :phone
      t.string :encrypted_password
      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
