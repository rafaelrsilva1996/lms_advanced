json.extract! task, :id, :delivery_date, :linked_process, :task_description, :created_at, :updated_at
json.url task_url(task, format: :json)
