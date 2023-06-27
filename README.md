rails new <name proyecto> --database=postgresql

Generamos un modelo llamado Post que tendrá los campos title y content.
rails g rails g model Post title content

sudo -u postgres psql
create database railsdb;
create user userdb with password 'ror2023';
grant all privileges on database railsdb to userdb;
alter user userdb createdb;
\q para salir

rails g migration addAgeToUser age:integer

rails db:create
rails db:migrate
rails db:migrate:status

sudo -u postgres psql
\c railsdb
\dt para listar las tablas
select * from users;

rails console

User.all
User.create(name:'Gabriel', age: 32)
