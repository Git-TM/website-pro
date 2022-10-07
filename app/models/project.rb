class Project < ApplicationRecord
  has_many :projectfeatures, dependent: :destroy, foreign_key: true
end
