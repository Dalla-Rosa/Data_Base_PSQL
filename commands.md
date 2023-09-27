# DataBase

## Commands for PSQL

\d **show the relations in the database** <br> 
\du <br>
\dt <br>
\l **show all the database that exist** <br>
\i **executes an script** <br>
\c **connect between the database** <br>
**drop database <name>** <br>
**set datestyle** <br>


| description | command |
| aaa         | cacs    |

## Connect into postgres
**psql -U postgres -h localhost**

create <br>
alter <br>
drop <br>

## Example of how to create an table in SQL
create table cliente(
 codcli integer not null,
 cpf varchar(11) not null,
 nome varchar(30) not null,
 email varchar(30) not null,
 ender varchar(40) not null,
 ntel integer not null,
 constraint pk_cliente primary key(codcli),
 constraint uk_cpf_cliente unique(cpf),
 constraint uk_email_cliente unique(email)
);


