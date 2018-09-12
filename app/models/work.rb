class Work < ApplicationRecord
  include AttrJson::Record
  include AttrJson::Record::QueryScopes

  # TODO: Agent doesn't have #to_type as it's not an AttrJson model..
  attr_json :creators, Agent.to_type, array: true
end
