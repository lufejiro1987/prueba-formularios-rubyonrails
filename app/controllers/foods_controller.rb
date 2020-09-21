class FoodsController < ApplicationController
    def player
    end
    def result
        @nombre = params[:nombre]
        @empanada = [
            'empanada de pino, un clásico',
            'empanada con pasas, waaacala',
            'empanada frita, alto en colesterol',
            'empanada vegana, 100% animal free',
            'empanada moderna, sin gluten'
    ].sample
    end
end
