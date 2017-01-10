class Listing < ApplicationRecord
  # Direct associations

  has_many   :userphotos,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
