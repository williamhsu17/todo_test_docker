class Todo < ApplicationRecord
  validates :content, :presence => true
  validates :content, :length => { minimum: 5 }
end
