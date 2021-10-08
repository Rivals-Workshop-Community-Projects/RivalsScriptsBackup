

//animation.gml or update.gml
with (asset_get("new_dust_fx_obj")) {
    if player == other.player && "ssl" not in self 
        dust_length = 0;
}
/*
  to successfully create a dust fx that doesnt get destroyed do the following:
  var dfx = spawn_dust_fx(...);
  dfx.ssl = true;
*/