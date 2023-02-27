# Uso
Clona el repositorio y accede a él
```
git clone https://github.com/rxfatalslash/debian_http
cd debian_http/
```

## Editar contenido
Ahora edita las configuraciones a tu gusto en el archivo 000-default/000-default.conf y cambia el contenido de web/ por los archivos de tu propia página

# Iniciar contenedor
Primero debemos construir la imagen y después crearemos y lanzaremos el contenedor
```
docker build . -t debian_http:new
docker run -d --name debian_http -it debian_http:new
```
