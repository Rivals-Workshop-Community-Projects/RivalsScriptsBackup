// Load Scene Data - Scene Manager

//Enum & Macro Declarations, DO NOT EDIT
enum BT {
    ATTACK,
    SHIELD,
    ATTACK_SHIELD,
    TAUNT,
    START
}
enum WIN {
    HUD_TXT, //HUD Text Object
    HUD_SPR, //HUD Sprite Object
    OBJ_SPR, //Sprite on an Object
    WLD_CAM, //World Camera
    WLD_TXT, //World Text
    WLD_SPR  //World Sprites
}

#macro TG_CUSTOM 69 //Run custom trigger code
#macro TG_COMPLETE 420 //Trigger upon 'completion' (defined per window type: Animation completion [> image_index], Full text display [vis_chars > full_text length])
#macro TG_BUTTON 2 //Triggers upon button press (any button, attack, shield, taunt, etc)
#macro TG_TIME 3 //Triggers after frame count

//Misc Declarations
targets_broken = 0;
targets_max = 0;
end_time = 0;
max_time = 1200;


//Scene Data Here

    
switch cur_room { //Room Specific Scenes
    
    default:
        //Global Scenes
        scene_add(1,[
            //[-10, 0, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_happy"), 6]], //window 0, animated sprite
            [-500, 0, 1, [asset_get("empty_sprite"), 0, -16, -16, sprite_get("btt_logo_taw"), 6]], //0
            [-10, -500, 1, [asset_get("empty_sprite"), 0, -16, -16, sprite_get("btt_logo_tar"), 6]], //1
            [1000, 0, 1, [asset_get("empty_sprite"), 0, -16, -16, sprite_get("btt_logo_ta"), 6]], //2
            [-1000, 0, 1, [asset_get("empty_sprite"), 0, -16, -16, sprite_get("btt_logo_tw"), 6]], //3
            [-10, -1000, 1, [asset_get("empty_sprite"), 0, -16, -16, sprite_get("btt_logo_tr"), 6]], //4
            [1500, 0, 1, [asset_get("empty_sprite"), 0, -16, -16, sprite_get("btt_logo_t"), 6]], //5
            [-1500, 0, 1, [asset_get("empty_sprite"), 0, -16, -16, sprite_get("btt_logo_bw"), 6]], //6
            [-10, -1500, 1, [asset_get("empty_sprite"), 0, -16, -16, sprite_get("btt_logo_br"), 6]], //7
            [2000, 0, 1, [asset_get("empty_sprite"), 0, -16, -16, sprite_get("btt_logo_b"), 6]], //8
            [950, 400, 0, [sprite_get("btt_border_3"), 4, 26, 22, "roundFont", "CUSTOM COURSE", 300, 0, 0]], //9
            [950, 300, 0, [asset_get("empty_sprite"), 4, 26, 22, "roundFont", "SELECT DEFAULT COURSES USING
LEFT, RIGHT, OR NEUTRAL", 300, 0, 0]] //10
            /*[-10, 0, 1, [asset_get("empty_sprite"), 0, -16, -16, sprite_get("btt_logo_ws"), 6]], 
            [-10, 0, 1, [asset_get("empty_sprite"), 0, -16, -16, sprite_get("btt_logo_rs"), 6]], 
            [-10, 0, 1, [asset_get("empty_sprite"), 0, -16, -16, sprite_get("btt_logo_bs"), 6]] */
            ],
            [TG_COMPLETE, -1,  999999999999999]);
        scene_add(2,[
            //[-10, 0, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_happy"), 6]], //window 0, animated sprite
            [950, 0, 0, [sprite_get("btt_border_1"), 4, 74, 22, "roundFont", "TIMER", 300, tutorial_default_text_speed, 0]], //window 1, textbox
            [720, 400, 0, [sprite_get("btt_border_3"), 4, 26, 22, "roundFont", "CUSTOM COURSE", 300, 0, 0]]//window 1, textbox
            ],
            [TG_CUSTOM, 3,  0]);
        scene_add(3,[
            //[-10, 0, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_happy"), 6]], //window 0, animated sprite
            [-300, 370, 0, [sprite_get("btt_border_2"), 4, 86, 22, "roundFont", "All Done!", 680, 0, 0]], //window 1, textbox
            [-1000, 310, 1, [asset_get("empty_sprite"), 0, -16, -16, sprite_get("btt_timew"), 6]],
            [-300, -1000, 1, [asset_get("empty_sprite"), 0, -16, -16, sprite_get("btt_timer"), 6]],
            [1000, 310, 1, [asset_get("empty_sprite"), 0, -16, -16, sprite_get("btt_time"), 6]],
            [720, 400, 0, [sprite_get("btt_border_3"), 4, 26, 22, "roundFont", "CUSTOM COURSE", 300, 4, 0]]//window 1, textbox
            ],
            [TG_COMPLETE, -1,  999999999999999]);
            break;
    case 7:
        scene_add(1,[
            ],
            [TG_COMPLETE, -1,  999999999999999]);
        scene_add(2,[
            [50,400, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_happy"), 6]], //window 0, animated sprite
            [150,400, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", "Hey! You found an easter egg! Nice.", 680, tutorial_default_text_speed, asset_get("mfx_hp")]] 
                                                                           // Unless you are parusing the code, you nosey bastard...
            ],
            //[TG_COMPLETE, 2,  tutorial_default_scroll]);
            [TG_COMPLETE, -1,  999999999999999]);
        scene_add(2,[
            [50,400, 1, [asset_get("empty_sprite"), 6, -16, -16, sprite_get("archeio_sideglance"), 6]], //window 0, animated sprite
            [150,400, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", "You think there'd be more? Nah quit looking!", 680, tutorial_default_text_speed, asset_get("mfx_hp")]] 
            ],
            //[TG_COMPLETE, 2,  tutorial_default_scroll]);
            [TG_COMPLETE, -1,  999999999999999]);
        break;
    /*case 1:
        scene_add(1,[
            [150,400, 0, [sprite_get("bordertext4"), 6, 20, 16, "roundFont", "SCROLLING ROOM TEST", 680, tutorial_default_text_speed, asset_get("mfx_hp")]] //window 0, textbox
            //[400,800,3,[0,follow_player,20,[0,40]]], //window 1, camera control
            ],
            [TG_CUSTOM, 2, tutorial_default_scroll]);
        break;*/
}

//

//DO NOT EDIT BELOW


/*
################################################################################
CHEAT SHEET
################################################################################


#############
scene_add(scene_id, [window_data], [trigger_data]);
scene_id: The unique numerical ID of the scene.

window_data: The initialization data of each window in the scene, in order. Instanced as window 0, 1, 2, etc.
    [x,y,content_type, [window_arguments]]

trigger_data: The data that determines when the current scene transitions to the provided.
    [trigger_type, next_scene, delay/extra arguments]
    macros:
        TG_CUSTOM //Run custom trigger code
        TG_COMPLETE //Trigger upon 'completion' (defined per window type: Animation completion [> image_index], Full text display [vis_chars > full_text length])
        TG_BUTTON //Triggers upon button press (any button, attack, shield, taunt, etc)
        TG_TIME //Triggers after a frame count

#############
SCENE WINDOW VARIABLES
default values are shown after a ':'. 
[#] means the array argument index in the last argument of windows.

HUD Textbox:
    _x,
    _y,
    content_type,
    bg_sprite_index: [0],
    bg_sprite_speed: [1],
    _in_x: [2],
    _in_y: [3],
    font: [4],
    text_full: [5],
    text_spacing: [6],
    scroll_speed: [7],
    scroll_sound: [8],
    bg_image_index,
    vis_chars: 0,
    move_time: 30,
    move_timer: 0,
    move_type: 1,
    visibl: true,
    path: [_x,_y],
    init_pos: [_x,_y]
    
HUD Sprite:
    _x:,
    _y:,
    content_type,
    bg_sprite_index: [0],
    bg_sprite_speed: [1],
    _in_x: [2],
    _in_y: [3],
    _sprite_index: [4],
    sprite_speed: [5],
    bg_image_index: [6],
    _image_index: [7],
    move_time: 30,
    move_timer: 0,
    move_type: 1,
    visibl: true,
    path: [x,y],
    init_pos: [x,y]
    
Draw Sprite, Synced with an object:
    _x,
    _y,
    content_type,
    bg_sprite_index: [0],
    bg_sprite_speed: [1],
    _in_x: [2],
    _in_y: [3],
    _sprite_index: [4],
    sprite_speed: [5],
    obj_name: [6],
    synced: [7],
    bg_image_index: [8],
    _image_index: [9],
    move_time: 30,
    move_timer: 0,
    move_type: 1,
    visibl: true,
    path: [x,y],
    init_pos: [x,y]

Camera Controller: *USE ONLY IN CUTSCENES*
    _x: __x,
    _y: __y,
    content_type,
    visibl: false, //Keep false, nothing to draw
    follow_type: [0],
    follow_var: [1], //Object, bounded or not, depends on follow_type
    move_speed: [2],
    cam_offset: [3]
    
World Drawn Textbox:
    _x,
    _y,
    content_type,
    bg_sprite_index: [0],
    bg_sprite_speed: [1],
    _in_x: [2],
    _in_y: [3],
    font: [4],
    text_full: [5],
    text_spacing: [6],
    scroll_speed: [7],
    scroll_sound: [8],
    bg_image_index: 0,
    vis_chars: 0,
    move_time: 30,
    move_timer: 0,
    move_type: 1,
    visibl: true,
    path: [x,y],
    init_pos: [x,y]
    
World Drawn Animated Sprite: 
    _x,
    _y,
    content_type,
    bg_sprite_index: [0],
    bg_sprite_speed: [1],
    _in_x: [2],
    _in_y: [3],
    _sprite_index: [4],
    sprite_speed: [5],
    bg_image_index: [6],
    _image_index: [7],
    move_time: 30,
    move_timer: 0,
    move_type: 1,
    visibl: true,
    path: [x,y],
    init_pos: [x,y]
#############
*/
#define scene_add(_scene_id, scene_data, scene_triggers) //Adds a new scene to the scenespace
var _scene_id_ind = array_find_index(array_scene_ID,_scene_id);
if _scene_id_ind == -1 {
    array_push(array_scene_data,scene_data);
    array_push(array_scene_ID, _scene_id);
    array_push(array_scene_triggers,scene_triggers);
    open_scene_id++;
} else {
    array_scene_data[_scene_id_ind] = scene_data;
    array_scene_ID[_scene_id_ind] = _scene_id;
    array_scene_triggers[_scene_id_ind] = scene_triggers;
}

