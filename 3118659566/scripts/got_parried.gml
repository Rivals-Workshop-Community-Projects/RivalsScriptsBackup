//got_parried - called when an opponent parries your attack

if letterID != 0 {
    if letterID != hit_player_obj.id {
        letterID.hsp = 15 * letterID.spr_dir;
        letterID.hitbox_timer = 0;
    } 
}

if airletterID != 0 {
    if airletterID != hit_player_obj.id {
        airletterID.hsp = 10 * letterID.spr_dir;
        airletterID.vsp = 14;
        airletterID.hitbox_timer = 0;
    } 
}

if packageID != 0 {
    if packageID != hit_player_obj.id {
        explo_owner = hit_player;
    } else {
        explo_owner = 0;
    }
}
