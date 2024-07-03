# Generate a private key and a certificate
openssl req -newkey rsa:2048 -nodes -keyout myprivatekey.key -x509 -days 365 -out mycert.crt

# Create a .pfx file
openssl pkcs12 -export -out mycert.pfx -inkey myprivatekey.key -in mycert.crt

