# config/initializers/host_authorization.rb

# Autorización de los hosts para evitar ataques de reencaminamiento de DNS
Rails.application.config.hosts << "app1rubyonrails.onrender.com"

# Si estás usando un dominio personalizado y quieres permitir subdominios
# Rails.application.config.hosts << /.*\.example\.com/

# Excluir el endpoint de "health check" (si es necesario)
Rails.application.config.host_authorization = {
  exclude: ->(request) { request.path == "/up" }
}
