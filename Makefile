
docker build -t haysapi .
docker run -p 8080:8080 -tid haysapi\


docker build -t application-tag .

docker run -it --rm -p 8080:8080 application-tag