class Currency < ApplicationRecord
    has_many :transactions, dependent: :destroy
end
