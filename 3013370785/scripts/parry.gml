//parry.gml

//sound_play(sound_get("Shield_JustGird"))


var facing = (x < hit_player_obj.x && spr_dir == 1) || (x > hit_player_obj.x && spr_dir == -1)

/*
var vfx = spawn_hit_fx(x + 20*spr_dir*((facing*2)-1), y - 30, 304)
    vfx.depth = -10
*/    
//spawn_base_dust(x, y, "dash_start", spr_dir)

if enemy_hitboxID.type == 2 {
    parry_anim = true
    sound_stop(sound_get("LSword_Metal_Equip"))
    sound_play(sound_get("Lsword_Metal_PutIn_00"))
    sound_play(asset_get("sfx_swipe_medium1"))
} else {
    sound_play(sound_get("Guard_00"))
    sound_play(sound_get("Guard_Metal_Metal_00"))
    //sound_stop(sound_get("LSword_Metal_Equip"))
}

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