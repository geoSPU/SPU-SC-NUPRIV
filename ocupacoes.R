library(sf)

ocupacoes <- read_sf("ocupacoes.geojson")

io_nova <- read_sf("ocupacao/itapema_beach_place.geojson")

ocupacoes <- rbind(ocupacoes, io_nova)

write_sf(ocupacoes, "ocupacoes.geojson", delete_dsn = TRUE)


