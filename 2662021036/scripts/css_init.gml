cselect_x = 0;
cselect_grow = 0;
bubblescroll_1 = -200;
bubblescroll_2 = 0;
eehalf = 0;
eehalf_max = 40;
text_alpha = 0;

alt_cur = 0;
alt_prev = 0;

css_anim_time = 0;

css_flash = 1;

icon_x_pos = x + 174;
icon_y_pos = y + 108;

preview_x = floor(x+10);
preview_y = floor(y+10);

c_wheel_x = 0;


//ANIMATION VARS
sprite_change_offset("idle", 90, 122); //"load.gml offsets"

preview_idle = sprite_get("idle");
preview_scale = 1; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //"idle_anim_speed"