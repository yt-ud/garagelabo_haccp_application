class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :date
      t.string :namekannji
      t.string :namefurigana
      t.string :namecompany
      t.string :addresscompany
      t.string :phonenumber
      t.string :email
      t.string :faxnumber
      t.string :haccp1
      t.string :haccp2
      t.text :other
      t.text :haccp3

      t.timestamps
    end
  end
end
