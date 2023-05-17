json.array! @predictions, partial: "predictions/prediction", as: :prediction
json.array! @matches, partial: "matches/match", as: :match
