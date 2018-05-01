json.extract! company, :id, :company_number, :name, :bio, :phone_number, :email, :created_at, :updated_at
json.url company_url(company, format: :json)
