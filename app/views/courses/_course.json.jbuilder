json.extract! course, :id, :name, :version, :fee, :references, :created_at, :updated_at
json.url course_url(course, format: :json)
