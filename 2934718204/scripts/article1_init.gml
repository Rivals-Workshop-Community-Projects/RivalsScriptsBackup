//article1_init
is_barb = true

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

timer = 0

sprite_index = sprite_get("barb_spawn")
mask_index = sprite_get("barb_hurt")
state = PS_SPAWN
state_timer = 0
window = 0
window_timer = 0

die = false

with obj_article1 if player_id == other.player_id && id != other.id {
    die = true
}
with pHitBox if player_id == other.player_id && attack == AT_NSPECIAL && hbox_num == 2 {
    destroyed = true
}

needle_ID = noone