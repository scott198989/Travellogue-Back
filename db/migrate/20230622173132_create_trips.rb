class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.text :title
      t.text :entry
      t.text :photo
      t.date :start_date
      t.date :end_date
      t.text :city
      t.text :state
      t.text :country
      t.text :region
      t.boolean :international
      t.integer :user_id

      t.timestamps
    end
  end
end
