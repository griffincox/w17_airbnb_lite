class User < ApplicationRecord
  # Direct associations

  has_many   :userreviews,
             :foreign_key => "reviewed_id",
             :dependent => :destroy

  has_many   :reviews,
             :class_name => "Userreview",
             :foreign_key => "reviewer_id",
             :dependent => :destroy

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
