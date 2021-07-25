if(attack == AT_NSPECIAL){
    fall_through = 300;
    
    
    if(!free){
        if player_id.runeO{
            create_hitbox(AT_DTILT, 2, x, y);
        }
        
        destroyed = true;
    }
    
    if player_id.runeB{
        effect = 1;
    }
}
if(attack == AT_NSPECIAL_SHOT){
    if(length - hitbox_timer == 1){
        spawn_hit_fx(x, y, 251);
    }
    
    if(player_id.runeD){
        length = 120;
    }
    
    fall_through = true;
    if(!free){
        destroyed = true;
    }
}

if(attack == AT_DTILT and hbox_num == 2){
    if(hitbox_timer > 2 and free){
        destroyed = true;
    }
}

if(attack == AT_DTILT){
    if(player_id.runeC){
        effect = 10;
    }
}

if(attack == AT_NSPECIAL_SNIPE){
    fall_through = true;
    if(!free){
        destroyed = true;
    }
    proj_angle = player_id.bash_angle;
    
}

 if(attack == AT_NSPECIAL_SHELL and hbox_num > 1){
      if(hitbox_timer > 10){
          player = 0;
      }
    
  }

if(attack == AT_NSPECIAL_WIND){
    // fall_through = true;
    // if(!free){
    //     destroyed = true;
    // }
    
    if(player_id.runeD){
        length = 120;
    }
    
    
    if(hitbox_timer == 1){
        proj_angle = player_id.bash_angle;
    }

    
}

if(attack == AT_NSPECIAL_GRENADE){
    if(hbox_num == 1){
        if(hitbox_timer == 179){
        sound_play(asset_get("sfx_ell_explosion_medium"));
        spawn_hit_fx(x, y, 143);
        var explod = create_hitbox(AT_NSPECIAL_GRENADE, 2, x, y);
        explod.player = 0;
    }
    }
    
    
    
}

// if(attack == AT_FSPECIAL){
//     if(hbox_num == 3){
        
//     }
// }

// if(attack == AT_FSTRONG){
//     var proj = instance_place(x+10*spr_dir, y+20, asset_get("pHitBox"));
    
//     if(proj != noone){
//         if(proj.type == 2 and proj.player != player_id){
//             proj.player = player_id;
//             proj.hsp *= 1.2*player_id.spr_dir;
            
//         }
        
        
//     }
    
    
// }

