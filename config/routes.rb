Rails.application.routes.draw do
  root 'calculadora#index'   # Define la ruta principal
  post 'calcular', to: 'calculadora#calcular'  # Define la ruta para el cálculo
end