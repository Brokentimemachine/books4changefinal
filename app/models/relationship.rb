class Relationship < ApplicationRecord
  belongs_to :collaborator, class_name: "User"
  belongs_to :collaborated, class_name:  "User"
  validates :collaborator_id, presence: true
  validates :collaborated_id, presence: true
end
