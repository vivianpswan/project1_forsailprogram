class Tutor < ApplicationRecord
    has_and_belongs_to_many :students
    has_secure_password
    validates :email, :presence => true, :uniqueness => true

  
end
