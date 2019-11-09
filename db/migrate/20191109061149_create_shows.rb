class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :title
      t.integer :release_year
      t.text :description

      t.timestamps
    end
  end
end
