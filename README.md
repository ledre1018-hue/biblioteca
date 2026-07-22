# biblioteca
# Base de datos — Biblioteca Pública de Acceso Universal

## Descripción del proyecto

Caso de estudio para el diseño de una base de datos orientada a una **biblioteca pública de acceso universal**, pensada para que todas las personas puedan usarla sin barreras: personas con discapacidad física, visual o auditiva, adultos mayores, y la comunidad en general.

El modelo contempla la gestión de usuarios, acervo bibliográfico, préstamos, personal, salas y actividades culturales, incorporando campos específicos de accesibilidad en las entidades clave.

## Entidades del modelo

- **USUARIO**: personas registradas, incluyendo su necesidad de accesibilidad.
- **LIBRO**: catálogo bibliográfico, incluyendo formato accesible (braille, audiolibro, lectura fácil, etc.).
- **EJEMPLAR**: copias físicas/digitales de cada libro.
- **AUTOR**: autores de los libros.
- **CATEGORIA**: clasificación temática de los libros.
- **PRESTAMO**: registro de préstamos realizados.
- **PERSONAL**: bibliotecarios y staff, con indicador de capacitación en accesibilidad.
- **SALA**: espacios físicos de la biblioteca.
- **ACTIVIDAD**: talleres, cuentacuentos, clubes de lectura, etc.

## Relaciones principales

- `CATEGORIA` → `LIBRO` (1:N)
- `LIBRO` → `EJEMPLAR` (1:N)
- `LIBRO` ↔ `AUTOR` (N:M)
- `USUARIO` → `PRESTAMO` (1:N)
- `EJEMPLAR` → `PRESTAMO` (1:N)
- `SALA` → `ACTIVIDAD` (1:N)
- `PERSONAL` → `ACTIVIDAD` (1:N)
- `USUARIO` ↔ `ACTIVIDAD` (N:M)

## Archivos del repositorio

- `Casodeestudioleonel.drawio` — Diagrama Entidad-Relación editable.
- `Caso_Estudio_Biblioteca_ER.docx` — Documento con el caso de estudio completo y la explicación de cada entidad.

## Proceso de trabajo

Este proyecto fue desarrollado con ayuda de herramientas de IA (Gemini y Claude) para la ideación del caso de estudio y el diseño del modelo Entidad-Relación.

### Prompts utilizados (Claude)

1. "Ten en cuenta que venderé específicamente en este chat porque este caso de estudio lo estaré actualizando. Dame un caso de estudio porfa, dame ejemplos para ver cuál hago."
2. "Dame un caso de estudio para la creación de una biblioteca porfa."
3. "Necesito que sea un caso de estudio de una biblioteca pública para acceso para todas las personas porfa."
4. "Esto será para una base de datos. Dame la entidad relación porfa de este caso de estudio porfa."
5. "Vale, me lo puedes dar en un Word o PDF para verlo mejor, no se logra apreciar nada."

### Prompts utilizados (Gemini)

*(Completar acá con los prompts que usaste en Gemini)*

## Autor

- **Usuario:** leonel1018-hue
