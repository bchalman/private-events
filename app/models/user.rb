class User < ApplicationRecord
  before_save :downcase_email

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, length: {maximum: 255},
                                    uniqueness: {case_sensitive: false}

  has_many :organized_events, :foreign_key => "organizer_id", :class_name => "Event"

  private

  def downcase_email
    email.downcase!
  end

end
