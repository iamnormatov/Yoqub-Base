class Project < ApplicationRecord
    belongs_to :user
    has_many :biriktirs, dependent: :destroy
    has_many :xabars, dependent: :destroy
    has_many :vazifas, dependent: :destroy
    
end
# 