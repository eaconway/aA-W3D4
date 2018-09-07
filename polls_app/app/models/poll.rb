class Poll < ApplicationRecord 
  validates :author_id, :title, presence: true 
  
  belongs_to :author,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User
    
    
  has_many :questions,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :Response  
end 