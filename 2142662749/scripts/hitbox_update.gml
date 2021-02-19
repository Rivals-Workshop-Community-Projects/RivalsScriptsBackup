//hitbox_update

if (attack == AT_FSPECIAL) && (hbox_num == 1) {
    can_hit_self = true;
    if (player_id.zoID != undefined) {
        with player_id.zoID {
            other.y = chainY;
            chainEndX = other.x;
            chainActive = true;
            if (chainHit || state == PS_HITSTUN || state == PS_HITSTUN_LAND) || (player_id.zoID.chainTether) {
                instance_destroy(other.id);
                exit;
            }
        }
        
        if position_meeting(x, y, asset_get("par_block")) {
            player_id.zoID.chainTether = true;
        } else {
            player_id.zoID.chainTether = false;
        }
    }
}