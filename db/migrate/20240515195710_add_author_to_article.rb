class AddAuthorToArticle < ActiveRecord::Migration[7.1]
  def change
    add_reference :articles, :author, null: true, foreign_key: true
  end
end
