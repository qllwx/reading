json.extract! book, :id, :bookname, :summary, :pic, :created_at, :updated_at
json.url book_url(book, format: :json)
