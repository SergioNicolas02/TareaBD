CREATE DATABASE Proyecto_2semestre;
USE Proyecto_2semestre;


create table Usuario (
   	cedula bigint primary key,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
	Telefono VARCHAR(10) NOT NULL,
    Correo VARCHAR(50) NOT NULL,
	edad int not null
);
CREATE TABLE Boton (
    id_emergencia INT AUTO_INCREMENT PRIMARY KEY,
    coordenadas VARCHAR(100),
    fecha_hora DATETIME NOT NULL,
    Cuadrante VARCHAR(45) NOT NULL,
    cedula BIGINT,
    CONSTRAINT FK_Boton_Usuario FOREIGN KEY (cedula) REFERENCES Usuario(cedula)
);

  

CREATE TABLE Contactos (
    id_contactos INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(45) NOT NULL,
    Apellido VARCHAR(45) NOT NULL,
    Telefono BIGINT NOT NULL,
    desc_contacto VARCHAR(45) NOT NULL,
    cedula BIGINT,
    CONSTRAINT FK_Contactos_Usuario FOREIGN KEY (cedula) REFERENCES Usuario(cedula)
);



CREATE TABLE Manilla (
    id_emergencia INT AUTO_INCREMENT PRIMARY KEY,
    coordenadas VARCHAR(100),
    fecha_hora DATETIME NOT NULL,
    Cuadrante VARCHAR(45) NOT NULL,
    cedula BIGINT,
    CONSTRAINT FK_Manilla_Usuario FOREIGN KEY (cedula) REFERENCES Usuario(cedula)
);


CREATE TABLE Cuadrante (
    Id_cuadrante INT AUTO_INCREMENT PRIMARY KEY,
    nombre_cuadrante VARCHAR(50) NOT NULL,
    localidad_cuadrante VARCHAR(50) NOT NULL,
    Ubicacion VARCHAR(500),
    Tel_cuadrante VARCHAR(45) NOT NULL,
    Direccion VARCHAR(50) NOT NULL
);


CREATE TABLE Tipo_emergencia (
    IdEmergencia INT AUTO_INCREMENT PRIMARY KEY,
    Tipo_emergencia INT,
    id_emergencia_boton INT,
    id_emergencia_manilla INT,
    CONSTRAINT FK_Emergencia_Boton FOREIGN KEY (id_emergencia_boton) REFERENCES Boton(id_emergencia),
    CONSTRAINT FK_Emergencia_Manilla FOREIGN KEY (id_emergencia_manilla) REFERENCES Manilla(id_emergencia)
);




CREATE TABLE Ubicacion (
    id_ubicacion INT AUTO_INCREMENT PRIMARY KEY,
    cedula BIGINT,
    Id_cuadrante INT,
    CONSTRAINT FK_Ubicacion_Usuario FOREIGN KEY (cedula) REFERENCES Usuario(cedula),
    CONSTRAINT FK_Ubicacion_Cuadrante FOREIGN KEY (Id_cuadrante) REFERENCES Cuadrante(Id_cuadrante)
);



insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('9152450227', 'Leandra', 'Newick', '4176179308', 'lnewick0@linkedin.com', '22');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('9057316578', 'Jorie', 'Heinel', '5294329395', 'jheinel1@wikimedia.org', '18');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('2954791495', 'Susana', 'Jouannot', '8017600249', 'sjouannot2@studiopress.com', '17');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('6056147300', 'Mischa', 'MacGinley', '4997137846', 'mmacginley3@chron.com', '21');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('5065849577', 'Timotheus', 'Berens', '7647957510', 'tberens4@altervista.org', '22');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('1980684660', 'Alyosha', 'Imbrey', '7567292848', 'aimbrey5@usa.gov', '19');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('0815892979', 'Cristy', 'Symms', '9191522910', 'csymms6@geocities.jp', '27');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('1116929622', 'Jeffy', 'Fassbindler', '3018124217', 'jfassbindler7@squarespace.com', '30');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('6997041599', 'Truda', 'Dowley', '5926019605', 'tdowley8@house.gov', '45');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('0522182137', 'Filmer', 'Thomas', '9081522613', 'fthomas9@plala.or.jp', '32');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('8564689902', 'Kelvin', 'Tummons', '5541633817', 'ktummonsa@dot.gov', '29');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('2604582695', 'Paquito', 'Pearcey', '8652901727', 'ppearceyb@europa.eu', '15');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('4384220589', 'Darline', 'Meeland', '9725150475', 'dmeelandc@techcrunch.com', '54');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('4411297485', 'Melisa', 'Horsewood', '5818744637', 'mhorsewoodd@foxnews.com', '32');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('3626263531', 'Marillin', 'Humbee', '9931674393', 'mhumbeee@hubpages.com', '35');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('2117841216', 'Moe', 'Goves', '9948570060', 'mgovesf@ow.ly', '42');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('6166858326', 'Margot', 'Gerritzen', '3515183729', 'mgerritzeng@myspace.com', '10');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('8972805783', 'Sheree', 'Mac', '7652227019', 'smach@cocolog-nifty.com', '26');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('0994397651', 'Shandie', 'Bessent', '7234453912', 'sbessenti@washingtonpost.com', '39');
insert into Usuario (cedula, Nombre, Apellido, Telefono, Correo, edad) values ('6084833375', 'Morena', 'Clother', '1521137795', 'mclotherj@rakuten.co.jp', '60');


insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (30.3896651, GETDATE(), 'Aberg');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (108.413764, GETDATE(), 'Monica');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (17.3786013,GETDATE(), 'Ohio');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (17.2596201,GETDATE(), 'Portage');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (112.122426, GETDATE(), 'Tony');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (125.9063009, GETDATE(), 'Brickson Park');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (-62.7684331, GETDATE(), 'Buell');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (116.681972, GETDATE(), 'Cambridge');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (5.4757709, GETDATE(), 'Stoughton');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (127.833984, GETDATE(), 'Sugar');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (123.9899, GETDATE(), 'Bartillon');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (112.896606, GETDATE(), 'Katie');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (2.8797149, GETDATE(), 'Fisk');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (44.233333, GETDATE(), 'Ridgeway');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (40.2586934, GETDATE(), 'Tomscot');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (15.4039384, GETDATE(), 'Corscot');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (18.814406, GETDATE(), 'Commercial');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (38.564841,GETDATE(), 'Iowa');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (124.9404982, GETDATE(), 'Forest Dale');
insert into Boton (cordenadas, Fecha_hora, Cuadrante) values (20.2318416, GETDATE(), 'Cottonwood');






insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (-8.857121, GETDATE(), 'Thackeray');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (90.8163059, GETDATE(), 'Gerald');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (134.1459167, GETDATE(), 'Lukken');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (12.4151335,GETDATE(), 'Dunning');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (16.6652363,GETDATE(), 'Fisk');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (111.8956112, GETDATE(), 'Union');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (-47.7352517, GETDATE(), 'Farmco');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (120.5239731, GETDATE(), 'Bluestem');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (110.363649, GETDATE(), 'Killdeer');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (119.692696,GETDATE(), 'Blaine');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (120.284938, GETDATE(), 'Marquette');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (47.0592319, GETDATE(), 'Maywood');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (13.9528289, GETDATE(), 'Jana');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (100.22775, GETDATE(), 'Magdeline');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (-55.79833,GETDATE(), 'Mockingbird');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (118.0801092, GETDATE(), 'Anhalt');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (106.755605, GETDATE(), 'Erie');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (-53.758612, GETDATE(), 'Killdeer');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (109.207335, GETDATE(), 'David');
insert into Manilla (cordenadas, Fecha_hora, Cuadrante) values (25.7383108, GETDATE(), 'Nova');


insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Rieder', 'Paget', 124.6496, '7401020404', '538 Schiller Plaza');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Del Sol', 'Tomscot', 12.8516728, '4062225768', '3248 Messerschmidt Alley');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Colorado', 'Corben', 91.9206341, '5909322573', '7716 School Plaza');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Quincy', 'Birchwood', 138.1146139, '9642473200', '3630 Farwell Point');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Hintze', 'Gulseth', 35.6599267, '4753712670', '15 Meadow Vale Plaza');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Eastlawn', 'Luster', 17.9186809, '6111528694', '5 Transport Drive');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Mitchell', 'Fieldstone', 140.6725677, '7262962334', '41576 Burning Wood Junction');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Colorado', 'Lillian', 19.1802788, '9928558708', '530 Bowman Center');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('American', 'Tennessee', 73.2571865, '9122443045', '53 Marquette Circle');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Hallows', 'Lakewood Gardens', 129.9920883, '3066304408', '2874 Blue Bill Park Drive');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Morrow', 'Eggendart', -79.3817651, '4683148261', '0197 Katie Crossing');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Autumn Leaf', 'Trailsway', 110.745729, '5253356041', '45927 Becker Court');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Jackson', 'Straubel', 119.3062749, '9165942125', '1 Hazelcrest Way');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Northwestern', 'Sherman', 65.2309, '9938233010', '537 Heath Point');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Manitowish', 'Dunning', -63.2238376, '8379168778', '49243 Rowland Way');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Derek', 'Lawn', -71.9229466, '7676243655', '25185 Redwing Circle');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Mallard', 'Moland', 19.8227166, '5463926137', '51493 Rigney Drive');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Logan', 'Artisan', 47.56635, '2001444078', '77039 Burrows Park');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Vermont', 'Farragut', 23.5464675, '1493746992', '091 Homewood Crossing');
insert into Cuadrante (nombre_cuadrante, localidad_cuadrante, Ubicacion, tel_cuadrante, Direccion) values ('Nova', 'Hermina', 5.7218985, '5853753864', '1 Autumn Leaf Drive');
