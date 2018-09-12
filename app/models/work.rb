class Work < ApplicationRecord
  include AttrJson::Record
  include AttrJson::Record::QueryScopes

  attr_json :creators, AttrJson::Type::Model, array: true
end
