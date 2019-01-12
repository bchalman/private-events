class User < ApplicationRecord
  before_save :downcase_email

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, length: {maximum: 255},
                                    uniqueness: {case_sensitive: false}

  private

  def downcase_email
    email.downcase!
  end

end
