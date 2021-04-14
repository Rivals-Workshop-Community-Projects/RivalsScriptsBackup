if(attack == AT_NSPECIAL) {
  if(place_meeting(x + hsp,  y + vsp, asset_get("par_block")))
  destroyed = true;
}

if(attack == AT_NSPECIAL && !free) {
  destroyed = true;
}