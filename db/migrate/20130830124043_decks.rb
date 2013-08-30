class Decks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.belongs_to :round
      t.string :subject
      t.timestamps
    end
  end
end
