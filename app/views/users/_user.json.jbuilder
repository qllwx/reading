json.extract! user, :id, :idcode, :username, :email, :grade, :classname, :sex, :score, :created_at, :updated_at
json.url user_url(user, format: :json)
