class FixCommentFixMigration < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :article_id
    remove_column :comments, :user_id
    rename_column :comments, :article_id_id, :article_id
    rename_column :comments, :user_id_id, :user_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
