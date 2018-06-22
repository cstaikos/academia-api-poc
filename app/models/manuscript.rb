class Manuscript < ApplicationRecord
  has_many :citations_from, class_name: 'Citation', foreign_key: 'citer_id', dependent: :destroy
  has_many :citations_to, class_name: 'Citation', foreign_key: 'citee_id', dependent: :destroy
  has_many :works_cited, through: :citations_from, source: :citee
  has_many :cited_by, through: :citations_to, source: :citer

  belongs_to :discipline

  has_attached_file :content
  do_not_validate_attachment_file_type :content # TODO validate for PDF?
end
