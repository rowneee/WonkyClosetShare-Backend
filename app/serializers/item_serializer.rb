class ItemSerializer < ActiveModel::Serializer
  attributes :id, :status, :borrower_id
  belongs_to :owner
end
