# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
```ruby 
2.5.8
Rails 
5.2.6
```

* System dependencies
```
Base de Datos PostgresSQL
```

* Configuration
```
Clonar Repo
bundle install
Configurar archivo database.yml indicar usuario de postgresSQL
```

* Database creation
```
rails db:create
rails db:migrate
rails db:seed
```

* Database initialization

* Deployment instructions
```
rails s

Consulta Indicadores Contractos
    • http://localhost:3000/api/v1/contracts   Method:: GET
 NOTA: Muestra los contratos creados. 
   
Consulta Eventos
    • http://localhost:3000/api/v1/events  Method:: POST y GET

    • Method POST: Registro de Solicitud de Rollos
    :id, :, :, :, :, :, :
       Ejemplo:  {"event":{"name":"CompanyTech","date": "2022-01-29","personal":1,contract_id:1,"start_time":"10", "end_time":"23"  }}
      
```

#  README END
