# @restaurants.map do |restaurant|
#   print restaurant.id  
#   print restaurant.name
#   print restaurant.address
# end
# => [restaurant.id, restaurant.name, restaurant.address>]

json.array! @restaurants do |restaurant|
    json.extract! restaurant, :id, :name, :address
end