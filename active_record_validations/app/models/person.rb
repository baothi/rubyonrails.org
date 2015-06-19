class Person < ActiveRecord::Base
  validates :name, presence: true
  validates :terms_of_service, acceptance: { accept: 'yes' }
  validates :email, confirmation: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :bio, length: { minimum: 3,
    maximum: 10,
    tokenizer: lambda { |str| str.split(/\s+/) },
    too_short: "must have at least %{count} words",
    too_long: "must have at most %{count} words"
  }
  validates :password, length: { in: 6..20 }
  validates :registration_number, length: { is: 6 }
  validates :points, numericality: true
  validates :games_played, numericality: { only_integer: true }
end
