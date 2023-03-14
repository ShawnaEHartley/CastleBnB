
json.merge! @listing.attributes
json.listerName @listing.lister.full_name
json.photoUrl @listing.photos.map { |file| url_for(file) }
json.listingReviews @listing.reviews do |review|
  json.id review.id
  json.body review.body
  json.cleanlinessRating review.cleanliness_rating
  json.communicationRating review.communication_rating
  json.checkinRating review.checkin_rating
  json.accuracyRating review.accuracy_rating
  json.locationRating review.location_rating
  json.valueRating review.value_rating
  json.author do
    json.fullName review.author.full_name
  end
end
json.reviewAverage do 
  json.cleanlinessRating @average_cleanliness
  json.communicationRating @average_communication
  json.checkinRating @average_checkin
  json.accuracyRating @average_accuracy
  json.locationRating @average_location
  json.valueRating @average_value
end
