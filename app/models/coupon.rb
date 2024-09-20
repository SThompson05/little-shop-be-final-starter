class Coupon < ApplicationRecord
    belongs_to :merchant
    belongs_to :invoice, optional: true
  
    validates :name, presence: true
    validates :amount, presence: true
    validates :status, presence: true, inclusion: { in: ['active', 'inactive'] }
end
  