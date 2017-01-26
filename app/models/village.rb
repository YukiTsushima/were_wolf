class Village < ApplicationRecord
    has_many :users
    validates :name, presence: true
    has_many :villageSettings, dependent: :destroy
    accepts_nested_attributes_for :villageSettings
end