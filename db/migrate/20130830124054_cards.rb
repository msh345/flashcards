class Cards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :deck_id
      t.string :defenition
      t.string :termmy
      t.timestamps
    end
  end
end
