//article1_update

switch item {
    case 3:
    //sprite_index = sprite_get("item_bomb")
    sprite_index = asset_get("empty_sprite")
    mask_index = sprite_get("item_bomb_hurt")
    break;
    
    case 4:
    sprite_index = sprite_get("item_rocket")
    mask_index = sprite_get("item_rocket_hurt")
    break;
}

if !recall_active { //all item logic and timers should run only if recall is inactive
    timer++
    if !hitpause state_timer++
    
    switch item {
        case 3: //bomb
        switch state {
            case 0: //idle
            image_index = 1
            if free || position_meeting(x, y + vsp, asset_get("par_block")) {
                vsp += 0.3
                fake_angle -= 2*hsp
            } else if abs(prev_vsp) >= 2 {
                vsp = -prev_vsp/2
                //sound_play(asset_get("sfx_mol_spark_bounce1"))
                sound_play(asset_get("sfx_land_light"))
                spawn_base_dust(x, y + 18, "land", spr_dir)
            }
            hsp *= free ? 0.98 : 0.9
            
            if hitpause {
                sound_play(sound_get("SpObj_TimerBomb_SwitchOn"), false, noone, 0.5)
                state++
                state_timer = 0
            }
            break;
            
            case 1: //primed
            image_index = 1
            if free || position_meeting(x, y + vsp, asset_get("par_block")) {
                vsp += 0.3
                fake_angle -= 2*hsp
            } else if abs(prev_vsp) >= 2 {
                vsp = -prev_vsp/2
                sound_play(asset_get("sfx_land_light"))
                spawn_base_dust(x, y + 18, "land", spr_dir)
            }
            hsp *= free ? 0.98 : 0.9
            
            if state_timer == 1 sound_play(sound_get("SpObj_TimerBomb_SignExplode_First"), false, noone, 0.5)
            if state_timer == 10 sound_play(sound_get("SpObj_TimerBomb_SignExplode_Second"), false, noone, 0.7)
            if state_timer >= 45 {
                image_index = 3
            }
            if state_timer == 60 {
                state++
                state_timer = 0
            }
            break;
            
            case 2: //explode
            can_be_hit = false
            is_hittable = false
            if state_timer == 1 {
                var hbox = create_hitbox(AT_DSPECIAL, 1, x, y)
                hbox.can_hit_self = true
                with player_id spawn_hit_fx(other.x, other.y, vfx_bomb_explosion)
                sound_play(sound_get("SpObj_TimerBomb_Explode"), false, noone, 0.7)
                sound_stop(sound_get("SpObj_TimerBomb_SignExplode_First"))
                sound_stop(sound_get("SpObj_TimerBomb_SwitchOn"))
                instance_destroy()
                exit;
            }
            break;
        }
        break;
        
        case 4: //rocket
        switch state {
            case 0: //idle
            image_index = 1
            if free || position_meeting(x, y + vsp, asset_get("par_block")) {
                vsp += 0.4
            } else if abs(prev_vsp) >= 2 {
                vsp = -prev_vsp/4
                sound_play(asset_get("sfx_land_light"))
                spawn_base_dust(x, y + 18, "land", spr_dir)
            }
            hsp *= free ? 0.98 : 0.9
            
            if hitpause {
                state++
                state_timer = 0
                sound_play(sound_get("SpObjRocket_RadiateEnergyWait"), false, noone, 0.7)
                
                //remove hittability
                is_hittable = false
            }
            break;
            
            case 1: //startup
            image_index = 2 + clamp(floor(state_timer/8), 0, 1)
            vsp *= 0.8
            hsp *= 0.9
            
            //attack_can_hit[player, (attack*10)+hbox_group]
            //print(attack_can_hit[player_id.player, (AT_DSPECIAL*10)+2])
            
            if state_timer == 16 {
                state++
                state_timer = 0
                sound_play(sound_get("SpObjRocket_StopEnergy"), false, noone, 0.7)
                sound_play(sound_get("SpObjRocket_RadiateEnergyMoving"), true, noone, 0.2)
                sound_stop(sound_get("SpObjRocket_RadiateEnergyWait"))
                var hbox = create_hitbox(AT_DSPECIAL, 2, x, y)
                hbox.owner_id = id
            }
            break;
            
            case 2: //moving
            
            image_index = 4 + (floor(state_timer/6) mod 4)
            hsp = 16*spr_dir
            vsp = 0
            
            if state_timer == 120 {
                destroy = true
            }
            break;
        }
        break;
    }
}

//recall stuff
script = 1
user_event(0)

if hitpause && hitstop <= 0 {
    hitpause = false
    hsp = old_hsp
    vsp = old_vsp
    old_hsp = 0
    old_vsp = 0
    hitstop = 0
    hitstop_full = 0
}



//timer destroy
if timer >= 450 {
    die = true
}

if recall_active || destroy {
    sound_stop(sound_get("SpObjRocket_RadiateEnergyMoving"))
}

if destroy {
    /*
    if player_id.move_cooldown[AT_NSPECIAL_2] == 0 {
        player_id.move_cooldown[AT_NSPECIAL_2] = 60
    }
    */
    with player_id spawn_hit_fx(other.x, other.y, 301)
    sound_play(sound_get("SpObj_Disappear_short"))
    sound_stop(sound_get("SpObjRocket_RadiateEnergyMoving"))
    instance_destroy();
    exit;
}

prev_vsp = vsp
is_ascend_plat = false

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