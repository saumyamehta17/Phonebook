class CreatePhoneBooks < ActiveRecord::Migration
  def change
    create_table :phone_books do |t|
      t.string :Name
      t.integer :Number
      t.text :Email
      t.text :Address
      t.text :Photo

      t.timestamps
    end
  end
end
