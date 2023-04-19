//css_init.gml
//every script that has the word "init" will run only for the first frame of the "update" of it
//this script is used to assign character select screen variables
//css_init.gml runs as soon as the character loads in on the character select screen
//NOTE: CSS is short for Character Select Screen
skin_played = false
css_anim_time = 0;
css_char_anim_time = 0;
css_char_pic = sprite_get("charselect");

//ANIMATION VARS
sprite_change_offset("idle", 60, 90); //should mimic the load.gml offsets

preview_idle = sprite_get("idle");
preview_scale = 1; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //should mimic "idle_anim_speed" - controls the sprites animation speed


alt_cur = 0; //checks current alt
alt_prev = 0; //checks previous alt

voice_button = 1;
nude_alt = 0;

cursor_x = get_instance_x(cursor_id);
cursor_y = get_instance_y(cursor_id);

voice_button_x = 180
voice_button_y = 75


chance[0] = "VoiceMChance00";
chance[1] = "VoiceMChance01";
chance[2] = "VoiceMChance02";
chance[3] = "VoiceMChance03";



skin_alts = 31
skin_alts_active = 0
skin_name[0] = "SEESAW"
skin_name[1] = "LOWIEE"
skin_name[2] = "SUCC"
skin_name[3] = "PMINER"
skin_name[4] = "DEKU"
skin_name[5] = "SUCC"
skin_name[6] = "SUCC"


//cpu css toggle helper (by supersonic)
cpu_hover_init();

#define cpu_hover_init()
cpu_hovering_player = -1; //the current player that's hovering the cpu. -1 for nobody
cpu_is_hovered = -1; //whether the cpu is hovered currently.
cpu_hover_time = 0; //the timer for the cpu hover indicator
cpu_color_swap_time = 0; //the timer for the cpu indicator's smooth color swap
cpuh_prev_color = c_gray;
cpuh_new_color = c_gray;

var c = [-4,-4,-4,-4,-4];
with (asset_get("cs_playercursor_obj")) { //this sets the cursor array
    c[get_instance_player(self)] = self;
}
cursors = c;

x = floor(x); //hehe
y = floor(y);
plate_bounds = [x,y,x+219,y+207]; //boundaries of the player plate
portrait_bounds = [x+10,y+10,x+210,y+151]; //boundaries of the player portrait. unused but useful
cpu_hover_sprite = sprite_get("cpu_controllingplayer_outline"); //the outline sprite.