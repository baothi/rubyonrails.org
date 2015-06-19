json.array!(@people) do |person|
  json.extract! person, :id, :name, :terms_of_service, :email, :bio, :password, :registration_number, :points, :games_played
  json.url person_url(person, format: :json)
end
