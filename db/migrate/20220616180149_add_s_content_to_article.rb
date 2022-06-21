class AddSContentToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :s_content, :string
  end
end
