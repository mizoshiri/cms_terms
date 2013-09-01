json.array!(@pages) do |page|
  json.extract! page, :type_id, :title, :content, :status
  json.url page_url(page, format: :json)
end
