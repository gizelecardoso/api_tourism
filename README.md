# README

### O que precisa para rodar essa aplicação:

1. Ruby - versão 3.3.0
2. MySQL - via Docker
```
  docker run --name mysql-5 -e MYSQL_ROOT_PASSWORD=??? -e MYSQL_USER=??? -p3306:3306 -d mysql
```
3. Bundler - versão 2.5.3
4. Rubygems - versão 3.5.3

### Passo para rodar o projeto

1. Informar as credenciais do Banco de Dados no arquivo:
```
  config/database.yml
```

2. Instalar as gems do Gemfile:
```ruby
bundle install
```

3. Criar o banco:
```
rails db:create
```

4. Rodar as migrações:
```
rails db:migrate
```

5. Apis usadas no projeto
  * [GEM Geocoder](https://github.com/alexreisner/geocoder)

  * [API Amadeus](https://developers.amadeus.com/self-service/category/destination-experiences/api-doc/points-of-interest)

  * [API Open Weather Map](https://openweathermap.org/current#builtin)

  * [GEM Libretranslate](https://github.com/noesya/libretranslate)


6. Criar tokens das apis usadas no projeto

  * API Amadeus - é criada API_KEY e API_SECRET
    no Postman eu fiz uma chamada adicionado essas duas informações no Authorization, e me gerou um TOKEN

  * API Open Weather é mais simples já cria o Token direto

7. Adicionar variáveis de ambiente no arquivo:
```
.env:
  AMADEUS_TOKEN = ''
  WEATHER_TOKEN = ''
  DB_USERNAME = ''
  DB_PASSWORD = ''
  DB_HOST = ''
```

6. Subir a aplicação:
```
bin/dev ou rails s
```

7. Aplicação disponível endereço: localhost:3000
```
localhost:3000/tourism?place=Paris
```

### Pontos de atenção e próximos passos:
1. Aplicação da tradução através da gem LibreTranslate - adicionando parâmetro lang na chamada da api

2. Adicionar Find na aplicação antes de ir procurar nas APIs utilizando Elasticsearch

3. Finalizar teste
  Estava acompanhando toda modificação alterando os testes, porém a última não consegui ter tempo de finalizá-los

4. Utilização de cache para ajudar na performance.

5. Implementar chamada a API do Amadeus para gerar o Token, sempre que ele foi expirado

6. Visualização de erros
  Tratar retornos da API, principalmente quando eles foram erros.

7. Melhoria dos dados criados no banco, principalmente as listas de lugares interessantes e clima.

8. Dockerização da aplicação

9. Disponibilizar em um servidor

___
