class Addrails < ActiveRecord::Migration[6.1]
  def change
    add_column :blogs, :ruby_rails, :string
  end
end
