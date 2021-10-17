//article1_init


sprite_index = sprite_get("jab_article");
mask_index = asset_get("empty_sprite");
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
free = false;

_init = 0;
state = 0;
state_timer = 0;
att = 0;
anim_frames = [3,3,3];
anim_start = [0,4,7];
anim_timer = [20, 50, 25];
strong_charge = 0;
hitb = noone;
fstrong_hsp_init = 30;
fstrong_hsp = fstrong_hsp_init;
view_left = view_get_xview();
view_top = view_get_yview();
view_right = view_get_xview()+view_get_wview();
view_bot = view_get_yview()+view_get_hview();
range = 40;