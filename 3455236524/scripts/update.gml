//
if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
    move_cooldown[AT_DSPECIAL] = 0;
    move_cooldown[AT_FSPECIAL_AIR] = 0;
}

var intro_time = get_gameplay_time()-12;
if intro_time == 1 sound_play(asset_get("sfx_ori_stomp_spin"),false,noone,.8,1.1);
if intro_time == 20{
    sound_play(asset_get("sfx_land"))
    spawn_base_dust(x, y, "land", spr_dir)
}
if intro_time == 50 sound_play(asset_get("mfx_star"),false,noone,1.2,1.1)

///Supersonic's Colored Hitbox code
//Put this above all the #defines in your script
prep_hitboxes();

//Put this at the very bottom of the script, with the rest of your #defines.
#define prep_hitboxes
//Applies the hitbox sprites and prepares them to be drawn (with color!)
with (pHitBox) if orig_player_id == other && orig_player == other.player {
    if ("col" not in self && "dont_color" not in self) {
        with other {
            other.col = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_COLOR);
            if other.col == 0 other.col = c_red;
            other.shape = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE)
            other.draw_colored = true;
            if other.type == 1
                other.sprite_index = __hb_hd_spr[other.shape];
            else if get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_MASK) == -1
                other.mask_index = __hb_hd_spr[other.shape];
            else 
                other.draw_colored = false;
            other.draw_spr = __hb_draw_spr;
        }
    }
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