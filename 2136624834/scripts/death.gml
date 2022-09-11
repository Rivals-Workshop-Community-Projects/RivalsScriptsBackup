///

timefreeze = 0

with (asset_get("pHitBox")) {
if(player_id == other.id) {
    destroyed = true;
}
}
			
			timestop *= 0.58