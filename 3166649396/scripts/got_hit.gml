//got_hit

if fspec_has_hit && fspec_hit_player != noone && instance_exists(fspec_hit_player) {
    fspec_hit_player.hitpause = false
    fspec_hit_player.hitstop = 0
    fspec_has_hit = false
    fspec_hit_player = noone
}