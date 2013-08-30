class Cards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :deck_id
      t.string :definition
      t.string :term
      t.timestamps
    end
  end
end
