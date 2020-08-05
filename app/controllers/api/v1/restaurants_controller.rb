class Api::V1::RestaurantsController < Api::V1::BaseController
    def index
        #               Restaurant.all
        @restauarants = policy_scope(Restaurant)
    end
end