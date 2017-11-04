json.extract! student, :id, :idcard, :name, :grade_id, :classname_id, :sitno, :score, :created_at, :updated_at
json.url student_url(student, format: :json)
