class Employee < ApplicationRecord
    has_many :duties, dependent: :destroy
end
