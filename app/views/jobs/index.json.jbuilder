json.array!(@jobs) do |job|
  json.extract! job, :id, :job_title, :date_applied, :response_date, :offer, :offer_salary, :cover_letter, :follow_up, :follow_up_date, :contact_phone, :contact_email, :contact_first_name, :contact_last_name, :notes, :company_id
  json.url job_url(job, format: :json)
end
