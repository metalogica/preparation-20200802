# How to load restaurants in a regular Rails app
# @restaurants.map do |restaurant|
#     print restauarant.id
#     print restaurant.name
#     print restaurant.address
# end
# # => [<restaurant1.id, restaurant1.name, restaurant1.address>] 

# how to load restaurants in a Rails API?
json.array! @restaurants do |restaurant|
    # json.id restaurant.id
    # json.name restaurant.name
    # json.address restaurant.address

    json.extract! restaurant, :id, :name, :address
end