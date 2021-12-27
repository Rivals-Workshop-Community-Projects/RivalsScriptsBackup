//Big Card (tm)

state = 0; //0 == spawn, 1 == idle, 2 == being ridden, 3 == jumped off of, 4 == is a hitbox, 5 == destroy
state_timer = 0;

window = 1;
window_timer = 0;

hitpause = 0;
old_hsp = 0;
old_vsp = 0;

draw_y = 0;

sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("card_big");
depth = 2;

spr_index = sprite_get("card_big");
img_index = 0;

//Card stuff
travel_hsp_max = 22;
travel_decel = 0.5;
travel_vsp_max = 9;

die_time_max = 10 * 60;

can_be_grounded = true;
ignores_walls = false;

p_x = 0;
p_y = 0;
out_color = c_white;
die_timer = 0;