class HomeController < ApplicationController
    def index
        @vehicles = Vehicle.limit(3)
    end
end