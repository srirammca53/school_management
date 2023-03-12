json.extract! fee, :id, :user_id, :batch_id, :course_id, :total_fee_paid, :created_at, :updated_at
json.url fee_url(fee, format: :json)
