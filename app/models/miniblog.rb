class Miniblog < ApplicationRecord
  validates :name, presence: true
  validates :text, presence: {in:1..140}
end
