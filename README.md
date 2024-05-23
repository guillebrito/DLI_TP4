# Diseño Lógico - 

## Simulación

### Requisitos

- [GHDL](http://ghdl.free.fr/)

### Procedimiento

```bash

# Design analysis of the sources and testbenches
ghdl -a --workdir=./work --std=08 ./src/template.vhd
ghdl -a --workdir=./work --std=08 ./src/tb_template.vhd

# Test units elaboration
ghdl -e --workdir=./work --std=08 tb_template

# Execute the simulation and export the waveforms
ghdl -r --workdir=./work --std=08 tb_template --vcd=./waves/tb_template.vcd --stop-time=100ns

```

## Formas de onda

### Requisitos

- [GTKWave](http://gtkwave.sourceforge.net/)

### Procedimiento

```bash 

# template
gtkwave ./waves/tb_template.vcd

```
## Makefile

Este Makefile está diseñado para compilar, simular y generar formas de onda para un diseño VHDL. Aquí está una explicación de las diferentes partes del Makefile y su procesamiento:

- **Definición de variables:**
    
    - `SOURCES`: Esta variable contiene la lista de archivos fuente VHDL habilitados. Por defecto, todos los archivos `.vhd` y `.vhdl` en el directorio especificado por `$(SOURCES_DIR)` están habilitados.
- **Inclusión del archivo de configuración:**
    
    - `CONFIG`: Especifica el archivo de configuración `Config.makefile` a incluir. Este archivo puede contener variables y configuraciones específicas del proyecto.
- **Verificación de la configuración:**
    
    - Se verifica si la variable `TOP_UNIT` está definida. Si no lo está, se muestra un error y se detiene el proceso de compilación.
- **Tareas de alto nivel:**
    
    - `all`: La tarea predeterminada que importa y re-elabora el diseño.
    - `check`: Verifica la sintaxis de todos los archivos fuente.
    - `import`: Importa los archivos fuente y determina el orden de compilación.
    - `make`: Realiza la compilación y elaboración del diseño.
    - `run`: Simula el diseño elaborado y genera formas de onda.
    - `test`: Ejecuta la simulación del test-bench.
    - `clean`: Elimina los archivos generados por GHDL.
    - `purge`: Elimina todos los archivos generados y directorios de trabajo.
- **Tareas de bajo nivel:**
    
    - `analyse`: Analiza los archivos fuente en el orden en que están listados.
    - `elaborate`: Elabora el diseño después de la fase de análisis.
- **Creación de directorios:**
    
    - `$(WORK_DIR)`: Crea el directorio de trabajo.
    - `$(WAVES_DIR)`: Crea el directorio para las formas de onda.
- **Archivos:**
    
    - `$(WORK_DIR)/$(WORK)-obj$(STD).cf`: Archivo generado como resultado de la importación y elaboración del diseño.

Este Makefile automatiza el proceso de compilación, simulación y generación de formas de onda para un diseño VHDL utilizando GHDL. Proporciona tareas para realizar cada paso del flujo de diseño, desde la verificación de la sintaxis hasta la simulación del diseño elaborado. Además, permite la configuración y personalización del proceso a través del archivo de configuración `Config.makefile`.
