class DeviseCreateStaffs < ActiveRecord::Migration
  def change
    create_table(:staffs) do |t|
      ## Database authenticatable
      t.string :email,              :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      t.timestamps
    end

    add_index :staffs, :email,                :unique => true
    add_index :staffs, :reset_password_token, :unique => true
  end
end
