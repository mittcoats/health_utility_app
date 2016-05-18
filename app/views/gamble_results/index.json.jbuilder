json.array!(@gamble_results) do |gamble_result|
  json.extract! gamble_result, :id, :final_good_outcome_percent
  json.url gamble_result_url(gamble_result, format: :json)
end
