if attack == AT_NSPECIAL && hbox_num < 3 {
    uses_shader = false;
    
    //Oscillation
    
    vsp = sin(hitbox_timer * .1);
    
    
    //Bomb Explosion
    if hbox_num == 2
    {
        if hitbox_timer == (length - 1) || was_parried
        {
            spawn_hit_fx(x, y, player_id.hfx_nspecial_explode);
        }
    }

    
    //On-Hit Shenanigans
    
    //Grab Bubble
    if place_meeting(x,y,pHitBox) && pHitBox != self{
        
        var other_hitbox_player = pHitBox.player_id;
        
        //Make Things Happen
        spawn_hit_fx(x,y,pHitBox.hit_effect);
        sound_play(pHitBox.sound_effect);
        
        if pHitBox.type == 1{
                
            other_hitbox_player.old_hsp = other_hitbox_player.hsp;
            other_hitbox_player.old_vsp = other_hitbox_player.vsp;
            
            other_hitbox_player.hitpause = true;
            other_hitbox_player.hitstop = pHitBox.hitpause;
            
        }
        
        //Grab the Bubble
        if pHitBox.attack == AT_DSPECIAL
        && other_hitbox_player == player_id
        && player_id.grabbed_player_obj == noone{
            
            //Make Player Pull
            with(player_id){
                destroy_hitboxes();
                set_attack( AT_DSPECIAL_AIR );
                dspec_proj_type = other.hbox_num;
            }
            
            instance_destroy();
            exit;
        }
        
        //Don't Grab the Bubble
        else{

            other_hitbox_player.has_hit = true;
            
            if (hbox_num == 2) spawn_hit_fx(x, y, player_id.hfx_nspecial_explode)
            if (hbox_num < 3) destroyed = true;
            
            if pHitBox.attack == AT_DAIR && pHitBox.player == player_id.player
            {
                if (hbox_num == 1) player_id.old_vsp = -8;
                if (hbox_num == 2) player_id.old_vsp = -12;
                player_id.hitstop /= 2;
            }
            
        }
        
    }
    
}

//Hydrodynamic Spatula
if attack == AT_USPECIAL && hbox_num == 9
{
    vsp *= 1.02;
    hsp *= .98;
    
    if(hitbox_timer%12 == 11) {
        for(var i = 0; i < array_length(can_hit); i++){
            can_hit[i] = true;
        }
    }
    
    if (y <= get_stage_data(SD_TOP_BLASTZONE_Y))
    destroyed = true;
}

//Cruise Bubble Acceleration
if attack == AT_DSPECIAL_AIR && hbox_num == 2{
    hsp += 0.3*spr_dir;
    
    //Bomb Explosion
    if hitbox_timer == (length - 1) || was_parried
    {
        spawn_hit_fx(x, y, player_id.hfx_nspecial_explode);
    }
}