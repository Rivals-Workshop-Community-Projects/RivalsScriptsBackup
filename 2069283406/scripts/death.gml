///



fireon = 0
firerange = -100
with (asset_get("pHitBox")) {
if(player_id == other.id) {
    destroyed = true;
}
}

if has_rune("F") {
  daigomode = 0
}