class CreateCoupons < ActiveRecord::Migration[7.1]
  def change
    create_table :coupons do |t|
      t.string :name, null: false
      t.float :amount, null: false
      t.string :status, null: false, default: "active"  
      t.bigint :merchant_id, null: false   
      t.bigint :invoice_id                   
      
      t.timestamps
    end
   
    add_foreign_key :coupons, :merchants
    add_foreign_key :coupons, :invoices
  end
end
