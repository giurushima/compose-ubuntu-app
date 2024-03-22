<h1><em>Proyecto practico desarrollado para Bootcamp DevOps Web Experto </em></h1>

Gabriel Ignacio Urushima - @giurushima

Proyecto sobre lo desarrollado en el Bootcamp, usando temas de infraestructura. En el cual se aplican los conocimientos sobre lo visto en los cursos de la plataforma Platzi y YouTube.

Se usan las herramientas mencionadas para colocar en funcionamiento una máquina virtual de Ubuntu Server 22.04 LTS en un servicio de nube/servidor mencionado como DigitalOcean. La máquina virtual utiliza y ejecuta un script Bash para instalar configuraciones generales y herramientas solicitadas en las condiciones del proyecto practico. Se solicita también la creación de usuarios con sus respectivos permisos y grupos. Además, se solicita utilizar un servidor web (Nginx) para subir un proyecto/repositorio propio, agregando el servicio de Docker Compose con sus respectivas características solicitadas sobre puertos, directorios y certificados.

# Tecnologías y herramientas utilizadas:
- GIT
- Linux
- Scripting Bash
- Protocolo HTTP
- Docker
- Docker Compose
- Nginx
- DevOps
- Amazon AWS
- DigitalOcean
- No-IP
- LetsEncrypt

# Paso a paso para ejecutar:
1. Crear usuario en [DigitalOcean](https://www.digitalocean.com/).
2. Construir un Droplet en DigitalOcean con configuraciones basicas y segun necesidades del usuario, utilizando Ubuntu Server 22.04 LTS como configuracion de imagen, configurar con prioridad la clave SSH para conectar a posterior con la maquina virtual.
3. Conectar a la maquina virtual. Utilizar la consola web de la maquina virtual entregada por DigitalOcean o conectarse por consola de Ubuntu Desktop o distintas distribuciones, utilizando "ssh root@«IP-OTORGADA-POR-DIGITALOCEAN».
4. Dentro de la terminal, clonar el repositorio [tp-cloud-bootcamp-devops-we](https://github.com/giurushima/tpcloud-bootcamp-devops-we). en el se encuentran el repositorio para la aplicacion lanzada y los scripts para ejecucion de configuracion.
5. Ejecutar el script bash "setupvm.sh" (bash setupvm.sh).
6. El script comenzara a realizar las configuraciones necesarias y solicitadas. En el caso para la creacion de usuarios, el sistema solicita creacion para contraseñas, colocarles segun la que el usuario desee.
7. Clonar con el usuario nginx creado anteriormente el repositorio solicitado del video [TU SITIO CON SSL GRATIS en DOCKER - Nginx Proxy (PeladoNerd)](https://www.youtube.com/watch?v=S2YFqf4L7l8&t=160s).
8. Instalar nginx. EN CONSTRUCCION
9. Crear un usuario con permisos de docker.
10. Crear cuenta en No-IP. Solicitar un host gratuito y colocar un nombre de host. Configurar IP/Objetivo con nuestro IPv4 del servidor/nube de DigitalOcean. Actualizar host con nuevas configuraciones realizadas.
11. Entrar al directorio "calculadora-epe-app" dentro del repositorio, en el mismo se encuentra la aplicacion lanzada con el respectivo docker-compose.yaml preconfigurado.
12. Realizar configuraciones segun el video [TU SITIO CON SSL GRATIS en DOCKER - Nginx Proxy (PeladoNerd)](https://www.youtube.com/watch?v=S2YFqf4L7l8&t=160s).
13. Utilizar Nginx configurado en docker-compose.yaml para puerto 80 y con redireccion para 443 con certificados LetsEncrypt.
14. Colocar direccion IPv4 que se utiliza en No-IP y DigitalOcean en el archivo hosts en Linux con "vim /etc/hosts" (Para Windows y Mac puede variar la ruta/direccion).
15. Utilizar Docker Compose. Entrar y verificar estar posicionado sobre /calculadora-epe-app. Sobre esta carpeta, utilizamos "docker-compose up -d".
16. Abrir nuestro navegador y visitar el nombre del host que configuramos en No-IP.

Podemos visualizar la pagina como ejemplo que se lanzo con Docker Compose haciendo click [aqui](https://epecalctest.ddns.net/).

> [!NOTE]
> Se puede observar el historial de cambios y seguimientos de avances del proyecto en general en otros repositorios:
> - [Scripts Bash](https://github.com/giurushima/scripts-bash-vm)
> - [Calculadora EPE](https://github.com/giurushima/calculadora-epeV3)

> [!IMPORTANT]
> Las pruebas estan realizadas en Ubuntu Desktop. Se recomienda utilizar Linux.
