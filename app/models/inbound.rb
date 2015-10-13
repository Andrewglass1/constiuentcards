class Inbound < ActiveRecord::Base
  validates_presence_of :name, :email
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}, :allow_blank => true
end
