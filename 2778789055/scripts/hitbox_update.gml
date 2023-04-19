//
if(attack == AT_FTILT){
    if(hbox_num = 2){
        if(hitbox_timer == 9){
           //spawn_hit_fx(x, y, 6); 
           //sound_play(asset_get("sfx_waterhit_weak"));
           image_xscale = 0;
           image_yscale = 0;
           transcendent = true;
           air_friction = 2;
        }
    }
}
if (attack == AT_UTILT){
    if(hbox_num == 4){
    if (hitstop > 0){
        hitstop--;
        if (hitstop == 0) in_hitpause = false;
    } else {
        proj_angle += 2 * spr_dir;
    	}
    }    if(hbox_num == 5){
    if (hitstop > 0){
        hitstop--;
        if (hitstop == 0) in_hitpause = false;
    } else {
        proj_angle += 2 * -spr_dir;
    	}
    }
}

if(attack == AT_USPECIAL){
    snd_rng = random_func(0, 8, true);
    if (snd_rng == 0) {
        bubpop_pitch = 1;
    }if (snd_rng == 1) {
        bubpop_pitch = 0.8;
    }if (snd_rng == 2) {
        bubpop_pitch = 0.9;
    }if (snd_rng == 3) {
        bubpop_pitch = 1.1;
    }if (snd_rng == 4) {
        bubpop_pitch = 1.2;
    }if (snd_rng == 5) {
        bubpop_pitch = 1.3;
    }if (snd_rng == 6) {
        bubpop_pitch = 0.7;
    }if (snd_rng == 7) {
        bubpop_pitch = 1.4;
    }
    
    //important! revert back to old hitbox timers
    if(hbox_num == 1){
    if(hitbox_timer == 24){
        sound_play(asset_get("sfx_bubblepop"), false, noone, 0.5, bubpop_pitch);
        spawn_hit_fx(x, y, player_id.bubblepop);
        }
    }    
    
    if(hbox_num == 2){
    if(hitbox_timer == 14){
        sound_play(asset_get("sfx_bubblepop"), false, noone, 0.5, bubpop_pitch);
        spawn_hit_fx(x, y, player_id.bubblepop);
        }
    }    
    
    if(hbox_num == 3){
    if(hitbox_timer == 24){
        sound_play(asset_get("sfx_bubblepop"), false, noone, 0.5, bubpop_pitch);
        spawn_hit_fx(x, y, player_id.bubblepop);
        }
    }    
    
    if(hbox_num == 4){
    if(hitbox_timer == 19){
        sound_play(asset_get("sfx_bubblepop"), false, noone, 0.5, bubpop_pitch);
        spawn_hit_fx(x, y, player_id.bubblepop);
        }
    }
    
}

if(attack == AT_FSPECIAL){
    if(hbox_num = 1){
        if(hitbox_timer == 59){
           spawn_hit_fx(x, y, 6); 
           sound_play(asset_get("sfx_waterhit_weak"));
        }
    }
}

if (attack == AT_FSPECIAL_2){
    if(hbox_num == 1){
        if(hitbox_timer == 29){
           spawn_hit_fx(x, y, 6); 
           sound_play(asset_get("sfx_waterhit_weak"));
        }
    if (hitstop > 0){
        hitstop--;
        if (hitstop == 0) in_hitpause = false;
    } else {
        proj_angle += 2 * -spr_dir;
    	}
    }    if(hbox_num == 2){
        if(hitbox_timer == 39){
           spawn_hit_fx(x, y, 3); 
           sound_play(asset_get("sfx_ell_steam_hit"));
        }
    if (hitstop > 0){
        hitstop--;
        if (hitstop == 0) in_hitpause = false;
    } else {
        proj_angle += 2 * spr_dir;
    	}
    }if(hbox_num == 3){
        if(hitbox_timer == 34){
           var hitfx = spawn_hit_fx(x, y, 301); 
           hitfx.pause = 10;
           sound_play(asset_get("sfx_blow_weak1"));
        }
    if (hitstop > 0){
        hitstop--;
        if (hitstop == 0) in_hitpause = false;
    } else {
        proj_angle += 5 * -spr_dir;
    	}
    }
}

if(attack == AT_USTRONG){
    if(hbox_num = 3){
        if(hitbox_timer == 24){
           spawn_hit_fx(x, y, 6); 
           sound_play(asset_get("sfx_waterhit_weak"));
        }
    }
}

if(attack == AT_EXTRA_2){
        if(hitbox_timer = length){
        player_id.pumbo_pot_ID.pot_hitbox = 0;
        }if(destroyed = true){
        player_id.pumbo_pot_ID.pot_hitbox = 0;    
        }
}

if(attack == AT_FSTRONG){
        if(hbox_num = 4){
            hsp *= .97;
         if(free){
             hsp = 0;
             vsp = 0;
           spawn_hit_fx(x, y, 6); 
           sound_play(asset_get("sfx_waterhit_weak"));
           destroyed = true;
         }if(player_id.window == 2){
             hsp = 0;
             vsp = 0;
         }if(player_id.state != PS_ATTACK_GROUND){
           spawn_hit_fx(x, y, 6); 
           sound_play(asset_get("sfx_waterhit_weak"));   
           destroyed = true;
         }if(player_id.attack != AT_FSTRONG){
           spawn_hit_fx(x, y, 6); 
           sound_play(asset_get("sfx_waterhit_weak"));   
           destroyed = true;             
         }if(player_id.was_parried){
           spawn_hit_fx(x, y, 6); 
           sound_play(asset_get("sfx_waterhit_weak"));   
           destroyed = true;              
         }
         
         if(player_id.window != 1){
             if (place_meeting(x, y, player_id)){
           spawn_hit_fx(x, y, 6); 
           sound_play(asset_get("sfx_waterhit_weak"));
           destroyed = true;                 
             }             
         }else{
             if(!free && hsp = 0){
           spawn_hit_fx(x, y, 6); 
           sound_play(asset_get("sfx_waterhit_weak"));
           destroyed = true;                   
             }
         }
        }
}

if(attack == AT_EXTRA_2){
    if(hbox_num = 1){
        if(instance_exists(player_id.pumbo_pot_ID)){
        if(player_id.pumbo_pot_ID.pot_hitbox_active = false){
            destroyed = true;
        }
        }
    }
}