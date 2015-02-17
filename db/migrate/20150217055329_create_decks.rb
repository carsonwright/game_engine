class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :name
      t.integer :theme_id
      t.references :user, index: true

      t.timestamps
    end
  end
end
