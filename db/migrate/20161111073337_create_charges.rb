class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.decimal :amount
      t.string :card_number
      t.string :cvc
      t.string :exp_month
      t.string :exp_year
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
