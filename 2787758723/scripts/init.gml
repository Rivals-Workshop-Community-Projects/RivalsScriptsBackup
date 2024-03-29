//

//print_debug("Init Time setting is "+string(get_match_setting(SET_TIMER)));
updated = 0;
_init = 0;
am_vers = "1.4";
patch_notes = "AM Patch 1.4: The 'Harbige12 update'.
Please check am_changes.gml for the patch notes!";

//#region SETTINGS
play_battle_music = false; //If battle music should play when an enemy is near.
enemy_health_hud_mode = 0; //0 = show health on HUD; 1 = show health on enemy; 2 = both; 3 = none
room_checkpoints = false; //If spawning in a room automatically sets a checkpoint.
//#endregion

//SPEEDRUN STRATS
speedrun_timer = -1; //Timers kept in follow_player
in_speedrun = false;

//Debug Vars
debug = false;
debug_info = false;
down_down = 0;
up_down = 0;
last_ID = 0;
game_end = false;
player_count = 0;
// print(view_get_wview());
// print(view_get_hview());

cam_x_right = view_get_wview()+view_get_xview();
cam_y_right = view_get_hview()+view_get_yview();
cam_x_left = view_get_xview();
cam_y_left = view_get_yview();
cam_x_center = view_get_wview()/2;
cam_x_l3 = view_get_wview()/3;
cam_x_r3 = 2*view_get_wview()/3;
cam_width = view_get_wview(); //960
cam_height = view_get_hview(); //540

blastzone_x = 100;
blastzone_y = 50;

// print([cam_width,cam_height]);

cam_state = 0;
cam_smooth = 1;
cam_state_time = 0;
old_cam_state = 0;
g_cam_pos = [cam_x_left,cam_y_left];
cam_offset = [0,0];
cam_vel_influence = 20;
//cam_vel_influence = 30;

game_paused = false;
counter = 0;


debug_console = false;
debug_x = 650;
debug_y = 2;
debug_w = 300;
debug_h = 400;
debug_sp = 5;
debug_txt_w = 90;
debug_toggle = false;

debug_ex = debug_x+debug_w;
debug_ey = debug_y+debug_h;
debug_txt_y = debug_ey+debug_sp;
debug_txt_ey = debug_txt_y+debug_sp;
keyboard_string = "";
key_string_old = "";
console_parse = "";
console_output = "";
console_com_hist = [];

//Article Allocations:


//Quick Terrain (article1) //Parallax

//Custom Marker (article2)

//Action Manager (article3) 
list_window = ds_list_create();
scene_manager = noone;
quest_complete_spr = sprite_get("quest_complete");
quest_complete_spr_num = sprite_get_number(quest_complete_spr);
quest_outline_spr = sprite_get("quest_border");
quest_complete_timer = 0;
quest_complete_timer_max = 120;


follow_player = noone;
max_percent = 200;
paused_percent = array_create(4);
is_paused = false;
is_online = false;
player_num = 0;
players_on = array_create(0);
player_array = array_create(5, noone);


/*with oPlayer {
    if get_player_hud_color(player) == 6612290 {
        other.is_online = true;
        break;
    }
    //if (!variable_instance_exists(self, "is_ai") || !is_ai) && is_player_on(player) other.follow_player = id;
    other.player_num++;
}
if is_online {
    player_num = 0;
    with oPlayer {
        if get_player_hud_color(player) == 6612290 other.follow_player = id;
        other.player_num++;
    }
}*/
/*with oPlayer if is_player_on(player) {
    if get_player_hud_color(player) == 15297156 {
        local_player = -1; //Flag for setting
        other.is_online = true;
    }
    if get_player_hud_color(player) == 6612290 other.local_player = id;
    other.player_count++;
}*/

//Can't slot players in init! Game spawns all player objects for the first frame.
// with oPlayer if get_player_hud_color(player) == 6612290 other.follow_player = id; //Online hud color
// if follow_player == noone  with oPlayer if !("temp_level" in self) {
//     other.follow_player = id;
//     break;
// }

// fp =  follow_player; //follow_player short
// print("[init] Cam Player ID:"+ string(fp));
// print("[init] Cam Player Access Test:"+ string(fp.sprite_index));
// print("[init] Cam Player Num:"+ string(fp.player));


//Camera Variables
cam_override_obj = noone;
//Area Triggers (article4)

//Room Manager (article5)
room_manager = noone;

//Enemies (article6)
active_bosses = array_create(0);
active_enemy = noone;
active_enemy_timer = 0;
active_enemy_timer_max = 180;

death_left = 100;
death_up = 100;
death_right = 100;
death_down = 100;

//Camera Controller (article7)

//Room Transitions (article8)

//UNSAFE Room size - crash often ;)
// room_width = 40000;
// room_height = 40000;

//Semi-safe room size - crash rarely
//room_width = 20000;
//room_height = 20000;

//Safe room size - rarely crash
// room_width = 10000;
// room_height = 10000;

//Window API Init
win_data = [];
active_win = [];

//cursor_sprite = sprite_get("arrow");
cursor_sprite_i = sprite_get("cursor");
cursor_index = 0;
cursor_visible = true; //Change to true for debug
mb_l_click = false;
mouse_x_i = mouse_x;
mouse_y_i = mouse_y;

//Debug Points
debug_point_r = 10;
debug_point_color = c_fuchsia;

//Window Variables
//Dialog
dialog_up = asset_get("sfx_holy_tablet");
//Quest
quest_complete = asset_get("sfx_chester_appear");

mouse_buffer = 16;
cursor_x_p = 0;
cursor_y_p = 0;
cursor_x = mouse_x - view_get_xview();
cursor_y = mouse_y - view_get_yview();
cursor_drag_offset_x = [];
cursor_drag_offset_y = [];
win_drag = -1;
win_active = -1;
active_thick = 4;

debug_selected = [];
debug_player = noone;
cmd_toggle = false;
cmd_lucid = true; //True for debug purposes, controls whether debug stuff is enabled
cmd_x = 664;
cmd_y = 4;
cmd_w = 280;
// cmd_h = 176;
cmd_h = 416;

cmd_char = '>';
cmd_output = "Type 'help' for command list.
"; //Parsed string for storing command log
cmd_save_output = false; // If the output is saved, or overwritten with every command (VERY LAGGY)
cmd_title = "LUCID DREAM v1.0";
cmd_freecam = false;


//Dialog & Quests

dialog_tick_rate = 0.5;
title_time = 600;
_quests = [];

//Notes
note_position = [0,0];
note_scroll = [10,10];


win_call = 1;
user_event(2);

quest_prog_sound = asset_get("sfx_coin_collect");
/*Good Sounds
sfx_holy_tablet - Dialog Up
sfx_propeller_dagger_loop - Dialog Flap?
sfx_coin_collect - Quest Progress
sfx_chester_appear - Quest Complete?
sfx_shop_move - Menu Move
sfx_shop_invalid - Menu Invalid
sfx_ori_sein_fstrong_hit_final - SMACK!!
sfx_eli_utilt_retract - Typewriter
sfx_eli_drill_loop - Mechanical 
sfx_clairen_tip_loop - Bzzzzt
sfx_frog_jab - Dialog Flap?
sfx_frog_croak - Ribbit
sfx_ice_wake - Monstorous Sigh
sfx_ice_wake - Monstorous Sigh Long
sfx_ice_chain - Typewriter
sfx_may_arc_talk - Arcade Talk!
*/

//Using custom music setups
//music_set_volume(0);

//#region exclusive to mario
am_mario_warp_timer = 0;
am_mario_warp_max_time = 300;
am_mario_timer = 400;
am_mario_time_inc = 0;
am_mario_timer_tick = true;
am_mario_coins = 0;

am_mario_ug_rooms = [2, 4, 6, 17];
am_mario_ow_rooms = [1, 3, 5, 7, 15, 16];
am_mario_ca_rooms = [8, 22];
am_mario_end_room = 23;
am_mario_level_info = []
am_mario_syobon = is_aether_stage();
am_mario_syobon_deaths = 0;
am_mario_syobon_trick = false;
am_mario_inf_lives = false;
am_mario_level = 0;

all_players_dead = false;

fx_puff = hit_fx_create(sprite_get("fx_puff"), 32)

if (!am_mario_syobon) {
    add_level_info(1, 1, 400,  [[0, 0],[16, 26],1]);
    add_level_info(1, 2, 400,  [[0, 0],[18, 26],3]);
    add_level_info(1, 3, 400,  [[0, 0],[16, 26],7]);
    add_level_info(1, 4, 300,  [[0, 0],[4, 12],8]);
}
else {
    add_level_info(1, 1, 400,  [[0, 0],[16, 26],15]);
    add_level_info(1, 2, 400,  [[0, 0],[16, 26],16]);
    add_level_info(1, 3, 400,  [[0, 0],[16, 26],19]);
    add_level_info(1, 4, 400,  [[0, 0],[4, 12],22]);
}

#define add_level_info(_world, _level, _time, _spawn_point)
array_push(am_mario_level_info, {
    world : _world,
    level : _level,
    timer : _time,
    spawn_point : _spawn_point
});
return true;
//#endregion

#define add_cred()

return true;