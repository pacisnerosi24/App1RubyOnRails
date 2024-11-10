class CalculadoraController < ApplicationController
    def index
      render 'articles/index'
    end
  
    def calcular
      numero1 = params[:numero1].to_f
      numero2 = params[:numero2].to_f
      operacion = params[:operacion]
  
      @resultado = case operacion
                   when "suma"
                     numero1 + numero2
                   when "resta"
                     numero1 - numero2
                   end
  
      render 'articles/index', status: :see_other
    end
  end
  