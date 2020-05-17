class Digimon < ActiveHash::Base
  include ActiveHash::Associations

  has_one :child_digimon
  delegate :child, to: :child
  alias_method :chosen_child, :child

  self.data = [
    { id: 1, name: 'アグモン' },
    { id: 2, name: 'ガブモン' },
    { id: 3, name: 'ゴマモン' },
    { id: 4, name: 'テイルモン' },
    { id: 5, name: 'レオモン' },
    { id: 6, name: 'エテモン' },
  ]
end
