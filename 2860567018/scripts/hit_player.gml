if(my_hitboxID.attack == AT_FAIR){
    old_vsp-= 0.75;
}


switch(my_hitboxID.attack){
    case AT_BAIR:
    //spawn_hit_fx(floor(x+ (hit_player_obj.x-x)/1.5), floor(y+(hit_player_obj.y-y)/2)-32, 301);
    sound_play(asset_get("sfx_icehit_weak1"), false, noone, .6, .85)
    //sound_play(asset_get("sfx_ice_end"), false, noone, .6, 1.1)
    //sound_play(asset_get("sfx_ice_fspecial_hit_ground"), false, noone, .3, 1)
    sound_play(asset_get("sfx_blow_heavy1"), false, noone, .5, 1)
    break;
    case AT_DAIR:
        if(my_hitboxID.hbox_num == 1)
            sound_play(asset_get("sfx_icehit_heavy1"), false, noone, .7, 1.1)
    case AT_FAIR:
    
    
    case AT_FSTRONG:
        sound_play(asset_get("sfx_ice_end"), false, noone, .5, 1.4)
    case AT_DSTRONG:
        sound_play(asset_get("sfx_icehit_weak1"), false, noone, .5, 1.4)
        sound_play(asset_get("sfx_ice_fspecial_hit_ground"), false, noone, .3, 1)
    break;
    case AT_UAIR:
        sound_play(asset_get("sfx_ice_burst_up"), false, noone, .3, 1.2)
        sound_play(asset_get("sfx_icehit_weak1"), false, noone, .35, 1.1)
        break;
    case AT_TAUNT:
        hit_player_obj.spr_dir*=-1;
        hit_player_obj.hsp = -1.2*hit_player_obj.hsp+hit_player_obj.spr_dir*4;
        break;
    case AT_FSPECIAL:
        if(fspec_misfire){
            spawn_hit_fx(my_hitboxID.x+spr_dir*20, my_hitboxID.y, 304);
        } else {
            spawn_hit_fx(my_hitboxID.x+spr_dir*20, my_hitboxID.y, 301);
        }
        break;
    case AT_EXTRA_1:
        sound_play(asset_get("sfx_blow_heavy1"), false, noone, .6, 1.2);
        break;
    case AT_NSPECIAL:
        if(my_hitboxID.hbox_num == 1){
            spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, hfx_egg);
            sound_play(asset_get("sfx_mol_spark_explode2"), false, false, 1, 1)
            var hb = create_hitbox(AT_NSPECIAL, 2, my_hitboxID.x, my_hitboxID.y);
            hb.player = my_hitboxID.player;
            hb.spr_dir = my_hitboxID.spr_dir;
            if(my_hitboxID.spr_dir == 1){
                if(my_hitboxID.hsp < 0){
                    hb.kb_angle = 140;
                } else if (my_hitboxID.hsp == 0){
                    hb.hit_flipper = 3;
                }
            } else {
                if(my_hitboxID.hsp > 0){
                    hb.kb_angle = 140;
                } else if (my_hitboxID.hsp == 0){
                    hb.hit_flipper = 3;
                }
            }
            destroyed = true;
        } else {
                        sound_play(asset_get("sfx_blow_heavy1"), false, false, .5, 1.1)
            sound_play(asset_get("sfx_ice_shatter"), false, false, .6, 1)
        }

    
}

