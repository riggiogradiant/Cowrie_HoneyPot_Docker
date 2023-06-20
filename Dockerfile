# Definir una imagen base para tu Dockerfile
FROM ubuntu:latest

# Ejecutar comandos personalizados
RUN apt-get update && apt-get install -y git python-virtualenv libssl-dev libffi-dev build-essential libpython-dev python2.7-minimal authbind \
&& virtualenv cowrie-env \
&& source cowrie-env/bin/activate \
&& pip install --upgrade pip 

# Obtener la imagen de Cowrie
FROM cowrie/cowrie:latest

# Comandos adicionales después de configurar los volúmenes
# RUN virtualenv cowrie-env \
#     && source cowrie-env/bin/activate \
#     && pip install --upgrade pip \
#     && bin/cowrie start
