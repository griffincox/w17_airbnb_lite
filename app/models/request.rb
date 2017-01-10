class Request < ApplicationRecord
  # Direct associations

  belongs_to :booking

  belongs_to :from,
             :class_name => "User"

  # Indirect associations

  # Validations

end
