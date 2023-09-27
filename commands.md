# DataBase

## Commands for PSQL
| Command | Description |
--- | ---|
| \d | show the relations in the database |
| \du | show the list of roles and its attributes |
| \l | list the databases |
| \i | executes a script |
| \c | connect between the databases |

## Connect into postgres
| Code |
--- |
| psql -U postgres -h localhost|

| Command | Description |
--- | ---|
|create| creates a database / table | <br>
|alter| alters a database / table | <br>
|drop| drop a database / table | <br>

## Consult
| command |
--- |
|select lower/upper (nome) from cliente; |
|select left/right (nome,4) from cliente; |
|select extract(day from dtloc) from locacao; |
|select t.valor, t.valor*1.2, 'oi' from tarifa t; |
|select case when valor < 10 then 'seila' when valor >= 10 then 'casa' end case as valor|

## Example of how to create an table in SQL
create table cliente( <br>
 codcli integer not null, <br>
 cpf varchar(11) not null, <br>
 nome varchar(30) not null, <br>
 email varchar(30) not null, <br>
 ender varchar(40) not null, <br>
 ntel integer not null, <br>
 constraint pk_cliente primary key(codcli), <br>
 constraint uk_cpf_cliente unique(cpf), <br>
 constraint uk_email_cliente unique(email) <br>
); <br>


