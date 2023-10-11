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

## DML
| command | description |
--- | --- |
|select| what's been asked (projection π) | select * from <tabela> where <itemtable> is <condition> 
|from| where's is what i want |
|where| condition of what i want (horizontal cut) |

## Some selects for consults

| command | description |
--- | --- |
| select of time | select * from locacao where dtloca between '2020-09-01' and '2020-09-31';  |
| select of many | select placa, codcli, dtdevo from locacao where tarifa = 'blue' or tarifa = 'green';



posso colocar o select num from

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



rollback;

coalesce(-1)

select p.nome, f.titulo from pessoa p join elenco e on p.codp = e.codp join filme f on f.codf = e.codf where e.oscar = 'Y';

select filme.titulo, pessoa.nome from filme join pessoa on filme.codd = pessoa.codp where pessoa.nome = 'Alfred'; 

select f.titulo, f.anol, f.dur, p.nome from filme f join elenco e on f.codf=e.codf join pessoa p on e.codp^Codp order by f.titulo;

4- select f.titulo, p.nome from filme f join pessoa p on f.codd=p.codp;
5- select f.titulo from filme f join pessoa p on f.codd=p.codp where p.nome = 'Alfred';
6- select p.nome from pessoa p join elenco e on p.codp = e.codp where upper(e.oscar) = 'Y';
   select p.nome, count(e.codp) from pessoa p join elenco e on p.codp = e.codp where upper(e.oscar) = 'Y' group by p.nome;
   select p.nome, count(e.codp) from pessoa p left join (select * from elenco where oscar = 'Y') e on p.codp = e.codp group by p.nome;
7- insert into filme (codf, titulo, anol, dur, codd) values (222, 'X file', 1992, 112, 177);
8- select distinct f.titulo from filme f join avaliacao a on f.codf=a.codf where a.nestrelas='5.0';
9- select f.titulo from filme f join elenco e on f.codf  e.codf join pessoa p on e.codp = p.codp where p.nome = 'Stephen';
10- select p.nome, f.titulo from pessoa p left join elenco e on p.codp= e.codp left join filme f on e.codf=f.codf order by nome;
11- select p.nome from pessoa p left join elenco e on p.codp=e.codp where e.codp is null;
    select p.nome from pessoa p where p.codp not in (select e.codp from elenco e);
    select p.nome from pessoa p where p.codp not in (select e.codp from elenco e) and p.codp not in (select f.codd from filme f);
12- 
13- select titulo, dur from filme f where anol between 1961 and 1970;
14- 
15- select count (coment) from avaliacao where email = 'cinefilo@yahoo.com';
16- select paisn, count(codp) from pessoa group by paisn;
17- select p.nome from pessoa p where dtnasc = (select min(dtnasc)from pessoa);
18- select * from filme f where dur > (select avg(dur) from filme);
19- select f.titulo, count(e.codf) from filme f natural left join elenco e group by f.titulo;
20- select f.titulo, coalesce(round(avg(a.nestrelas),2)::text,'None') from filme f natural left join avaliacao a group by f.titulo;
    select f.titulo, coalesce(round(avg(a.nestrelas),2),-1) from filme f natural left join avaliacao a group by f.titulo;
