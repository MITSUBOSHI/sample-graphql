module Types
  class ChildType < Types::BaseObject
    field :id, ID, null: false
    field :family_name, String, null: false
    field :first_name, String, null: false
    field :age, Integer, null: false
    field :partner_digimon, ::Types::DigimonType, null: false 
  end
end
