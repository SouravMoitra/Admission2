json.array!(@registers) do |register|
  json.extract! register, :id, :active
  json.url register_url(register, format: :json)
end
