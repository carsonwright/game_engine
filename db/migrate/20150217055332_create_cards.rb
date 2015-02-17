class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.hstore :content
      t.references :deck, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
