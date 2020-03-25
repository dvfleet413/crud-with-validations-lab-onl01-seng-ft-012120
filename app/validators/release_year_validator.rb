class ReleaseYearValidator < ActiveModel::Validator
  def validate(record)
    if !!record.release_year
      unless record.release_year < Date.today.year
        record.errors[:release_year] << "Song release year can't be in the future"
      end
    end
  end
end
