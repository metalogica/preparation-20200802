class Api::V1::RestaurantsController < Api::V1::BaseController
    def index
        #               Restaurant.all
        @restaurants = policy_scope(Restaurant)
    end

    def show
        @restaurant = Restaurant.find(params[:id])
        authorize @restaurant
        render :show
    end
end