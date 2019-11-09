class RemoveTextFromShows < ActiveRecord::Migration[6.0]
  def change

    remove_column :shows, :text, :string
  end
end
