class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :name
      t.text :content
      t.text :code1
      t.text :code2
      t.text :code3
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
