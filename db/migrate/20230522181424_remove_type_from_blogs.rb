class RemoveTypeFromBlogs < ActiveRecord::Migration[6.1]
  def change
    remove_column :blogs, :type
  end
end
