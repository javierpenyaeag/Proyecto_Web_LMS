drop table matriculas;
drop table asignaturas;
drop table alumnos;
create table alumnos
(
	dni  	numeric(8),
	nombre 	varchar(20) not null,
	apell 	varchar(20) not null,
	prov	varchar(20),
	constraint cp_alumnos primary key (dni),
	constraint check_dni check (dni > 9999999)
);

create table asignaturas
(
	cod	numeric(2),
	descr	varchar(50) not null,
	cred	numeric (2) not null,
	constraint cp_asig primary key (cod)
);

create table matriculas
(
	dni	numeric(8),
	cod	numeric(2),
	anio	numeric(4),
	nota	numeric(2,1),
	constraint ce_ma_al foreign key (dni) references alumnos(dni),
	constraint ce_ma_asig foreign key (cod) references asignaturas(cod),
	constraint cp_matriculas primary key (dni, cod, anio)
);


insert into alumnos values (45213685, 'Juan', 'Molina', 'Granada');
insert into alumnos values (32632514, 'Pedro', 'Agnar', 'Barcelona');
insert into alumnos values (96587452, 'Maria', 'López', 'Granada');
insert into alumnos values (58745214, 'Héctor', 'Ramírez', 'Jaén');
insert into alumnos values (12541236, 'Patricia', 'López', 'Barcelona');
insert into alumnos values (85412001, 'Ana', 'Puertas', 'Granada');
insert into alumnos values (48965413, 'Juan', 'Pérez', 'Granada');
insert into alumnos values (48547123, 'Tomás', 'Molina', 'Granada');


insert into asignaturas values (1, 'Bases de Datos', 3);
insert into asignaturas values (2, 'Programación', 2);
insert into asignaturas values (3, 'Ingeniería del Software', 10);

insert into matriculas values (12541236, 1, 2010, 5.5);
insert into matriculas values (12541236, 2, 2010, 0.4);
insert into matriculas values (12541236, 2, 2011, 5.6);
insert into matriculas values (12541236, 3, 2011, 4.7);
insert into matriculas values (12541236, 3, 2012, null);
insert into matriculas values (32632514, 1, 2011, 9);
insert into matriculas values (32632514, 2, 2011, 8);
insert into matriculas values (32632514, 3, 2011, 2);
insert into matriculas values (32632514, 3, 2012, null);
insert into matriculas values (96587452, 1, 2012, null);
insert into matriculas values (96587452, 2, 2012, null);
insert into matriculas values (96587452, 3, 2012, null);
insert into matriculas values (85412001, 1, 2010, 3);
insert into matriculas values (85412001, 2, 2010, 4);
insert into matriculas values (85412001, 1, 2011, 8);
insert into matriculas values (85412001, 2, 2011, 5);
insert into matriculas values (85412001, 3, 2011, 3);
insert into matriculas values (85412001, 3, 2012, null);
insert into matriculas values (48547123, 1, 2010, 7);
insert into matriculas values (48547123, 2, 2010, 2);
insert into matriculas values (48547123, 2, 2011, 5);
insert into matriculas values (48547123, 3, 2011, 6);








