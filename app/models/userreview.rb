class Userreview < ApplicationRecord
  # Direct associations

  belongs_to :reviewed,
             :class_name => "User"

  belongs_to :reviewer,
             :class_name => "User"

  # Indirect associations

  # Validations

end
