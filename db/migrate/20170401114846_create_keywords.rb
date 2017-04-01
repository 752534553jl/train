class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :name,              null: false, default: ""
      t.string :natural_rank,      null: false, default: "0"
      t.string :right_hot_rank,    null: false, default: "0"
      t.string :bottom_hot_rank,   null: false, default: "0"

      t.references :category

      t.timestamps null: false
    end
  end
end
