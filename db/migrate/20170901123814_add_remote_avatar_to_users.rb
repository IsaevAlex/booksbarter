class AddRemoteAvatarToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :remote_avatar, :string
  end
end
