class AddTypeToBlogs < ActiveRecord::Migration[6.1]
  def change
    add_column :blogs, :type, :string
  end
end
