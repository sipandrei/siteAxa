class Remove < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :body
  end
end
