//articleplatform_update

if !recall_active timer++
state_timer++

switch state {
    case 0:
    if !recall_active {
        if timer == 3 image_index = 1
        if timer == 6 image_index = 2
        
        if timer >= 20 && hsp != 0 spr_dir = sign(hsp)
        
        if timer >= 4 {
            fake_vsp += 0.05
            if abs(fake_hsp) < 6 && !position_meeting(x, y + 10, asset_get("par_block")) {
                fake_hsp = lerp(fake_hsp, spr_dir*6, 0.03)
            }
            //fake_hsp -= sign(hsp)*0.05
        }
        if timer >= 232 {
            image_index = 0
        }
        if timer >= 240 {
            die = true
            sound_play(sound_get("SpObj_Disappear_short"))
        }
        var has_landed = false
        if position_meeting(x, y + 10, asset_get("par_block")) {
            if fake_vsp > 0.05 {
                has_landed = true
            }
            fake_hsp *= 0.95
            fake_vsp = 0
        } else if position_meeting(x + spr_dir*30, y, asset_get("par_block")) {
            if fake_vsp > 0.05 {
                has_landed = true
            }
            fake_hsp = 0
            fake_vsp = 0
        }
        
        if has_landed {
            sound_play(sound_get("botw_shield_wood"))
            spawn_base_dust(x, y + 10, "land", spr_dir)
        }
        
        if is_ascend_plat > 0 {
            is_ascend_plat--
            fake_hsp = 0
            fake_vsp = 0
        }
        
        spawn_wing_hitbox()
        
        hsp = round(fake_hsp)
        vsp = round(fake_vsp)
        

        
        
        if hsp == 0 && vsp == 0 && is_ascend_plat == 0 {
            still_timer++
        } else {
            still_timer = 0
        }
        if still_timer >= 34 {
            image_index = 0
        }
        if still_timer >= 40 {
            die = true
            sound_play(sound_get("SpObj_Disappear_short"))
        }
    }
    
    //recall
    script = 1
    user_event(0)
    
    break;
    
    case 9: //fuse state
    if !player_id.state_attacking {
        state = 0
        exit;
    }
    //image_index = 1
    if state_timer == 1 {
        if recall_active {
            sound_play(sound_get("stasis_end_weak"))
            sound_stop(sound_get("timer_tick"))
        }
        recall_active = false
        sound_play(sound_get("fuse"))
        //sound_play(sound_get("magnesis_hit"))
    }
    if state_timer <= 6 {
        fake_hsp = 0
        fake_vsp = 0
        travel_spd = 0
    } else {
        if player_id.attack == AT_FSTRONG {
            var dir = point_direction(x, y, player_id.x + 40*player_id.spr_dir, player_id.y - 20)
            var dist = point_distance(x, y, player_id.x + 10*player_id.spr_dir, player_id.y - 20)
            if dist <= 50 {
                die = true
                sound_play(sound_get("magnesis_release"))
                sound_play(sound_get("ScraBuild_Cling_00_short"), false, noone, 0.7)
                with player_id {
                    //fuse_overlay = true
                    fuse_item_trident = 1 //wing
                    fuse_item_hp_trident = 3
                    fuse_item_timer = 0
                    fuse_overlay_timer = 20
                    fuse_overlay_sprite = sprite_get("fstrong_wing_overlay")
                }
            }
        }
        if player_id.attack == AT_FTILT {
            var dir = point_direction(x, y, player_id.x + 40*player_id.spr_dir, player_id.y - 20)
            var dist = point_distance(x, y, player_id.x + 10*player_id.spr_dir, player_id.y - 20)
            if dist <= 50 {
                die = true
                sound_play(sound_get("magnesis_release"))
                sound_play(sound_get("ScraBuild_Cling_00_short"), false, noone, 0.7)
                with player_id {
                    //fuse_overlay = true
                    fuse_item_shield = 1 //wing
                    fuse_item_hp_shield = 3
                    fuse_item_timer = 0
                    //fuse_overlay_timer = 20
                    //fuse_overlay_sprite = sprite_get("ftilt_wing_overlay")
                        
                    window = 4
                    window_timer = 0
                }
            }
        }
        
        travel_spd = clamp(travel_spd + 1, 0, 16)
        
        fake_hsp = travel_spd*dcos(dir)
        fake_vsp = -travel_spd*dsin(dir)
        
        spawn_wing_hitbox()
    }
    
    
    hsp = round(fake_hsp)
    vsp = round(fake_vsp)
    break;
}

if die {
    //if state != 9 spawn_hit_fx(x, y, vfx_energy)
    if state != 9 with player_id spawn_hit_fx(other.x, other.y, vfx_energy)
    //sound_play(sound_get("SpObj_Disappear_short"))
    instance_destroy()
    exit;
}

#define spawn_wing_hitbox()
if abs(fake_hsp) >= 5 && free {
    if wing_hitbox == undefined {
        wing_hitbox = create_hitbox(AT_USPECIAL, 1, x, y + 10)
        wing_hitbox.owner = id
    }
    image_index = 3
} else {
    if wing_hitbox != undefined && instance_exists(wing_hitbox) {
        instance_destroy(wing_hitbox)
        wing_hitbox = undefined
    }
    image_index = 2
}
return;

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