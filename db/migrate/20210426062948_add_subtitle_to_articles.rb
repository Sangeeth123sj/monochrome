class AddSubtitleToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :subtitle, :string
  end
end
