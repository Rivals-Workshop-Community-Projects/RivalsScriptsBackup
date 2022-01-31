//article1_init

_init = 0;

idle_spr = sprite_get("wall_idle");
wall_spr =  sprite_get("dspecial_wall");
wall_spr1 = sprite_get("wall_idle1");
wall_spr2 = sprite_get("wall_idle2");

bounce_spr = sprite_get("wall_bounce");
bounce_spr1 = sprite_get("wall_bounce1");
bounce_spr2 = sprite_get("wall_bounce2");
dest_spr = sprite_get("dspecial_wall_dest");

/*with player_id {
    if get_player_color(player) == 3 {
        other.idle_spr = sprite_get("g_wall_idle");
    }
}*/

im_num = 0;
im_dex = 0;
player_code3 = 0;
player_color = 0;

x_init = x;
y_init = y;
float_count = 0;
if has_rune("C") {
    float_inc = 4;
    mag = 60;
} else {
    float_inc = 1;
    mag = 6;
}


sprite_index = wall_spr;
hurtbox_spr = sprite_get("dspecial_wall_hurt");
alpha = image_alpha;

bounce_sfx = asset_get("sfx_springgo");

bounce_sprite = 0;
state = 0;
state_timer = 0;
full_timer = 0;
stay_timer = 0;
build_time = 2;
dest_time = 16;

bounce_timer = 0;
bounce_time = 3;
bounce_as = .5;
has_bounced = 0;
can_be_grounded = false;
free = true;
uses_shader = true;

//Vars
hit_count = 0;
hitting = 0;
inst = noone;
insta = noone;
inster = noone;
checkP = noone;
checkH = noone;

glitch_x = 0;
glitch_y = 0;
glitch_x_off = 0;
glitch_y_off = 0;
glitch_xp = 0;
glitch_yp = 0;
glitch_x_offp = 0;
glitch_y_offp = 0;
glitch_switch = 0;
glitch_switch_frame = 10;

bounce_hitpause = 3;

