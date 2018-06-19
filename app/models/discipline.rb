class Discipline < ApplicationRecord
  has_many :children, class_name: 'Discipline', foreign_key: 'parent_id'
  belongs_to :parent, class_name: 'Discipline', optional: true

  has_many :manuscripts, foreign_key: 'discipline_id'
end
