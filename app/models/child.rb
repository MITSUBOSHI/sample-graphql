class Child < ActiveHash::Base
  include ActiveHash::Associations

  has_one :child_digimon
  delegate :digimon, to: :child_digimon
  alias_method :partner_digimon, :digimon

  self.data = [
    { id: 1, family_name: '八神', first_name: '太一', age: 11 },
    { id: 2, family_name: '石田', first_name: 'ヤマト', age: 11 },
    { id: 3, family_name: '城戸', first_name: '丈', age: 12 },
    { id: 4, family_name: '八神', first_name: 'ヒカリ', age: 4 },
  ]
  alias_method :child_id, :id
end
