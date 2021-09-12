class Taxonomy < ApplicationRecord
    has_many :nodes, as: :expandable, dependent: :destroy

    validates :title, presence: true
    #validates :body, presence: true, length: { minimum: 10 }
end
