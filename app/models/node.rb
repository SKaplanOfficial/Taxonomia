class Node < ApplicationRecord
  belongs_to :taxonomy, polymorphic: true, optional: true
  belongs_to :node, optional: true

  has_many :nodes, as: :expandable, dependent: :destroy

  validates :title, presence: true
end
