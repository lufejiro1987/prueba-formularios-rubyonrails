class FoodsController < ApplicationController
    def player
        @resultado = Empanada.where('nombre LIKE?',"%#{params[:empanada]}%") if params[:empanada]
    end
    def result
        @nombre = params[:nombre]
        @empanada = Empanada.all.sample
    end
    def empanada
        @empanada = Empanada.new(nombre: params[:empanada])
        if @empanada.save
            redirect_to root_path, notice: 'se guardó tu empanada'
        else
            redirect_to root_path, notice: 'no se pudo guardar'
        end
    end

end
