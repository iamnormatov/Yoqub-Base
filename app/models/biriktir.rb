class Biriktir < ApplicationRecord
  belongs_to :project
  has_one_attached :biriktirma
end
# 