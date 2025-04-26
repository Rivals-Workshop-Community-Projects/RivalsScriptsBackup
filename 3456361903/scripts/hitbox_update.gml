//hitbox update, FOR PROJECTILES ONLY
switch (attack){
    case AT_JAB:
    
        if hitbox_timer == 12 {
            
                destroyed = true;
        }
        
    break;
    
    case AT_FSPECIAL:
        if (hbox_num == 1)
        {
            //sine wave
            var noteFreq = 20
            var noteAmp = 1.8
            vsp = dsin(hitbox_timer  * noteFreq ) * noteAmp
        
            if (hitbox_timer == 30 || (place_meeting(x + (16 * spr_dir), y, asset_get("par_block")))) {
               destroyed = true;
            }
        
            
            if (destroyed) {
                instance_create(x, y, "obj_article2");
                spawn_hit_fx(x, y, player_id.vfx_notemorph_b)
                spawn_hit_fx(x, y, player_id.vfx_notemorph_f)
                sound_play(sound_get("smb3_transformation"))
            }
            
        }
        
    break;
    
    //dodge log
    case AT_EXTRA_2:
        if ((player_id.state == PS_ROLL_FORWARD or player_id.state == PS_ROLL_BACKWARD or player_id.state == PS_AIR_DODGE) && player_id.state_timer == 1 ) {
            destroyed = true
            spawn_hit_fx(x, y, HFX_SYL_WOOD_SMALL)
        }
    
        if (hitbox_timer == 1) {
            lbounced = false;
            player_id.log_angle = 10   
        }
        if (place_meeting(x, y, asset_get("par_block")) and !lbounced) {
               vsp = -7;
               hsp = 0.5*spr_dir;
               sound_play(sound_get("kotsuzumi"), false, noone, 0.4, 1);
               lbounced = true;
            }
            
        if (hitbox_timer > 1) {
            if (lbounced) {
                if (hitbox_timer % 2 == 1) player_id.log_angle-= 20   
            } else {
                if (hitbox_timer % 4 == 1) player_id.log_angle+= 3 
            }
        }
        
    break;
}
