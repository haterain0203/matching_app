class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :companies_id
      t.string :topic_name
      t.text :topic_content
      t.string :topic_genre
      t.text :topic_request
      t.string :topic_cost
      t.string :topic_request_youtuber
      t.string :topic_negotiation

      t.timestamps
    end
  end
end
