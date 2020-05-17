module Types
  class DigimonType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :chosen_child, ::Types::ChildType, null: true
  end
end
