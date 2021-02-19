///

nolan = 0
supply = 6

with (asset_get("pHitBox")) {
if(player_id == other.id) {
    destroyed = true;
}
}