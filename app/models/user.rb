class User < ApplicationRecord
  #you can add these in manually

  has_many :enrollments
  has_many :courses, through: :enrollments

  #you can add validatetion manually

  validates :first_name, :last_name, presence: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
