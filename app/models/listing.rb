class Listing < ApplicationRecord
  # Direct associations

  has_many   :listingreviews,
             :dependent => :destroy

  has_many   :bookmarks,
             :dependent => :destroy

  has_many   :availabilities,
             :class_name => "Booking",
             :dependent => :destroy

  has_many   :userphotos,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
