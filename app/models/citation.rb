class Citation < ApplicationRecord
  belongs_to :citer, class_name: 'Manuscript'
  belongs_to :citee, class_name: 'Manuscript'
end
