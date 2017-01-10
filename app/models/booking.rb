class Booking < ApplicationRecord
  # Direct associations

  has_many   :requests,
             :dependent => :destroy

  has_many   :userreviews,
             :dependent => :destroy

  belongs_to :listing

  # Indirect associations

  # Validations

end
