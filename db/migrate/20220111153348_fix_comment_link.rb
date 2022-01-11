class FixCommentLink < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :author
    add_column :comments, :user_id, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    add_column :comments, :article_id, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    add_reference :comments, :user_id, index: true
    add_foreign_key :comments, :users
    add_reference :comments, :article_id, index: true
    add_foreign_key :comments, :articles
  end
end
