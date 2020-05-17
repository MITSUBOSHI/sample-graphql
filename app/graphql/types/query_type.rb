module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :digimons, [::Types::DigimonType], null: false
    def digimons
      Digimon.all
    end

    field :digimon, ::Types::DigimonType, null: false do
      argument :id, Int, required: false
    end
    def digimon(id:)
      Digimon.find(id)
    end
  end
end
