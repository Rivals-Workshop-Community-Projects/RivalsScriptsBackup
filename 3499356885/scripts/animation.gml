//Base Game Dust FX

//Egg Roll

if state == PS_ATTACK_GROUND && attack == AT_FSPECIAL && !hitpause{
    if window == 3 && ((window_timer mod 6) = 0) {
        spawn_base_dust(x-12*spr_dir, y, "dash", spr_dir);
    }
    if window == 5 && window_timer == 10{
        spawn_base_dust(x-12*spr_dir, y, "dash_start", spr_dir);
    }
}


//Yoshi Bomb
if state == PS_ATTACK_GROUND
&& attack == AT_DSPECIAL
&& !hitpause{
    
    //Startup Jump
    if window == 1
    && window_timer == 8{
        
        spawn_base_dust(x, y, "jump", spr_dir);
        
    }
    
    //Landing
    if window == 5
    && window_timer == 0{
        
        spawn_base_dust(x+8, y, "dash_start", -1);
        spawn_base_dust(x-8, y, "dash_start", 1);
        
    }
    
}

    // -- Egg Lay --

//Make Other Player Invisible

with oPlayer{
    if is_yoshi_egged{
        sprite_index = asset_get("empty_sprite");
    }
}


//Zap Effect

if plasma_pause == true{
    sprite_index = sprite_get("hurt_zap");
}

#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;