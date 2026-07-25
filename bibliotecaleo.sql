-- 1. TABLAS CATÁLOGO DE SISTEMA
CREATE TABLE rol_sistema (
    id_rol_sistema  SERIAL PRIMARY KEY,
    nombre          VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE estado_cuenta (
    id_estado_cuenta SERIAL PRIMARY KEY,
    nombre           VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE tipo_token (
    id_tipo_token SERIAL PRIMARY KEY,
    nombre        VARCHAR(50) NOT NULL UNIQUE
);

-- 2. CATÁLOGO DE USUARIOS
CREATE TABLE tipo_usuario (
    id_tipo_usuario SERIAL PRIMARY KEY,
    nombre          VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE necesidad_accesibilidad (
    id_necesidad SERIAL PRIMARY KEY,
    nombre       VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE estado_prestamo (
    id_estado_prestamo SERIAL PRIMARY KEY,
    nombre              VARCHAR(50) NOT NULL UNIQUE
);

-- 3. CATÁLOGO DE PERSONAL / SALAS / ACTIVIDADES
CREATE TABLE rol_personal (
    id_rol_personal SERIAL PRIMARY KEY,
    nombre          VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE tipo_sala (
    id_tipo_sala SERIAL PRIMARY KEY,
    nombre       VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE tipo_actividad (
    id_tipo_actividad SERIAL PRIMARY KEY,
    nombre             VARCHAR(50) NOT NULL UNIQUE
);

-- 4. CATÁLOGO DE LIBROS
CREATE TABLE categoria (
    id_categoria SERIAL PRIMARY KEY,
    nombre       VARCHAR(80) NOT NULL UNIQUE
);

CREATE TABLE idioma (
    id_idioma SERIAL PRIMARY KEY,
    nombre    VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE formato_accesible (
    id_formato_accesible SERIAL PRIMARY KEY,
    nombre                VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE estado_ejemplar (
    id_estado_ejemplar SERIAL PRIMARY KEY,
    nombre               VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE autor (
    id_autor SERIAL PRIMARY KEY,
    nombre   VARCHAR(150) NOT NULL
);

-- 5. CUENTA Y TOKEN (LOGIN)
CREATE TABLE cuenta (
    id_cuenta         SERIAL PRIMARY KEY,
    email             VARCHAR(150) NOT NULL UNIQUE,
    password_hash     VARCHAR(255) NOT NULL,
    rol_sistema_id    INT NOT NULL REFERENCES rol_sistema(id_rol_sistema),
    estado_cuenta_id  INT NOT NULL REFERENCES estado_cuenta(id_estado_cuenta),
    fecha_creacion    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ultimo_login      TIMESTAMP
);

CREATE TABLE token (
    id_token          SERIAL PRIMARY KEY,
    cuenta_id         INT NOT NULL REFERENCES cuenta(id_cuenta) ON DELETE CASCADE,
    token_hash        VARCHAR(255) NOT NULL UNIQUE,
    tipo_token_id     INT NOT NULL REFERENCES tipo_token(id_tipo_token),
    fecha_emision     TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    fecha_expiracion  TIMESTAMP NOT NULL,
    revocado          BOOLEAN NOT NULL DEFAULT FALSE,
    ip_origen         VARCHAR(45)
);

-- 6. USUARIO Y PERSONAL
CREATE TABLE usuario (
    id_usuario        SERIAL PRIMARY KEY,
    cuenta_id         INT NOT NULL UNIQUE REFERENCES cuenta(id_cuenta) ON DELETE CASCADE,
    nombre            VARCHAR(150) NOT NULL,
    tipo_usuario_id   INT NOT NULL REFERENCES tipo_usuario(id_tipo_usuario),
    necesidad_id      INT NOT NULL REFERENCES necesidad_accesibilidad(id_necesidad),
    telefono          VARCHAR(20),
    direccion         VARCHAR(200),
    fecha_registro    DATE NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE personal (
    id_personal                  SERIAL PRIMARY KEY,
    cuenta_id                    INT NOT NULL UNIQUE REFERENCES cuenta(id_cuenta) ON DELETE CASCADE,
    nombre                       VARCHAR(150) NOT NULL,
    rol_personal_id              INT NOT NULL REFERENCES rol_personal(id_rol_personal),
    capacitacion_accesibilidad   BOOLEAN NOT NULL DEFAULT FALSE
);

-- 7. SALA Y LIBRO
CREATE TABLE sala (
    id_sala        SERIAL PRIMARY KEY,
    nombre         VARCHAR(100) NOT NULL,
    tipo_sala_id   INT NOT NULL REFERENCES tipo_sala(id_tipo_sala),
    accesible      BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE libro (
    id_libro                SERIAL PRIMARY KEY,
    titulo                  VARCHAR(250) NOT NULL,
    isbn                    VARCHAR(20) UNIQUE,
    categoria_id            INT NOT NULL REFERENCES categoria(id_categoria),
    idioma_id               INT NOT NULL REFERENCES idioma(id_idioma),
    formato_accesible_id    INT NOT NULL REFERENCES formato_accesible(id_formato_accesible)
);

-- 8. EJEMPLAR Y LIBRO_AUTOR
CREATE TABLE ejemplar (
    id_ejemplar          SERIAL PRIMARY KEY,
    libro_id             INT NOT NULL REFERENCES libro(id_libro) ON DELETE CASCADE,
    estado_ejemplar_id   INT NOT NULL REFERENCES estado_ejemplar(id_estado_ejemplar),
    sala_id              INT NOT NULL REFERENCES sala(id_sala)
);

CREATE TABLE libro_autor (
    libro_id  INT NOT NULL REFERENCES libro(id_libro) ON DELETE CASCADE,
    autor_id  INT NOT NULL REFERENCES autor(id_autor) ON DELETE CASCADE,
    PRIMARY KEY (libro_id, autor_id)
);

-- 9. PRESTAMO
CREATE TABLE prestamo (
    id_prestamo                 SERIAL PRIMARY KEY,
    usuario_id                  INT NOT NULL REFERENCES usuario(id_usuario),
    ejemplar_id                 INT NOT NULL REFERENCES ejemplar(id_ejemplar),
    fecha_prestamo               DATE NOT NULL DEFAULT CURRENT_DATE,
    fecha_devolucion_prevista    DATE NOT NULL,
    fecha_devolucion_real        DATE,
    estado_prestamo_id           INT NOT NULL REFERENCES estado_prestamo(id_estado_prestamo)
);

-- 10. ACTIVIDAD Y USUARIO_ACTIVIDAD
CREATE TABLE actividad (
    id_actividad        SERIAL PRIMARY KEY,
    nombre               VARCHAR(150) NOT NULL,
    tipo_actividad_id    INT NOT NULL REFERENCES tipo_actividad(id_tipo_actividad),
    fecha                TIMESTAMP NOT NULL,
    sala_id              INT NOT NULL REFERENCES sala(id_sala),
    responsable_id       INT NOT NULL REFERENCES personal(id_personal)
);

CREATE TABLE usuario_actividad (
    usuario_id          INT NOT NULL REFERENCES usuario(id_usuario) ON DELETE CASCADE,
    actividad_id        INT NOT NULL REFERENCES actividad(id_actividad) ON DELETE CASCADE,
    fecha_inscripcion   DATE NOT NULL DEFAULT CURRENT_DATE,
    PRIMARY KEY (usuario_id, actividad_id)
);

-- 11. DATOS INICIALES PARA LOS CATÁLOGOS
INSERT INTO rol_sistema (nombre) VALUES ('Usuario'), ('Personal'), ('Administrador');
INSERT INTO estado_cuenta (nombre) VALUES ('Activa'), ('Bloqueada'), ('Pendiente de verificación');
INSERT INTO tipo_token (nombre) VALUES ('Access'), ('Refresh');
INSERT INTO tipo_usuario (nombre) VALUES ('Estudiante'), ('Adulto mayor'), ('General'), ('Docente');
INSERT INTO necesidad_accesibilidad (nombre) VALUES ('Ninguna'), ('Visual'), ('Auditiva'), ('Motriz');
INSERT INTO estado_prestamo (nombre) VALUES ('Activo'), ('Devuelto'), ('Atrasado');
INSERT INTO rol_personal (nombre) VALUES ('Bibliotecario'), ('Coordinador'), ('Voluntario');
INSERT INTO tipo_sala (nombre) VALUES ('Lectura'), ('Infantil'), ('Auditorio'), ('Estudio grupal');
INSERT INTO tipo_actividad (nombre) VALUES ('Taller'), ('Cuentacuentos'), ('Club de lectura'), ('Capacitación');
INSERT INTO formato_accesible (nombre) VALUES ('Estándar'), ('Braille'), ('Audiolibro'), ('Lectura fácil'), ('Macrotipo');
INSERT INTO estado_ejemplar (nombre) VALUES ('Disponible'), ('Prestado'), ('En reparación'), ('Extraviado');