mkdir workstationMax
cd workstationMax


git init
git config user.email "mpicado@example.org"
git config user.name  "Max Picado"

mkdir static
printenv SHELL > static/foo.txt
git add -A
git commit -a -m "Crear static/foo.txt"

echo "oauth-service: \"https://exampleorg.foo.domain.con/\"" > config
git add -A
git commit -a -m "Crear configuración de servicio de oauth"

echo "Mensaje de pantalla" > msg.txt
git add -A
git commit -a -m "Crear static/screenMSG.txt"


echo "oauth-service: \"https://exampleorg.foo.domain.com/\"" > config
git commit -a -m "Hotfix de configuración de servicio de oauth"

mkdir $(printenv HOME)/repos/local -p 
cd $(printenv HOME)/repos/local
git init --bare

cd $(printenv HOME)/workstationMax
git remote add origin /home/jovyan/repos/local

git push origin master

cd $(printenv HOME)
mkdir workstationFritz
cd workstationFritz

git init
git config user.email "fmann@example.org"
git config user.name  "Fritz Mann"

cd $(printenv HOME)
mkdir workstationOscar
cd workstationOscar

git init
git config user.email "omelendez@example.org"
git config user.name  "Oscar Meléndez"