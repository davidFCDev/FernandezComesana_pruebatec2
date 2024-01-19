# Prueba técnica Java avanzado || Hack a Boss & Softtek

Segunda prueba técnica del Bootcamp de Java con diseño WEB e implementación CRUD con jpa.

## Contenido

- [Características](#características)
- [Requisitos](#requisitos)
- [Estructura](#estructura)
- [Interface](#interface)
- [Supuestos](#supuestos)

## Características

- Acceso a base de datos SQL mediante JPA.
- Operaciones CRUD para la gestión ciudadanos y turnos.
- Validación de datos, manejo de errores y excepciones.
- Interfaz intuitiva con implementación de jsp y Bootstrap.

## Requisitos

- Java Development Kit (JDK) 17
- Apache Maven
- Base de datos SQL (archivo incluído):
    * DB: "prueba-tec2"
    * Usuario: "root"
    * Contraseña: ""
- Apache Tomcat
    * Usuario: "admin"
    * Contraseña: "123"

## Estructura

- **web pages** - Todo el contenido del Frontend con jsp.
- **src/com.softtek.pruebatec2**
- **src/com.softtek.pruebatec2.logic** - Lógica de las clases turno y ciudadano.
- **src/com.softtek.pruebatec2.exceptions** - Excepciones.
- **src/com.softtek.pruebatec2.persistencia** - Controlador JPA de persistencia y entidades.
- **src/com.softtek.pruebatec2.persistencia.excepciones** - Excepciones persistencia.
- **src/com.softtek.pruebatec2.servlets** - Servlets para el CRUD con jsp.

## Interface

 - Página principal

[![main.webp](https://i.postimg.cc/QCmG23fN/main.webp)](https://postimg.cc/9wDn9v3s)

 - Creación ciudadano

[![new-citizen.webp](https://i.postimg.cc/YCsk2tMh/new-citizen.webp)](https://postimg.cc/zyK40ZLr)

 - Lista de ciudadanos

[![citizen-list.webp](https://i.postimg.cc/Y91wxggW/citizen-list.webp)](https://postimg.cc/tZCfqsBq)

 - Creación de turno

[![new-turn.webp](https://i.postimg.cc/3RMTp9yh/new-turn.webp)](https://postimg.cc/qtGSHsXD)

- Lista de turnos

[![turn-list.webp](https://i.postimg.cc/wMgY4vcb/turn-list.webp)](https://postimg.cc/qhbFzpF8)

## Supuestos
- No se especifica la visión general del proyecto. Lo he enfocado desde el punto de vista de un gestor de la aplicación, de tal forma que el gestor puede crear tanto ciudadanos como turnos.
- Se supone que el DNI debe ser único e irrepetible, por lo tanto el ciudadano utiliza el DNI como ID y Key.
- Los turnos se crean en false ("en espera") por defecto, se pueden modificar después.
