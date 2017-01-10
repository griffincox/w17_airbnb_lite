class Message < ApplicationRecord
  # Direct associations

  belongs_to :from,
             :class_name => "User"

  belongs_to :to,
             :class_name => "User"

  # Indirect associations

  # Validations

end
