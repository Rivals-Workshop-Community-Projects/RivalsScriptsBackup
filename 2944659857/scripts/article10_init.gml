// toad
spr_dash = sprite_get("toad_dash");
spr_turn = sprite_get("toad_turn");

sprite_index = spr_dash;
mask_index = asset_get("empty_sprite");

depth = 29;

anim_speed = 0.2;

state = PS_DASH;
queued_state = PS_DASH;
state_timer = 0;

x1 = get_marker_x(1);
x2 = get_marker_x(2);
y1 = get_marker_y(1) - 2;

x = (x1 + x2) / 2
y = y1;
