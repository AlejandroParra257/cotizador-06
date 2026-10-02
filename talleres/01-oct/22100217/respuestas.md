# Taller · quitar la mutación

Nombre: Ramon Alejandro Parra Pascual
Número de control: 22100217
Equipo: 06

Copia este archivo a `talleres/01-oct/<tu número de control>/respuestas.md` en el repositorio de tu equipo,
junto con tu `sin_mutacion.ex`, y llena la tabla. Entrega: hoy antes de las 23:59.

| # | Función | ¿Qué muta la versión de TypeScript? | ¿Quién más se entera del cambio? |
| --- | --- | --- | --- |
| 1 | total_pesos | La variable local `total` | Nadie, es local |
| 2 | marcar_urgentes | Los objetos recibidos (`e.urgente`) | Todo el que tenga esos objetos |
| 3 | aplicar_descuento | El arreglo recibido (`precios[i]`) | Todo el que tenga ese arreglo |
| 4 | contar_por_tipo | El objeto local `conteo` | Nadie, es local |
| 5 | sin_duplicados | El `Set` y el arreglo locales | Nadie, son locales |

¿Cuál de las cinco era la más peligrosa en TypeScript, y por qué? (dos líneas)

El 2 que es `marcar_urgentes`, porque modifica objetos ajenos y copiar el arreglo no la frena.
Además regresa el mismo arreglo, así que parece un resultado nuevo pero es el original modificado.