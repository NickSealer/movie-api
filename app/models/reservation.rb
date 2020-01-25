class Reservation < ApplicationRecord
  validates_presence_of :name, :lastname, :identification, :email, :celphone
  validates :name, length: {minimum:2}
  validates :lastname, length: {minimum:2}
  validates :identification, length: {minimum: 6}
  validates :email, length: {minimum: 10}
  validates :celphone, length: {minimum: 7}

  belongs_to :movie
  
  def self.movie(reservation)
    Reservation.joins(:movie).select("reservations.*, movies.id AS 'movie'").where(id: reservation.id).first
  end

  def self.movies
    Reservation.joins(:movie).select("reservations.*, movies.id AS 'movie'")
  end

end
