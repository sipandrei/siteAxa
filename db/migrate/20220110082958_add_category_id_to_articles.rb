class AddCategoryIdToArticles < ActiveRecord::Migration[6.1]
  def change
    add_reference :articles, :category, index: true
    add_foreign_key :articles, :categories
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
