//css_init.gml

css_anim_time = 0;

icon_x_pos = x + 174;
icon_y_pos = y + 108;

preview_x = floor(x);
preview_y = floor(y);

alt_name = []; //refresh name array in case other characters use the same system

//ALT NAMES
//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "Avocado";
alt_name[1] = "Time Avatar";
alt_name[2] = "Umbra Princess";
alt_name[3] = "MARLOW.exe";
alt_name[4] = "Butterfly";
alt_name[5] = "Tornade Tragique";
alt_name[6] = "True Vessel";
alt_name[7] = "Spheromancer";
alt_name[8] = "Pentafist";
alt_name[9] = "Slimy Archeologist";
alt_name[10] = "Slayer";
alt_name[11] = "Ebon Flame";
alt_name[12] = "Eager Rookie";
alt_name[13] = "Blonde Huntress";
alt_name[14] = "Lady Crimepocalypse";
alt_name[15] = "Kyaa";
alt_name[16] = "Maneater";
alt_name[17] = "Featherbottom";
//alt_name[18] = "Flame's Salvation";
alt_name[18] = "The Reservist";
alt_name[19] = "Hotshot for hire";
alt_name[20] = "Witch Bunny";

alt_cur = 0;
alt_prev = 0;
alt_total = array_length(alt_name);

//ANIMATION VARS
/*
sprite_change_offset("idle", 16, 31); //"load.gml offsets"
*/

preview_idle = sprite_get("idle");
preview_scale = 1; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //"idle_anim_speed"

//CSS settings
press_delay = 0;

//language settings
sage_display_x = 170;
sage_display_y = 55;

sage_display_pos = [
    x + sage_display_x,
    y + sage_display_y,
    x + sage_display_x + sprite_get_width(sprite_get("hud_sage_display")),
    y + sage_display_y + sprite_get_height(sprite_get("hud_sage_display"))
];

sage_display_button_state = 0; //0 = normal | 1 = hover | 2 = press
cur_sage_display= 1;

//CPU shenanigans by supersonic
cpu_hovering_player = -1;
cpu_is_hovered = -1;
cpu_hover_time = 0;
cpu_color_swap_time = 0;

cursors = [-4,-4,-4,-4,-4]
with (asset_get("cs_playercursor_obj")) {
    other.cursors[get_instance_player(self)] = self;
}
x = floor(x);
y = floor(y);
plate_bounds = [x,y,x+219,y+207];
portrait_bounds = [x+10,y+10,x+210,y+151];

synced_vars = [cur_sage_display];