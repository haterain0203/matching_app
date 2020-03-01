class Topic < ApplicationRecord
      # validates :companies_id, presence: true
      validates :topic_name, presence: true
      validates :topic_content, presence: true
      validates :topic_genre, presence: true
      validates :topic_request, presence: true
      validates :topic_cost, presence: true
      # validates :topic_request_youtuber, presence: true
      # validates :topic_negotiation, presence: true
      
      belongs_to :company
end
