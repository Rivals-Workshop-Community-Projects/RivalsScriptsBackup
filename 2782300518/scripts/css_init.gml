//css_init

alt_cur = get_player_color(player);
default_alt = 0;
alt_checker = get_player_color(player);
num_alts = 23;
offset = 0;
temp_x = x + 8;
temp_y = y + 9;
voicebutton = get_synced_var(player) * 3;
voicebuttoncurrent = get_synced_var(player) *3;
cssframes = 0;
css_timer = 0;
voice_timer = 0;
drawing = 0;
drawtime = 0;
alttime = 0;
col = c_white;
thin = num_alts > 16;
is_css = true;
preview_x = 0; //preview char
preview_y = 0;
cpu_player = false;

title_alpha = 0;

txt = "#" + string(alt_cur);

voice_button_position_x = 0;
voice_button_position_y = 0;

//ANIMATION VARS
sprite_change_offset("idle", 20, 39); //should mimic the load.gml offsets

preview_idle = sprite_get("idle");
preview_scale = 2; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //should mimic "idle_anim_speed" - controls the sprites animation speed


bike = sprite_get("bike_smokeH");
scale = 4;
anim_speed = 1.4; //the bigger the number, the slower the animation

//bike sprite showcase
sprite_change_offset("bike_smokeH", 18, 32);

cpu_hover_init(); //put this anywhere above your #defines

//as always, #defines go at the bottom of the script.
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