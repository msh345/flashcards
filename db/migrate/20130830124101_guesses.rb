class Guesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :card_id
      t.integer :round_id
      t.boolean :outcome
      t.timestamps
    end
  end
end
