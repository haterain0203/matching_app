class AddPasswordDigestToYoutubers < ActiveRecord::Migration[5.2]
  def change
    add_column :youtubers, :password_digest, :string
  end
end
