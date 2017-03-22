class CreateDealers < ActiveRecord::Migration
  def change
    create_table :dealers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :phone
      t.string :email
      t.string :rep
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :instagram

      t.timestamps null: false
    end
  end
end
