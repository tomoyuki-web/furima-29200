class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :user,             null: false, foreign_key: true
      t.string     :name,             null: false
      t.text       :details,          null: false
      t.integer    :genre_id,         null: false 
      t.integer    :status_id,        null: false 
      t.integer    :burden_id,        null: false 
      t.integer    :prefecture_id,    null: false 
      t.integer    :delivery_day_id,  null: false 
      t.integer    :price,            null: false 
      t.timestamps
    end
  end
end

