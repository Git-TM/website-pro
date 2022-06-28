class Project < ApplicationRecord
  has_many :projectfeature, dependent: :destroy
end
