class Api::V1::RestaurantsController < Api::V1::BaseController
    def index
        #               Restaurant.all
        @restaurants = policy_scope(Restaurant)
    end
end