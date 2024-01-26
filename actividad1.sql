Create database TechSolutions;
use TechSolutions;

Create table cargos(
	id_cargo int primary key,
    nombre_cargo  varchar(30)
);

Create table departamentos(
	id_departamento  int primary key,
    nombre_departamento   varchar(30)
);

Create table empleados(
	id_empleado int primary key,
    nombre_empleado varchar(50),
	apellido_empleado varchar(50),
	id_cargo int,
	salario_empleado double,
	fecha_de_inicio_en_empresa  date,
	id_departamento int, constraint fk_empleado_departamentos
    foreign key (id_departamento) references departamentos(id_departamento),
    constraint fk_empleado_cargo
    foreign key (id_cargo) references cargos(id_cargo)
);

Create table proyectos(
	id_proyecto int primary key,
	nombre_proyecto varchar(30),
	fecha_de_inicio date
);

Create table empleados_proyectos(
	id_empleados_proyectos int primary key, 
	id_empleado int,
	id_proyecto int, constraint fk_empleado_proyecto 
    foreign key (id_empleado) references empleados(id_empleado),
    constraint fk_empleado_proyecto2
    foreign key (id_proyecto) references proyectos(id_proyecto)
);



