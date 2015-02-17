class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :name
      t.references :user, index: true
      t.json :styling

      t.timestamps
    end
  end
end
