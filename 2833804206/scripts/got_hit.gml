//got_hit.gml
/*
if r2_grab_id != noone {
    r2_grab_id.hitpause = false
    r2_grab_id.hitstop = 0
    r2_grab_id = noone
}
*/

with pHitBox if player_id == other.id && attack == AT_FSTRONG {
    destroyed = true
}