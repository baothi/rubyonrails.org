class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :terms_of_service
      t.string :email
      t.string :bio
      t.string :password
      t.string :registration_number
      t.integer :points
      t.integer :games_played

      t.timestamps null: false
    end
  end
end
