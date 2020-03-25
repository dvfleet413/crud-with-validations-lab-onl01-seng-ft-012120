class Song < ApplicationRecord
  include ActiveModel::Validations
  validates_with ReleaseYearValidator
  validates :title, presence: true
  validates :title, uniqueness: {scope: :release_year}
  validates :release_year, presence: true, if: :released
end
