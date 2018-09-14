class Agent < ApplicationRecord
  include AttrJson::Record
  include AttrJson::Record::QueryScopes
  belongs_to :work

  attr_json :label, :string
  attr_json :alternateLabel, :string
  attr_json :orcid, :string
  attr_json :note, :string
  attr_json :identifier, :string

  validates :label, presence: true

  def self.types
    %w[Creator Contributor]
  end
end
