class Duty < ApplicationRecord
  belongs_to :employee
  validates :employee_id, presence: true
end
