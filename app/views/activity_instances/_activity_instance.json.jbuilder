json.extract! activity_instance, :id, :activity_id, :date, :amount, :description, :created_at, :updated_at
json.url activity_instance_url(activity_instance, format: :json)
