class InsurancesController < ApplicationController
    def index
        @insurances = Insurance.all

        render json: @insurances.to_json
    end
end
