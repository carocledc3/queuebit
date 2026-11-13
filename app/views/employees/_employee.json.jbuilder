json.extract! employee, :id, :name, :designation, :contact, :deparment_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
