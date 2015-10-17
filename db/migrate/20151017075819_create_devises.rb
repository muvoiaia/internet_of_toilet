class CreateDevises < ActiveRecord::Migration
  def change
    create_table :devises do |t|
      t.integer :room_id
      t.string :address

      t.timestamps null: false
    end
  end
end
