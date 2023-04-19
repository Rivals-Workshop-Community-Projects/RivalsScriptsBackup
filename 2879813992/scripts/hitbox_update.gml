//
if(attack == AT_FTILT){
    if(hbox_num = 2){
        if(hitbox_timer == 29){
           spawn_hit_fx(x, y, player_id.ftilt_effect); 
           sound_play(sound_get("se_ness_pk_s"));
        }if(hitbox_timer % 4 == 0){
           spawn_hit_fx(x, y-10, player_id.magicpetal);  
        }
    }
    
    //projectile vsp behavior
    if(hitbox_timer < 3){
        vsp = 0;
    }    if(hitbox_timer >= 3 and hitbox_timer < 6){
        vsp = -3;
    }if(hitbox_timer >= 6 and hitbox_timer < 9){
        vsp = 0;
    }if(hitbox_timer >= 9 and hitbox_timer < 15){
        vsp = 3;
    }if(hitbox_timer >= 15 and hitbox_timer < 20){
        vsp = 0;
    }if(hitbox_timer >= 20 and hitbox_timer < 25){
        vsp = -3;
    }if(hitbox_timer >= 25){
        vsp = 0;
    }
}

if(attack == AT_NSPECIAL){
    if(hbox_num = 1){
        if(hitbox_timer == 44){
           spawn_hit_fx(x, y, player_id.ftilt_effect); 
           sound_play(sound_get("se_zelda_special_L01"));
           sound_play(asset_get("sfx_ori_uptilt_single"));
        }if(hitbox_timer % 5 == 0){
           spawn_hit_fx(x, y-10, player_id.magicpetal);  
        }
    }
    //activate projectile
    if(player_id.activate_nspecial && hitbox_timer < 44){
        hitbox_timer = 43;
    }
    if(hitbox_timer == 44){
        player_id.materia_field = instance_create(x, y-8, ("obj_article1"));
    }
}

if(attack == AT_FSPECIAL){
    if(hbox_num = 2){
        if(hitbox_timer == 1){
            y += 20;
            //grounds = 1;
        }if(hitbox_timer == 8){
            hsp = 2.75 * spr_dir
        }if(hitbox_timer == 60){
            hsp = 0 * spr_dir
        }
        
        
    //create hitboxes
    if(hitbox_timer == 8){
        sound_play(sound_get("se_ness_attackair_F01"));
        big_starbit = create_hitbox(AT_FSPECIAL, 3, x, y);
        big_starbit.hsp = hsp;
        big_starbit.spr_dir = spr_dir;
    }    if(hitbox_timer == 18){
        big_starbit = create_hitbox(AT_FSPECIAL, 3, x, y);
        big_starbit.hsp = hsp;
        big_starbit.spr_dir = spr_dir;
    }if(hitbox_timer == 28){
        sound_play(sound_get("se_ness_attackair_L01"));
        big_starbit = create_hitbox(AT_FSPECIAL, 3, x, y);
        big_starbit.hsp = hsp;
        big_starbit.spr_dir = spr_dir;
    }if(hitbox_timer == 38){
        big_starbit = create_hitbox(AT_FSPECIAL, 3, x, y);
        big_starbit.hsp = hsp;
        big_starbit.spr_dir = spr_dir;
    }if(hitbox_timer == 48){
        sound_play(sound_get("se_ness_attackair_F01"));
        big_starbit = create_hitbox(AT_FSPECIAL, 3, x, y);
        big_starbit.hsp = hsp;
        big_starbit.spr_dir = spr_dir;
    }if(hitbox_timer == 58){
        big_starbit = create_hitbox(AT_FSPECIAL, 3, x, y);
        big_starbit.hsp = hsp;
        big_starbit.spr_dir = spr_dir;
        big_starbit.length = 2;
    }
    
    //explosion
    
    if(hitbox_timer == 66){
        sound_play(asset_get("sfx_mol_spark_explode2"));
        sound_play(sound_get("magic_explode"));
        big_starbit = create_hitbox(AT_FSPECIAL, 4, x, y);
        big_starbit.spr_dir = spr_dir;
    }    if(hitbox_timer == 70){
        sound_play(asset_get("sfx_mol_spark_explode1"));
        big_starbit = create_hitbox(AT_FSPECIAL, 4, x, y);
        big_starbit.spr_dir = spr_dir;
    }    if(hitbox_timer == 74){
        sound_play(asset_get("sfx_mol_spark_explode1"));
        big_starbit = create_hitbox(AT_FSPECIAL, 4, x, y);
        big_starbit.spr_dir = spr_dir;
    }if(hitbox_timer == 78){
        sound_play(asset_get("sfx_mol_spark_explode2"));
        big_starbit = create_hitbox(AT_FSPECIAL, 4, x, y);
        big_starbit.spr_dir = spr_dir;
    }if(hitbox_timer == 82){
        sound_play(asset_get("sfx_mol_spark_explode2"));
        big_starbit = create_hitbox(AT_FSPECIAL, 4, x, y);
        big_starbit.spr_dir = spr_dir;
        big_starbit.extra_hitpause = 10;
    }
    
    if(hitbox_timer == 98){
        sound_play(asset_get("sfx_mol_norm_explode"));
        big_starbit = create_hitbox(AT_FSPECIAL, 5, x, y);
        big_starbit.spr_dir = spr_dir;
    }

    if(player_id.destroy_fspecial){
        big_starbit.destroyed = true;
        hitbox_timer = 129;
    }    
    }
}