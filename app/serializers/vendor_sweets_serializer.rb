class VendorSweetsSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :vendors 
end
