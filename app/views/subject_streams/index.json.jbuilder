json.array!(@subject_streams) do |subject_stream|
  json.extract! subject_stream, :id, :subject_stream
  json.url subject_stream_url(subject_stream, format: :json)
end
