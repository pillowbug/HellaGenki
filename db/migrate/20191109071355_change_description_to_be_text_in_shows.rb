class ChangeDescriptionToBeTextInShows < ActiveRecord::Migration[6.0]
  def change
    change_column :shows, :description, :text
  end
end
