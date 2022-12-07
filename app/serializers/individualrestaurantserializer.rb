class IndividualrestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address

  has_many :pizza
end
