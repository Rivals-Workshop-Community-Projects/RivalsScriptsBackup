// When dspecial is input, recall the zone if it's already deployed
if (attack == AT_DSPECIAL){
    var zone_deployed = false;
    // Detect if a comedy zone belonging to this character exists
    with (asset_get("obj_article1")) {
        if (player_id == other.id) {
            zone_deployed = true;
        }
    }
    if (zone_deployed) {
        window = 5;
        window_timer = 0;
    }
}