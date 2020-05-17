class ChildDigimon < ActiveHash::Base
  include ActiveHash::Associations

  belongs_to :child
  belongs_to :digimon

  self.data = [
    { id: 1, child_id: 1, digimon_id: 1 },
    { id: 2, child_id: 2, digimon_id: 2 },
    { id: 3, child_id: 3, digimon_id: 3 },
    { id: 4, child_id: 4, digimon_id: 4 },
  ]
end
