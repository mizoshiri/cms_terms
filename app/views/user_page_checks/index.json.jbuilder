json.array!(@user_page_checks) do |user_page_check|
  json.extract! user_page_check, :user_id, :page_id
  json.url user_page_check_url(user_page_check, format: :json)
end
