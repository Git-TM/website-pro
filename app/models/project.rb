class Project < ApplicationRecord
  has_many :projectfeatures, dependent: :destroy, index: true, foreign_key: true
end
