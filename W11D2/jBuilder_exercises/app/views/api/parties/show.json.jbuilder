json.name @party.name
json.location @party.location

json.guests @party.guests do |guest|
  json.name guest.name
  json.gifts guest.gifts, :title
end
