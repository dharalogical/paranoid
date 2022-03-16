class Subparanoid < ApplicationRecord
  acts_as_paranoidx
  belongs_to :paranoiac
end
