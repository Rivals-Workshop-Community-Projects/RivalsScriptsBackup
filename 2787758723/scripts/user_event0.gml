// Load Action Data - Action Manager

//Enum & Macro Declarations, DO NOT EDIT

/*enum WIN {
    HUD_TXT,
    HUD_SPR,
    OBJ_SPR,
    WLD_CAM,
    WLD_TXT,
    WLD_SPR,
    PLR_CTL
}*/
//Update enums article3_update, draw_hud, and user_event0
enum LWO {
    TXT_HUD,
    TXT_WLD,
    CAM_WLD,
    SPR_HUD,
    SPR_WLD,
    PLR_CTL
}

enum ACT {
    // CAMERA, //Sets the camera to a specific point
    // //action_time, x, y, focus_type, smooth 
    WINDOW, //Makes a hud window
    //window_num, x, y, [contentoverride]
    CONTROL, //Controls players
    //player_id, life_time, state_override, input_array
    WAIT, //waits
    //frames
    PLAY_SOUND,
    //sound
    SET, //Set data
    //article_id, variable, value, ease_type, ease_length
    ON_INPUT, //Do a thing when a player presses a button
    //follow_player?, input_type
    SW_ROOM, //Switch the room
    //to_room, to_coords
    QUEST_PROG, //Quest-related actions
    //quest_id, action_type[0:set forward, 1:set override, 2:add/sub], amount
    ON_QUEST_PROG,
    //quest_id, progress_proc
    SUS, //Suspend Action by ID
    //suspend_bool, action_id
    KILL, //Remove the first of the action type given
    //action_id
    SPAWN_ART, //Spawn articles with the
    //[room_format]
    CHECK, //End action upon the condition being true
    //article_group, variable, condition
    ART_COUNT, //When the article count for the following article drops a threshold, continue
    //article_group, threshold, [lower than or equal:0 greater than or equal:1]
    SCENE, //Switches the scene
    //0:set,1:add, scene id
    RANDOM, //Pick a random exit action to do
    //seed
    SET_RELATIVE, //Set data relative to whatever caused this action (by default, passed by trigger zones)?
    //variable, value, ease_type, ease_length
    EVENT, //Trigger an item event?
    //event_id
    HITBOX, //Spawn a hitbox at an intersect location upon entering
    //attack_id, hitbox_id
    KILLBOX, //Spawn a killbox at an intersect location upon entering, killing whatever has intersected
    //killbox background
    TRANS_MUSIC, //transition music with a crossfade time (time of zero is a cut)
    //to_music_index, fade_time
    DESPAWN, //Article group to despawn/remove 
    //article_id
    EMIT_PARTICLE, //Emit a particle, generally at a relative location
    //x,y, sprite, vfx_time, disable_movement, alpha
    END_GAME, //Calls end_match
    
    CUSTOM
}

//Reset Arrays
action_array = [];
scene_array = [];
//Scene & Action Data Here
//World 1-1
action_add(1, 1, 1, ACT.TRANS_MUSIC, 
["music_ow"], //music_name
// [3,6]); //Actions to start on exit //DEBUG Events
[]); //Actions to start on exit

action_add(2, 1, 1, ACT.TRANS_MUSIC, 
["music_ug"], //music_name
// [3,6]); //Actions to start on exit //DEBUG Events
[]); //Actions to start on exit

//World 1-2
action_add(3, 1, 1, ACT.TRANS_MUSIC, 
["music_ow"], //music_name
// [3,6]); //Actions to start on exit //DEBUG Events
[]); //Actions to start on exit

action_add(4, 1, 1, ACT.TRANS_MUSIC, 
["music_ug"], //music_name
// [3,6]); //Actions to start on exit //DEBUG Events
[]); //Actions to start on exit

action_add(4, 1, 2, ACT.SPAWN_ART, 
[[6, 0], [16, 31, 10, 0, 0, ["THERE IS NO WARP ZONE

IN BA SING SE", fa_center, fa_top, 0, 0, 0, 0], [0,0]]],
[3]); //Actions to start on exit

action_add(5, 1, 1, ACT.TRANS_MUSIC, 
["music_ow"],
[]);

//World 1-3
action_add(7, 1, 1, ACT.TRANS_MUSIC, 
["music_ow"],
[]);

//World 1-4
action_add(8, 1, 1, ACT.TRANS_MUSIC, 
["music_ca"],
[]);

//Bowser
action_add(8, 1, 2, ACT.SET,   
[6, "anim_speed", 0.2, 1, 1],
[3, 6, 8]);

action_add(8, 1, 3, ACT.PLAY_SOUND, 
[sound_get("sfx_bridgebreak")],
[4]);

action_add(8, 1, 4, ACT.WAIT, 
[150],
[5]);

action_add(8, 1, 5, ACT.DESPAWN, 
[7],
[9]);

action_add(8, 1, 6, ACT.WAIT, 
[55],
[7]);

action_add(8, 1, 7, ACT.DESPAWN, 
[6],
[]);

action_add(8, 1, 8, ACT.SET,   
[1, "window", 3, 1, 1],
[]);

action_add(8, 1, 9, ACT.SET,   
[1, "window", 4, 1, 1],
[10]);

action_add(8, 1, 10, ACT.PLAY_SOUND, 
[sound_get("sfx_boss_dead2")],
[]);
var player_name = get_char_info(obj_stage_main.follow_player.player,INFO_STR_NAME)

action_add(8, 1, 11, ACT.SPAWN_ART, 
[[5, 0], [16, 30, 10, 0, 0, ["THANK YOU " + player_name + "!", fa_center, fa_top, 0, 0, 0, 0], [0,0]]],
[12, 17]); //Actions to start on exit

action_add(8, 1, 12, ACT.WAIT, 
[120],
[13, 16]);


action_add(8, 1, 13, ACT.SPAWN_ART, 
[[5, 0], [16, 30, 14, 0, 0, ["BUT OUR PRINCESS IS IN 

ANOTHER CASTLE!", fa_center, fa_top, 0, 0, 0, 0], [0,0]]],
[14]);

action_add(8, 1, 14, ACT.WAIT, 
[360],
[15]);

action_add(8, 1, 15, ACT.CUSTOM, 
[obj_stage_main.am_mario_end_room, 3, [[0, 0],[16, 16]]],
[]);

action_add(8, 1, 16, ACT.SET, 
[9, "invincible", 0, 1, 1],
[]);

action_add(8, 1, 17, ACT.TRANS_MUSIC, 
["music_victory2"], //music_name
[18]); //Actions to start on exit

action_add(8, 1, 18, ACT.SET,   
[-1, "am_mario_timer_tick", false, 1, 1],
[]);


//Syobon mode
action_add(15, 1, 1, ACT.TRANS_MUSIC, 
["music_ow"], //music_name
// [3,6]); //Actions to start on exit //DEBUG Events
[10]); //Actions to start on exit

action_add(15, 1, 2, ACT.SPAWN_ART, 
[[1, 0], [6, 58, 22, 0, 0, [2, 0, 0, [], 0,  [90, true, 2], 0, 0], [0,0]]],
[]); //Actions to start on exit

action_add(15, 1, 3, ACT.PLAY_SOUND, 
[sound_get("sfx_thwomp")], //music_name
[]); //Actions to start on exit

action_add(15, 1, 4, ACT.SPAWN_ART, 
[[3, 0], [6, 56, 0, 0, 0, [2, 0, 0, [], 0,  [270, true, 2], 0, 0], [0,0]]],
[]); //Actions to start on exit

action_add(15, 1, 5, ACT.SPAWN_ART, 
[[7, 0], [6, 10, 0, 0, 0, [0, 0, 0, [], 0, 0, 0, 0], [0,0]]],
[6, 7, 8]); //Actions to start on exit

action_add(15, 1, 6, ACT.SPAWN_ART, 
[[7, 0], [6, 12, 0, 0, 0, [0, 0, 0, [], 0, 0, 0, 0], [0,0]]],
[]); //Actions to start on exit

action_add(15, 1, 7, ACT.SPAWN_ART, 
[[7, 0], [6, 14, 0, 0, 0, [0, 0, 0, [], 0, 0, 0, 0], [0,0]]],
[]); //Actions to start on exit

action_add(15, 1, 8, ACT.SPAWN_ART, 
[[7, 0], [6, 16, 0, 0, 0, [0, 0, 0, [], 0, 0, 0, 0], [0,0]]],
[]); //Actions to start on exit

//Fake flagople
action_add(15, 1, 9, ACT.SPAWN_ART, 
[[7, 0], [23, 36, 6, 0, 0, [sprite_get("flagpole_flag"), 0, 0, [{x:0, y:0}, {x:-960,y:0}], false, 75, [true, 0], 0], [0,0]]],
[3]); //Actions to start on exit


action_add(15, 1, 10, ACT.CHECK, 
[-1, "am_mario_syobon_trick", true],
[11]); //Actions to start on exit

action_add(15, 1, 11, ACT.TRANS_MUSIC, 
["music_ow2"], //music_name
[]);

//World 1-2
action_add(16, 1, 1, ACT.TRANS_MUSIC, 
["music_ow"], //music_name
[2]);

action_add(16, 1, 2, ACT.CHECK, 
[-1, "am_mario_syobon_trick", true],
[3]); 

action_add(16, 1, 3, ACT.TRANS_MUSIC, 
["music_ow2"], //music_name
[]); 

action_add(17, 1, 1, ACT.TRANS_MUSIC, 
["music_ug"], //music_name
[2]); //Actions to start on exit

action_add(17, 1, 2, ACT.CHECK, 
[-1, "am_mario_syobon_trick", true],
[3]); //Actions to start on exit

action_add(17, 1, 3, ACT.TRANS_MUSIC, 
["music_ug2"], //music_name
[]); //Actions to start on exit

//Spiny
action_add(17, 1, 4, ACT.SPAWN_ART, 
[[2, 0], [6, 44, 33, 0, 0, [4, 0, 0, [], 0,  [-4.5, -16], 0, 0], [0,0]]],
[]); //Actions to start on exit

//Ptooie
action_add(17, 1, 5, ACT.SPAWN_ART, 
[[3, 0], [6, 16, 20, 0, 0, [5, 0, 0, [], 0,  [-4.5, -8], 0, 0], [0,0]]],
[6]);

action_add(17, 1, 6, ACT.WAIT,   
[60],
[7]);

action_add(17, 1, 7, ACT.SPAWN_ART, 
[[3, 0], [4, 6, 0, 0, 0, [8, 1, oPlayer, -1, 0, 96, 540, [0, 0, false, true]], [0,0]]],
[]);

//Ptooie (Another One)
action_add(17, 1, 8, ACT.SPAWN_ART, 
[[3, 0], [6, 16, 20, 0, 0, [5, 0, 0, [], 0,  [-4.5, -8], 0, 0], [0,0]]],
[]);

//Falling bricks
action_add(17, 1, 9, ACT.SET,   
[1, "plat_type", 0, 0, 1],
[10]);
action_add(17, 1, 10, ACT.SET,   
[1, "waypoint_index", 0, 0, 1],
[11]);

action_add(17, 1, 11, ACT.WAIT,   
[30],
[12]);

action_add(17, 1, 12, ACT.SET,   
[2, "plat_type", 0, 1, 1],
[13]);
action_add(17, 1, 13, ACT.SET,   
[2, "waypoint_index", 0, 1, 1],
[14]);

action_add(17, 1, 14, ACT.WAIT,   
[90],
[22]);

action_add(17, 1, 15, ACT.SPAWN_ART, 
[[3, 0], [23, 38, 0, 2, 0, [sprite_get("fake_ground5"), 0, 0, [{x:0, y:0}, {x:0, y:540}], 2, 60, 0, 0], [0,0]]],
[]);

//Podoboo spawner
action_add(17, 1, 16, ACT.SET,   
[3, "spawn_time", 50, 1, 1],
[17]);

action_add(17, 1, 17, ACT.PLAY_SOUND, 
[sound_get("sfx_coin")],
[]); //Actions to start on exit

//Platforms!
action_add(17, 1, 18, ACT.SET,   
[4, "plat_speed", 150],
[19, 20]);

action_add(17, 1, 19, ACT.SET,   
[4, "spawn_obj", [23, 0, 0, 1, 29, [sprite_get("platform_6x"), 0, 0, [{x:0, y:0}, {x:0, y:560}], 2, 150, 0, 0]], 1, 1],
[]);

action_add(17, 1, 20, ACT.SET,   
[4, "spawn_time", 75, 1, 1],
[]);

action_add(17, 1, 21, ACT.SPAWN_ART, 
[[6, 0], [16, 31, 10, 0, 0, ["THERE IS NO WARP ZONE

IN BA SING SE", fa_center, fa_top, 0, 0, 0, 0], [0,0]]],
[]); //Actions to start on exit

action_add(17, 1, 22, ACT.CHECK,   
[-1, "all_players_dead", false],
[15]);

action_add(18, 1, 1, ACT.TRANS_MUSIC, 
["music_ow"], //music_name
[2]); //Actions to start on exit

action_add(18, 1, 2, ACT.CHECK, 
[-1, "am_mario_syobon_trick", true],
[3]); //Actions to start on exit

action_add(18, 1, 3, ACT.TRANS_MUSIC, 
["music_ow2"], //music_name
[]); //Actions to start on exit

//Ptooie
action_add(18, 1, 4, ACT.SPAWN_ART, 
[[0, 0], [6, 6, 22, 0, 0, [5, 0, 0, [], 0, [12, -22], 0, 0], [0,0]]],
[]);

//1-3
action_add(19, 1, 1, ACT.TRANS_MUSIC, 
["music_ow"], //music_name
[2]); //Actions to start on exit

action_add(19, 1, 2, ACT.CHECK, 
[-1, "am_mario_syobon_trick", true],
[3]); //Actions to start on exit

action_add(19, 1, 3, ACT.TRANS_MUSIC, 
["music_ow2"], //music_name
[]); //Actions to start on exit

//Funny orb
action_add(19, 1, 4, ACT.SET,   
[1, "plat_waypoints", [{x:0, y:0}, {x:0, y:960}], 1, 1],
[5]);

action_add(19, 1, 5, ACT.SET,   
[1, "waypoint_index", 0, 1, 1],
[6]);

action_add(19, 1, 6, ACT.SPAWN_ART, 
[[0, 0], [10, 46, 0, 0, 0, [2, sprite_get("star"), 2, 1, 1, ""], [0,0]]],
[7]);

action_add(19, 1, 7, ACT.SPAWN_ART, 
[[0, 0], [10, 48, 0, 0, 0, [2, sprite_get("star"), 2, 1, 1, ""], [0,0]]],
[8]);

action_add(19, 1, 8, ACT.SPAWN_ART, 
[[0, 0], [10, 50, 0, 0, 0, [2, sprite_get("star"), 2, 1, 1, ""], [0,0]]],
[9]);

action_add(19, 1, 9, ACT.SPAWN_ART, 
[[0, 0], [10, 24, 0, 0, 0, [2, sprite_get("star"), 2, 1, 1, ""], [0,0]]],
[10]);

action_add(19, 1, 10, ACT.SPAWN_ART, 
[[0, 0], [10, 22, 0, 0, 0, [2, sprite_get("star"), 2, 1, 1, ""], [0,0]]],
[11]);

action_add(19, 1, 11, ACT.SPAWN_ART, 
[[0, 0], [10, 20, 0, 0, 0, [2, sprite_get("star"), 2, 1, 1, ""], [0,0]]],
[12]);

action_add(19, 1, 12, ACT.PLAY_SOUND, 
[sound_get("sfx_coin")],
[]);

//P-Switch
action_add(19, 1, 13, ACT.SPAWN_ART, 
[[2, 0], [24, 44, 26, 0, 31, [17, 4, [10, 0, 0, 0, 0, [3, sprite_get("coin"), 2, 1, 2, ""]], 0, 0, 0, 0, 0], [0,0]]],
[14, 15]);

action_add(19, 1, 14, ACT.DESPAWN, 
[2],
[]);

action_add(19, 1, 15, ACT.SPAWN_ART, 
[[3, 0], [10, 8, 18, 0, 0, [3, sprite_get("coin"), 2, 1, 2, ""], [0,0]]],
[14]);

//Fake flagople
action_add(19, 1, 16, ACT.SPAWN_ART, 
[[6, 0], [23, 36, 6, 0, 0, [sprite_get("flagpole_flag"), 0, 0, [{x:0, y:0}, {x:-1024,y:0}], 2, 75, [true, 0], 0], [0,0]]],
[17, 18, 19]);

action_add(19, 1, 17, ACT.PLAY_SOUND, 
[sound_get("sfx_thwomp")],
[]);

action_add(19, 1, 18, ACT.SPAWN_ART, 
[[6, 0], [23, 36, 6, 0, 0, [sprite_get("flagpole_flag"), 0, 0, [{x:0, y:0}, {x:-960,y:-64}], 2, 75, [true, 0], 0], [0,0]]],
[]);

action_add(19, 1, 19, ACT.SPAWN_ART, 
[[6, 0], [23, 36, 6, 0, 0, [sprite_get("flagpole_flag"), 0, 0, [{x:0, y:0}, {x:-960,y:128}], 2, 75, [true, 0], 0], [0,0]]],
[]);

action_add(20, 1, 1, ACT.TRANS_MUSIC, 
["music_bonus"],
[]);

action_add(21, 1, 1, ACT.TRANS_MUSIC, 
["music_ug"], //music_name
[2]); //Actions to start on exit

action_add(21, 1, 2, ACT.CHECK, 
[-1, "am_mario_syobon_trick", true],
[3]); //Actions to start on exit

action_add(21, 1, 3, ACT.TRANS_MUSIC, 
["music_ug2"], //music_name
[]); //Actions to start on exit

//1-4
action_add(22, 1, 1, ACT.TRANS_MUSIC, 
["music_ca"], //music_name
[2]);

action_add(22, 1, 2, ACT.CHECK, 
[-1, "am_mario_syobon_trick", true],
[3]); 

action_add(22, 1, 3, ACT.TRANS_MUSIC, 
["music_ca2"], //music_name
[]); 

//Switch block
action_add(22, 1, 4, ACT.SET,   
[2, "fire_num", 10, 1, 1],
[5]);

action_add(22, 1, 5, ACT.SET,   
[3, "fire_num", 6, 1, 1],
[]);

action_add(22, 1, 6, ACT.SET,   
[2, "fire_num", 6, 1, 1],
[7]);

action_add(22, 1, 7, ACT.SET,   
[3, "fire_num", 10, 1, 1],
[]);

//A thwomp that breaks all articles of the Geneva conventions
action_add(22, 1, 8, ACT.SPAWN_ART, 
[[1, 0], [6, 40, -4, 0, 0, [8, 0, 0, [], 0, 0, 0, 0], [0,0]]],
[]);

//Moving blocks

action_add(22, 1, 9, ACT.SET,   
[4, "plat_waypoints", [{x:0, y:0}, {x:-32, y:0}], 1, 1],
[10, 11, 12]);

action_add(22, 1, 10, ACT.SET,   
[4, "waypoint_index", 0, 1, 1],
[]);

action_add(22, 1, 11, ACT.SET,   
[5, "plat_waypoints", [{x:0, y:0}, {x:32, y:0}], 1, 1],
[]);

action_add(22, 1, 12, ACT.SET,   
[5, "waypoint_index", 0, 1, 1],
[]);

//Moving blocks
action_add(22, 1, 13, ACT.SET,   
[6, "plat_waypoints", [{x:0, y:0}, {x:0, y:540}], 1, 1],
[14]);

action_add(22, 1, 14, ACT.SET,   
[6, "waypoint_index", 0, 1, 1],
[]);

//Podoboo Spawn
action_add(22, 1, 15, ACT.SPAWN_ART, 
[[4, 0], [14, 34, 28, 0, 0, [asset_get("empty_sprite"), 240, 0, 0, [6, 0, 0, 0, 31, [6, 0, 0, [], 0, [90, 90], 0, 0]], 0, 0, 0,], [0,0]]],
[16, 17]);

action_add(22, 1, 16, ACT.SPAWN_ART, 
[[4, 0], [14, 36, 28, 0, 0, [asset_get("empty_sprite"), 240, 0, 0, [6, 0, 0, 0, 31, [6, 0, 0, [], 0, [90, 90], 0, 0]], 0, 0, 0,], [0,0]]],
[]);

action_add(22, 1, 17, ACT.SPAWN_ART, 
[[4, 0], [14, 38, 28, 0, 0, [asset_get("empty_sprite"), 240, 0, 0, [6, 0, 0, 0, 31, [6, 0, 0, [], 0, [90, 90], 0, 0]], 0, 0, 0,], [0,0]]],
[]);

//Bowser
action_add(22, 1, 18, ACT.SET,   
[6, "anim_speed", 0.2, 1, 1],
[19, 20]);

action_add(22, 1, 19, ACT.PLAY_SOUND, 
[sound_get("sfx_bridgebreak")],
[22]);

action_add(22, 1, 20, ACT.WAIT, 
[150],
[21]);

action_add(22, 1, 21, ACT.DESPAWN, 
[7],
[]);

action_add(22, 1, 22, ACT.WAIT, 
[55],
[23]);

action_add(22, 1, 23, ACT.DESPAWN, 
[6],
[]);

action_add(22, 1, 24, ACT.SET,   
[6, "anim_speed", 0.2, 1, 1],
[19]);

action_add(22, 1, 25, ACT.SET,   
[8, "plat_waypoints", [{x:0, y:0}, {x:0, y:540}], 1, 1],
[26]);

action_add(22, 1, 26, ACT.SET,   
[8, "waypoint_index", 0, 1, 1],
[]);

//Victory?
action_add(22, 1, 27, ACT.TRANS_MUSIC, 
["music_victory2"], //music_name
[29]); //Actions to start on exit

action_add(22, 1, 28, ACT.SPAWN_ART, 
[[6, 0], [16, 30, 10, 0, 0, ["SORRY NOTHING", fa_center, fa_top, 0, 0, 0, 0], [0,0]]],
[]); //Actions to start on exit

action_add(22, 1, 29, ACT.SET,   
[-1, "am_mario_timer_tick", false, 1, 1],
[]);

//Yeah no this is victory
var player_name = get_char_info(obj_stage_main.follow_player.player,INFO_STR_NAME)

action_add(22, 1, 30, ACT.SPAWN_ART, 
[[7, 0], [16, 30, 10, 0, 0, ["THANK YOU " + player_name + "!", fa_center, fa_top, 0, 0, 0, 0], [0,0]]],
[31, 27, 35]); //Actions to start on exit

action_add(22, 1, 31, ACT.WAIT, 
[120],
[32]);

//April Fools version
action_add(22, 1, 32, ACT.SPAWN_ART, 
[[7, 0], [16, 30, 14, 0, 0, ["APRIL FOOLS!", fa_center, fa_top, 0, 0, 0, 0], [0,0]]],
[33]);

//Normal version
// action_add(22, 1, 28, ACT.SPAWN_ART, 
// [[6, 0], [16, 30, 14, 0, 0, ["BUT OUR PRINCESS IS IN 

// ANOTHER CASTLE!", fa_center, fa_top, 0, 0, 0, 0], [0,0]]],
// [33]);

action_add(22, 1, 33, ACT.WAIT, 
[360],
[34]);

action_add(22, 1, 34, ACT.CUSTOM, 
[obj_stage_main.am_mario_end_room, 3, [[0, 0],[16, 16]]],
[]);

action_add(22, 1, 35, ACT.SET, 
[9, "invincible", 0, 1, 1],
[]);

//Room 0: Global action declarations
// action_add(0, 1, 1, ACT.WAIT,   //room_id, scene_id, action_id, action_type
// [120],                          //Action arguments
// []);                           //Actions to start on exit


////Dialog Init
//1: Quick Test
// dialog_add(1,1,["Hello! These are the default sprites...."]);
// dialog_add(1,2,["...And Here's some Override!",sprite_get("face_default2")]);
// dialog_add(1,3,["Wonder what happens here??"]);

//Nickname setup
with obj_stage_main other.fp = follow_player;

with fp {
    if am_is_fire nick = "Citizen";
    else if am_is_abyssal || !am_is_verbal nick = "Beast";
    else if am_is_insane || am_is_realitybreak || am_is_magic nick = "Odd Stranger";
    else if am_is_noob || am_is_small nick = "Little One";
    else nick = "Stranger";
}

//DON NOT EDIT BELOW
#define action_add(_room_id, _scene_id, _action_id, _action_type, _param, _on_exit)
while _room_id >= array_length_1d(action_array) array_push(action_array, []);
while _scene_id >= array_length_1d(action_array[_room_id]) array_push(action_array[_room_id], []);
while _action_id >= array_length_1d(action_array[_room_id][_scene_id]) array_push(action_array[_room_id][_scene_id], []);
action_array[@_room_id][@_scene_id][@_action_id] = [_action_type, _param, _on_exit];
//print_debug("[AM] Action Loaded: "+string(_room_id)+":"+string(_scene_id,)+":"+string(_action_id));
return true;

#define scene_add(_room_id, _scene_id, _action_array)
while _room_id >= array_length_1d(scene_array) array_push(scene_array, []);
//print_debug(string(scene_array));
while _scene_id >= array_length_1d(scene_array[_room_id]) array_push(scene_array[_room_id], []);
if array_length(_action_array) == 0 array_push(_action_array,_scene_id);
scene_array[@_room_id][@_scene_id] = _action_array;
if debug print_debug("[AM] Scene Loaded: "+string(_scene_id));
return true;

#define quest_add(_id,_progress,_title,_description,_spr)
if quest_init return false;
if _progress == 0 {
    print("[AM:Q] ERROR: Do not override progress 0!");
    return false;
}
while _id >= array_length_1d(quest_array) array_push(quest_array,[]);
while _progress >= array_length_1d(quest_array[_id]) array_push(quest_array[_id],[]);
quest_array[@_id][@0] = noone;//Save quest progress here
quest_array[@_id][@_progress] = [_title,_description,_spr];
return true;

#define dialog_add(_id,_progress,_data) //Dialog Data: [string,_text_sprite_face_override,_sprite_bg_override]
//Response Map: [[_text,_to_prog,_dialog_override]...]
if _progress == 0 {
    print("[AM:D] ERROR: Do not override progress 0!");
    return false;
}
while _id >= array_length_1d(dialog_array) array_push(dialog_array,[]);
while _progress >= array_length_1d(dialog_array[_id]) array_push(dialog_array[_id],[]);
dialog_array[@_id][@0] = noone; //Save dialog progress
dialog_array[@_id][@_progress] = _data; //Save dialog progress
return true;

//#region delete this if you want
#define arc_calc_x_speed(x1, y1, x2, y2, vspd, g)
var dX = x2 - x1;
var dY = y2 - y1;
if (dX == 0) {
	return 0;
}
var t = (abs(vspd) / g) + sqrt(abs(vspd * vspd) / (g * g) - (dY / g));
return dX / t;
//#endregion