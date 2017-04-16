class Actor < ApplicationRecord
  belongs_to :job

  validates :name, presence: true, length: { minimum: 1 }
  validates :short_name, presence: true, length: { minimum: 1, maximum: 3 }

  def display_name
  	"#{short_name} - #{name}"
  end
end
