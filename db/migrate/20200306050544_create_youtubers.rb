class CreateYoutubers < ActiveRecord::Migration[5.2]
  def change
    create_table :youtubers do |t|
      t.string :name
      t.string :channel_name
      t.integer :registrants
      t.string :email
      t.string :genre
      t.string :accept
      t.string :career
      t.string :request

      t.timestamps
    end
  end
end
