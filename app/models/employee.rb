class Employee < ApplicationRecord
  belongs_to :dog
  validates :alias, uniqueness: true
  validates :title, uniqueness: true

  def to_s
    last_name + " " + first_name
  end

end
