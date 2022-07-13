//got_hit

var is_grappling = false

with obj_article1 if player_id == other.id && attack == PS_DASH_START {
    is_grappling = true
}
with pHitBox if player_id == other.id && attack == AT_DSPECIAL && hbox_num == 1 {
    is_grappling = true
}

with obj_article1 if player_id == other.id && state == PS_WRAPPED && !is_grappling {
    state = PS_DEAD
    state_timer = 0
}