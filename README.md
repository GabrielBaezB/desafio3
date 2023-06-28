sudo -u postgres psql

create database desafio3db;

create user userdb with password 'ror2023';

grant all privileges on database railsdb to userdb;

alter user userdb createdb;

\q para salir

rails new <name proyecto> --database=postgresql

Generamos los modelo llamado Movie, Serie y DocumentaryFilm que tendrá los campos name, synopsis y director.
```
 rails generate model Movie name:string synopsis:string director:string  
 rails generate model Serie name:string synopsis:string director:string  
 rails generate model DocumentaryFilm name:string synopsis:string director:string  
```
Generamos los controladores Movies, Series y DocumentaryFilms
rails generate controller Movies index create new
rails generate controller Series index create new
rails generate controller DocumentaryFilms index create new

Agregamos en seed.db
Movie.create(name: "Movie 1", synopsis: "Synopsis 1", director: "Director 1")
Movie.create(name: "Movie 2", synopsis: "Synopsis 2", director: "Director 2")
Serie.create(name: "Serie 1", synopsis: "Synopsis 1", director: "Director 1")
Serie.create(name: "Serie 2", synopsis: "Synopsis 2", director: "Director 2")
DocumentaryFilm.create(name: "Documentary 1", synopsis: "Synopsis 1", director: "Director 1")
DocumentaryFilm.create(name: "Documentary 2", synopsis: "Synopsis 2", director: "Director 2")


rails db:create
rails db:migrate
rails db:seed
rails db:migrate:status

sudo -u postgres psql
\c railsdb
\dt para listar las tablas

