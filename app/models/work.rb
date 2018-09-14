class Work < ApplicationRecord
  include AttrJson::Record
  include AttrJson::Record::QueryScopes

  # Some 'normal' properties
  attr_json :description, :string, rails_attribute: true
  attr_json :brief_description, :string, rails_attribute: true
  attr_json :identifier, :string, rails_attribute: true
  attr_json :call_number, :string, rails_attribute: true

  # Use AR w/ STI?
  has_many :creators
  has_many :contributors
end
