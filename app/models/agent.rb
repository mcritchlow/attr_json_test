class Agent < ApplicationRecord
  include AttrJson::Record
  include AttrJson::Record::QueryScopes

  attr_json :label, :string
  attr_json :alternateLabel, :string
  attr_json :orcid, :string
  attr_json :note, :string
  attr_json :identifier, :string
end
