class Miniblog < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: {in: 1..140}
end
