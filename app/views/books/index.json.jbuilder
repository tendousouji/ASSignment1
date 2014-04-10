json.array!(@books) do |book|
  json.extract! book, :id, :Title, :Author, :Description
  json.url book_url(book, format: :json)
end
