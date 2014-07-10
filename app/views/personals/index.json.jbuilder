json.array!(@personals) do |personal|
  json.extract! personal, :id, :user_id, :date_of_birth, :gender, :blood_group, :fathers_name, :mothers_name, :address_present
  json.url personal_url(personal, format: :json)
end
