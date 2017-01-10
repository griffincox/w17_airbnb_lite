class User < ApplicationRecord
  # Direct associations

  has_many   :received_messages,
             :class_name => "Message",
             :foreign_key => "from_id",
             :dependent => :destroy

  has_many   :sent_messages,
             :class_name => "Message",
             :foreign_key => "to_id",
             :dependent => :destroy

  has_many   :listings,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
