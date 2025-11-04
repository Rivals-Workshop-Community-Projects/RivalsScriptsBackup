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

var i = 0;

alt_name[i] = "Avocado";
i++;
alt_name[i] = "Time Avatar";
i++;
alt_name[i] = "OP BodyGuard";
i++;
alt_name[i] = "The Saga";
i++;
alt_name[i] = "Teoran Barbecue";
i++;
alt_name[i] = "LoveyDovey Princess";
i++;
alt_name[i] = "Heterochromia";
i++;
alt_name[i] = "Defective Hypnosis";
i++;
alt_name[i] = "Stale Bread";
i++;
alt_name[i] = "The Conqueror";
i++;
alt_name[i] = "MARLOW.exe";
i++;
alt_name[i] = "Butterfly";
i++;
alt_name[i] = "Tornade Tragique";
i++;
alt_name[i] = "True Vessel";
i++;
alt_name[i] = "Spheromancer";
i++;
alt_name[i] = "Pentafist";
i++;
alt_name[i] = "Slimy Archeologist";
i++;
alt_name[i] = "Slayer";
i++;
alt_name[i] = "Ebon Flame";
i++;
alt_name[i] = "Eager Rookie";
i++;
alt_name[i] = "Blonde Huntress";
i++;
alt_name[i] = "Lady Crimepocalypse";
i++;
alt_name[i] = "Kyaa";
i++;
alt_name[i] = "Maneater";
i++;
alt_name[i] = "Marloween";
i++;
alt_name[i] = "The Reservist";
i++;
alt_name[i] = "Hotshot for hire";
i++;
alt_name[i] = "Witch Bunny";
i++;
alt_name[i] = "Delusional duo";
i++
alt_name[i] = "School President";
i++
alt_name[i] = "Not a phase";
i++
alt_name[i] = "Floaty";

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