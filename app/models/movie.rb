class Movie < ApplicationRecord
  before_create :set_presentation_day
  before_update :set_presentation_day

  validates_presence_of :name, :description, :function_from, :function_to
  validates :name, length: {minimum:2}
  validates :description, length: {minimum: 10}

  has_many :reservations
  has_one_attached :avatar

  def set_presentation_day
    self.presentation_day = (self.function_to - self.function_from).to_i
  end

end
