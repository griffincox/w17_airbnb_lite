class User < ApplicationRecord
  # Direct associations

  has_many   :listings,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
