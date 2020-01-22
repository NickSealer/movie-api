class Movie < ApplicationRecord
  has_many :reservations
  validates_presence_of :name, :description, :presentation_day
  validates :name, length: {minimum:2}
  validates :description, length: {minimum: 10}
  validates :presentation_day, length:{minimum: 1}
end
