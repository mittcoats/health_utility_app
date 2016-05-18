json.array!(@gambles) do |gamble|
  json.extract! gamble, :id, :title, :description, :instructions, :interval, :good_outcome, :bad_outcome
  json.url gamble_url(gamble, format: :json)
end
