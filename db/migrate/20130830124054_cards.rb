class Cards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.belongs_to :deck
      t.string :defenition
      t.string :term
      t.timestamps
    end
  end
end
