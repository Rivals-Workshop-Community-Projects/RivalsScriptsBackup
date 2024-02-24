#macro DEFAULT      0
#macro MOON         1
#macro FIRE		    2
#macro EARTH        3
#macro ICE          4
#macro WATER        5
#macro LIGHTNING    6
#macro SHADOW       7

switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    case PS_FIRST_JUMP:
    if state_timer >= 34 {
        sprite_index = sprite_get("jump_loop")
        image_index = floor(state_timer/6)
    }
    break;
    
    case PS_IDLE_AIR:
    if image_index == 4 || sprite_index == sprite_get("jump_loop") {
        sprite_index = sprite_get("jump_loop")
        image_index = floor(state_timer/6)
    }
    break;
    
    default: break;
}

if state_attacking {
    switch attack {
        case AT_USPECIAL:
        if window == 2 {
            switch angle_index {
                case 2:
                image_index = 1
                break;
                
                case 1:
                case 3:
                image_index = 2
                break;
                
                case 0:
                case 4:
                image_index = 3
                break;
                
                case 5:
                case 7:
                image_index = 4
                break;
                
                case 6:
                image_index = 5
                break;
            }
        }
        
        if loadout[2] == LIGHTNING {
            if window == 2 && window_timer <= window_length - 2 {
                visible = false
            } else {
                visible = true
            }
        }
        break;
    }
} else if state != PS_RESPAWN && state != PS_DEAD {
    visible = true
}

//intro anim
var intro_time = get_gameplay_time();
var intro_frames = 11;
var intro_length = 55;
if intro_time < intro_length {
    sprite_index = sprite_get("intro");
    image_index = floor(intro_time/(intro_length/intro_frames));
}

if intro_time <= 50 draw_indicator = intro_time == 50;
if intro_time == 6 sound_play(sound_get("PortalOpen"))
if intro_time == 26 sound_play(asset_get("sfx_swipe_medium1"))
if intro_time == 40 {
    sound_play(asset_get("sfx_land"))
    spawn_base_dust(x, y, "land", spr_dir)
}

if intro_time >= 50 && intro_time < 70 {
    char_height = ease_expoOut(140, 52, intro_time - 50, 20)
}

//visible = true

#define spawn_base_dust(x, y, name, dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;

switch (name) {
    default: 
    case "dash_start": dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust != noone {
    newdust.dust_fx = dfx; //set the fx id
    if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
    newdust.dust_color = dust_color; //set the dust color
    if dir != 0 newdust.spr_dir = dir; //set the spr_dir
}
return newdust;