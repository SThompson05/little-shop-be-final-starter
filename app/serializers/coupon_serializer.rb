class CouponSerializer
    include JSONAPI::Serializer
    
    attributes :id, :name, :amount, :status, :created_at, :updated_at
    
    belongs_to :merchant
    belongs_to :invoice, optional: true
  end
end