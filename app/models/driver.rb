class Driver < ApplicationRecord
    has_many :cars, dependent: :destroy
end
