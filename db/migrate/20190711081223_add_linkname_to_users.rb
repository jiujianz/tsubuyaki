class AddLinknameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :linkname, :string
  end
end
