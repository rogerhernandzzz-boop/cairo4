# Salir si ocurre un error
set -o errexit

# Instalar y compilar dependencias
mix deps.get --only prod
MIX_ENV=prod mix compile

# Compilar assets (dependiendo de tu versión de Phoenix)
MIX_ENV=prod mix assets.deploy

# Generar el release ejecutable
MIX_ENV=prod mix release --overwrite
