class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.text :body
      t.string :taglist

      t.timestamps
    end
  end
end
