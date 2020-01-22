class Reservation < ApplicationRecord
  belongs_to :movie
  validates_presence_of :name, :identification, :email, :celphone
  validates :name, length: {minimum:2}
  validates :identification, length: {minimum: 6}
  validates :email, length: {minimum: 10}
  validates :celphone, length: {minimum: 7}

end
