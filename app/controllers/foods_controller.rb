class FoodsController < ApplicationController
    def player
    end
    def result
        @nombre = params[:nombre]
        @empanada = Empanada.all.sample
    end
    def empanada
        @params = params
        @empanada = Empanada.new(nombre: params[:empanada])
        @empanada.save
        redirect_to root_path, notice: 'se guardó tu empanada'
    end

    private
    def food_params
        params.require[:empanada].permit[:]
end
