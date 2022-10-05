version: '3.3'
services:
  asir_bind9:
    container_name: asir_bind9
    image: internetsystemsconsortium/bind9:9.16
    ports:
      - 5300:53/udp
      - 5300:53/tcp
    volumes:
      - /home/asir2a/Escritorio/SRI/bind9/DNS/conf:/etc/bind
      - /home/asir2a/Escritorio/SRI/bind9/DNS/zonas:/var/lib/bind
