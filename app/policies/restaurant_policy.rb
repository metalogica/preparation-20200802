class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all == Restaurant.all
      scope.all
      # scope.where(public: true)
      # returns all records open to the public
    end
  end

  def show?
     # return value: Boolean
     true
  end
end
