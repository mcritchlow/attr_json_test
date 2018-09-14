class Work < ApplicationRecord
  include AttrJson::Record
  include AttrJson::Record::QueryScopes

  # Some 'normal' properties
  attr_json :description, :string
  attr_json :brief_description, :string
  attr_json :identifier, :string
  attr_json :call_number, :string

  # Use AR w/ STI?
  has_many :creators
  has_many :contributors
end
