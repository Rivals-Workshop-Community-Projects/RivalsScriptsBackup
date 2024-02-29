//got_hit

if fspec_has_hit && fspec_hit_player != noone && instance_exists(fspec_hit_player) {
    fspec_hit_player.hitpause = false
    fspec_hit_player.hitstop = 0
    fspec_has_hit = false
    fspec_hit_player = noone
}

if hurt_img == 0 && hit_player_obj.omen_drenched_id == id {
    hit_player_obj.omen_drenched_id = noone
    hit_player_obj.omen_drenched_timer = 0
}