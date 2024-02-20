class Like < ApplicationRecord
  belongs_to :train
  belongs_to :user
  
  validates_uniqueness_of :train_id, scope: :user_id
end
