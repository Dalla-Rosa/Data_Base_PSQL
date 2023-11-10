set datestyle to 'ISO,DMY';

create table if not exists cursos (
   cid integer not null,
   cnome varchar(3) not null,
   cdescr varchar(20) not null,
); constraint pk_cursos primary key (cid)
   
create table if not exists ccrs (
   cid integer not null,
   crid integer not null,
   crname integer not null,
   ccrsmaterias integer not null,
   crmaterias1 integer,
   crmaterias2 integer,
   crmaterias3 integer,
   crmaterias4 integer,
   crmaterias5 integer,
   constraint pk_ccrs primary key (crid)
   constraint pk_ccrs_cursos foreign key (crsmaterias1) references ccrs(crsmaterias), 
   constraint pk_ccrs_cursos foreign key (crsmaterias2) references ccrs(crsmaterias), 
   constraint pk_ccrs_cursos foreign key (crsmaterias3) references ccrs(crsmaterias), 
   constraint pk_ccrs_cursos foreign key (crsmaterias4) references ccrs(crsmaterias), 
   constraint pk_ccrs_cursos foreign key (crsmaterias5) references ccrs(crsmaterias)
);
	
create table if not exists horarios (
   crid integer not null,
   wsid integer not null,
   wsseg integer not null,
   wster integer not null,
   wsqua integer not null,
   wsqui integer not null,
   wssex integer not null
   constraint pk_horarios primary key (wsid),
   constraint pk_horarios_ccrs foreign key (crid) references ccrs(crid)
);
