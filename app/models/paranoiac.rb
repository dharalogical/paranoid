class Paranoiac < ActiveRecord::Base
  acts_as_paranoid
  has_many :subparanoids, dependent: :destroy
end
