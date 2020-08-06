# json.id @restaurant.id
# json.name @restaurant.name
# json.address @restaurant.address
# json.comments @restaurant.comments

json.extract! @restaurant, :id, :name, :address
json.comments @restaurant.comments do |comment|
    json.extract! comment, :id, :content
end