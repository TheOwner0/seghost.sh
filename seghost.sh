#!/bin/bash
#HERRAMIENTA CREADA PARA LA BUSQUEDA DE HOST EN UN SEGMENTO DE RED
#SUSTITUIR LOS CAMPOS MOSTRADOS Y POSTERIORMENTE EJECUTAR.
for host in $(seq 2 254); do
			# EXAMPLE: ping -c 1 10.10.10.$host						#EXAMPLE: 10.10.10.$host
	timeout 1 bash -c "ping -c 1 <PRIMEROS TRES OCTETOS DEL SEGMENTO>.$host > /dev/null 2>&1" && echo "HOST <PRIMEROS TRES SEGMENTOS DEL SEGMENTO>.$host -RESPONDE" &
done; wait
