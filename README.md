# Ansible

## Descripción del proyecto:

Ejecutar un archivo que imprima hola usando Ansible y Docker


- Primer fichero: .yml:
  - Instalar nano
  - Instalar python

- Segundo fichero: .yml:
  - Crear un entorno virtual en python

- Tercer fichero .yml
  - Ejecutar el .py que imprime "Hola"


## Comandos utilizados:

- docker run -v %cd%:/ansible ansible-container ansible-playbook playbook.yml
- docker run -v %cd%:/ansible ansible-container ansible-playbook playbook2.yml
- docker run -v %cd%:/ansible ansible-container ansible-playbook playbook3.yml

