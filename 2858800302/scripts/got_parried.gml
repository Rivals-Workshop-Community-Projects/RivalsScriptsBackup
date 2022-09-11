if (my_hitboxID.attack == AT_DATTACK){
    if (my_hitboxID.hbox_num == 2){
        my_hitboxID.destroyed = true;
    }
}

if (my_hitboxID.attack == AT_USTRONG){
    if (my_hitboxID.hbox_num == 2){
        my_hitboxID.destroyed = true;
    }
}

/*
if (my_hitboxID.attack != AT_JAB){
    fspecial_charge -= 50;
    if (fspecial_charge < 0){
        fspecial_charge = 0;
    }
    should_attack = false;
    should_cancel = false;
    
        if (fspecial_charge < time_between_levels){
            if (fspec_hsp != level_1_hsp){
               sound_play(sound_get("charge1"));
               spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
            }
            fspec_hsp = level_1_hsp; 
        }
        else if (fspecial_charge >= time_between_levels && fspecial_charge < time_between_levels*2){
            if (fspec_hsp != level_2_hsp){
                sound_stop(sound_get("charge1"));
                sound_play(sound_get("charge2"));
                spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
            }
            fspec_hsp = level_2_hsp;
        }
        else if (fspecial_charge >= time_between_levels*2 && fspecial_charge < time_between_levels*3){
            if (fspec_hsp != level_3_hsp){
                sound_stop(sound_get("charge2"));
                sound_play(sound_get("charge3"));
                spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
            }
            fspec_hsp = level_3_hsp; 
        }
        else if (fspecial_charge >= time_between_levels*3 && fspecial_charge < time_between_levels*4){
            if (fspec_hsp != level_4_hsp){
                sound_stop(sound_get("charge3"));
                sound_play(sound_get("charge4"));
                spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
            }
            fspec_hsp = level_4_hsp; 
        }
        else if (fspecial_charge > time_between_levels*4){
            if (fspec_hsp != level_5_hsp){
                sound_stop(sound_get("charge4"));
                sound_play(sound_get("charge5"));
                sound_play(asset_get("sfx_ori_bash_projectile"));
                spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
                
            }
            fspec_hsp = level_5_hsp; 
            auto_cancel = true;
        }
}
*/

if (my_hitboxID.attack == AT_NSPECIAL){
    if (my_hitboxID.hbox_num == 1){
        my_hitboxID.hsp = 18*spr_dir;
        my_hitboxID.damage += round(flower_crown_effect_length/time_between_damage);
        my_hitboxID.hitbox_timer = 0;
    }
}

with(asset_get("obj_article1")){
    if (player_id == other.id){
        destroy_self = true;
    }
}

if (hit_player_obj.flower_crowned == true && hit_player_obj.flower_crown_id == id && my_hitboxID.attack != AT_JAB){
    hit_player_obj.flower_crowned = false;
    hit_player_obj.flower_crown_id = 0;
    hit_player_obj.flower_crown_timer = 0;
}