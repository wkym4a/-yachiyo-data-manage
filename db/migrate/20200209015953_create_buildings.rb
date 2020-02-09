class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|
      t.string :name , limit: 20, null: false
      t.integer :sekisui_div, default: 0, limit: 1, null: false
      t.string :sekisui_num, default: "", limit: 7, null: false
      t.integer :type_div, default: 0, limit: 2, null: false
      t.string :zip_cd, default: "", limit: 7, null: false
      t.float :lat, default: 35.7012,  null: false
      t.float :lon, default: 140.0906,  null: false
      t.integer :floor, default: 0, limit: 2, null: false
      t.text :memo, default: "", limit: 500, null: false
      t.references :ooya, null: false, foreign_key: true

      t.timestamps
    end
  end
end
