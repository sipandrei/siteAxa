class DropArticlesTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :articles
    create_table :articles do |t|
      t.text :title
      t.text :body
      t.belongs_to :author, foreign_key: true

      t.timestamps
    end

  end
end
