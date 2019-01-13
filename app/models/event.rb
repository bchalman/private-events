class Event < ApplicationRecord
  validates :title, presence: true
  validates :location, presence: true
  validates :date, presence: true
  validates :start_time, presence: true

  belongs_to :organizer, :class_name => "User"

  scope :upcoming, -> { where("date >= #{Date.current}") }
  scope :past, -> { where("date < #{Date.current}")}
end
