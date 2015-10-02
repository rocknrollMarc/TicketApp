json.array!(@testers) do |tester|
  json.extract! tester, :id, :name, :description
  json.url tester_url(tester, format: :json)
end
