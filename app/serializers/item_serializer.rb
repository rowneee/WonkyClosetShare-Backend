class ItemSerializer < ActiveModel::Serializer
  attributes :id, :owner_id, :borrower_id, :brand, :brand, :color, :size, :description, :category, :img_url, :status
  belongs_to :owner, class_name: "User"
end
