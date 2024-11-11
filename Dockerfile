# Usa Ruby 3.2 para cumplir con los requisitos de Rails 8
FROM ruby:3.2

# Instala dependencias
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Establece el directorio de trabajo
WORKDIR /app

# Copia el Gemfile y Gemfile.lock
COPY Gemfile Gemfile.lock /app/

# Instala las gemas
RUN bundle install

# Copia el resto de la aplicación al contenedor
COPY . /app

# Expone el puerto de la aplicación
EXPOSE 3000

# Comando para iniciar el servidor
CMD ["rails", "server", "-b", "0.0.0.0"]
