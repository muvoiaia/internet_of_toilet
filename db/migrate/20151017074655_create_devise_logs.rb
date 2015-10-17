class CreateDeviseLogs < ActiveRecord::Migration
  def change
    create_table :devise_logs do |t|
      t.integer :devise_id
      t.boolean :vacant

      t.timestamps null: false
    end
  end
end
