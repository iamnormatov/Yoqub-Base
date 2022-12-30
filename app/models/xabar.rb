class Xabar < ApplicationRecord
  belongs_to :project
  has_many :xabardor, dependent: :destroy
end
# 