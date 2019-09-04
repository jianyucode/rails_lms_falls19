class Course < ApplicationRecord
  #you can manually add these in

  has_many :enrollments
  has_many :users, through: :enrollments


  #you can manually add validations

  validates :name, presence: true
end
