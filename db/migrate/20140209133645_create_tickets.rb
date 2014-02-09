class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :customer_name, null: false, default: ""
      t.string :customer_email, null: false, default: ""
      t.text :description, null: false
      t.string :status, null: false, default: ""
      t.string :uid, null: false, default: "", index: true
      t.references :staff, index: true
      t.timestamps
    end
  end
end
