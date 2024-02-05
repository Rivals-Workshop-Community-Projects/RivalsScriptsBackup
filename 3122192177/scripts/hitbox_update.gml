//

if(attack == AT_NSPECIAL){
    switch(hbox_num){
    case 1:
        if(hitbox_timer == 32){
        	image_xscale = 0;
        	image_yscale = 0;            
        }       if(hitbox_timer > 31){
            hsp *= 0.9;
        }if(hitbox_timer == 39){
            spawn_hit_fx(x+20*spr_dir, y, player_id.holy_impact); 
        }
        break;
    
    case 2:
    if(hitbox_timer == 18){
        image_index = 0;
    }
        if(hitbox_timer == 31){
        	image_xscale = 0;
        	image_yscale = 0;            
        }       if(hitbox_timer > 30){
            hsp *= 0.9;
        }if(hitbox_timer == 39){
            spawn_hit_fx(x+20*spr_dir, y, player_id.holy_big_impact); 
        }
        break;
        
    case 3:
        if(hitbox_timer == 19){
        	image_xscale = 0;
        	image_yscale = 0;            
        }       if(hitbox_timer > 18){
            hsp *= 0.9;
        }
    break;
    
    case 4:
        if(hitbox_timer == 16){
        	image_xscale = 0;
        	image_yscale = 0;            
        }       if(hitbox_timer > 15){
            hsp *= 0.9;
        }
        break;    
        
    case 7:
        if(hitbox_timer == 32 || hitbox_timer == 64){
        image_index = 0;
    }
        if(hitbox_timer == 96){
        	image_xscale = 0;
        	image_yscale = 0;            
        }       if(hitbox_timer > 95){
            hsp *= 0.9;
        }if(hitbox_timer == 104){
            if (!was_parried){ sound_play(sound_get("gravity_erupt")); }
            else{ sound_play(asset_get("sfx_ell_steam_hit")); }
            spawn_hit_fx(x+20*spr_dir, y, player_id.gravity_impact); 
        }
        break;   
        
    case 8:
        if(hitbox_timer == 24 || hitbox_timer == 48 || hitbox_timer == 72){
        image_index = 0;
    }
        if(hitbox_timer == 88){
        	image_xscale = 0;
        	image_yscale = 0;            
        }       if(hitbox_timer > 87){
            hsp *= 0.9;
        }if(hitbox_timer == 96){
            if (!was_parried){ sound_play(sound_get("gravity_bigerupt")); }
            else{ sound_play(asset_get("sfx_ell_steam_hit")); }
            spawn_hit_fx(x, y, player_id.gravity_big_impact); 
        }
        break; 
    }
}

if(attack == AT_FSPECIAL){
    if(hbox_num = 1){
        if(hitbox_timer == 44){
           //spawn_hit_fx(x, y, player_id.ftilt_effect); 
           sound_play(sound_get("se_zelda_special_L01"));
           sound_play(asset_get("sfx_ori_uptilt_single"));
        }if(hitbox_timer % 5 == 0){
           spawn_hit_fx(x, y-10, player_id.magicpetal);  
        }
    }
    //activate projectile
    if(player_id.activate_fspecial && hitbox_timer < 44){
        hitbox_timer = 43;
    }
    if(hitbox_timer == 44){
        player_id.materia_field = instance_create(x, y-8, ("obj_article1"));
    }
}

if(attack == AT_DSPECIAL){
    if(hbox_num = 4){ 
        if(vsp == 0 && !free){
            if (!was_parried){ sound_play(sound_get("break_shatter")); }
            else{ sound_play(asset_get("sfx_blow_heavy2")); }
    	spawn_hit_fx(x, y, player_id.break_vfx);   
    	destroyed = true;
        }
    }
}

if(attack == AT_EXTRA_1){
    if(hbox_num = 1){
        switch(hitbox_timer){
        case 5:
        sound_play(asset_get("sfx_waveland_zet"));
        break;
        
        case 36:
        sound_play(sound_get("SE_OKIRU"));
        break;
        
        case 63:
        sound_play(sound_get("SE_HELPER_NG"));
        break;
        
        case 118:
        sound_play(asset_get("sfx_jumpground"));
        break;
        }
    }
}

if(attack == AT_EXTRA_2){
    if(hbox_num = 1){
        print(hitbox_timer);
        switch(hitbox_timer){
        case 5:
        sound_play(asset_get("sfx_waveland_zet"));
        break;
        
        case 61:
        sound_play(asset_get("sfx_jumpground"));
        break;
        }
    }
}

if(attack == AT_EXTRA_3){
    if(hbox_num = 1){
        print(hitbox_timer);
        switch(hitbox_timer){
        case 5:
        sound_play(asset_get("sfx_waveland_zet"));
        break;
        
        case 137:
        sound_play(asset_get("sfx_jumpground"));
        break;
        }
    }
}

if(attack == AT_DSPECIAL){
    if(hbox_num == 11){
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
    
    if(hitbox_timer == length-1){
        sound_play(asset_get("sfx_bubblepop"), false, noone, 0.5, bubpop_pitch);
        spawn_hit_fx(x, y, player_id.bubblepop);
        }
    }
    
}