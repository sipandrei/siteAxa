class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.text :title
      t.text :body
      t.integer :author

      t.timestamps
    end
  end
end
