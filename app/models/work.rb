class Work < ApplicationRecord
  include AttrJson::Record
  include AttrJson::Record::QueryScopes

  # TODO: Agent doesn't have #to_type as it's not an AttrJson model.
  # attr_json :creators, Agent.to_type, array: true
  # attr_json :contributors, Agent.to_type, array: true

  # Option 2: Use IDs/ARKs, downside search might be harder?
  attr_json :creators, :integer, array: true
  attr_json :contributors, :integer, array: true
end
