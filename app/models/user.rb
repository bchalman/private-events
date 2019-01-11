class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, length: {maximum: 255},
                                    uniqueness: {case_sensitive: false}

end
