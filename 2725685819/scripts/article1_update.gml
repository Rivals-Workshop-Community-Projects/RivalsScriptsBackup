jc_hitpoints = (jc_hitpoints < 0) ? 0 : jc_hitpoints;


can_be_hit[player_id.player] = 2;

image_index += 0.40;
if (jc_hitstop == 0){

        if (!jc_buff && !jc_fspec_buff && !jc_ewgf)
        hsp = 0.25 * spr_dir;






        if (!set_lifetime)
        {
            sound_play(sound_get("slicel"));
            sound_play(sound_get("bladehadou"));
            if !jc_buff
            lifetime = 60*5;
            else if (jc_buff || jc_fspec_buff || jc_ewgf){
            lifetime = 16;
            hit_limit = 4;
            }
            set_lifetime = true;
        }


        if (hitbox_delay > 0){
        hitbox_delay--;

            if (hitbox_delay == 0){
                if (!jc_buff){
                    
                    nspec_hitbox = create_hitbox( AT_NSPECIAL, 1, x + (10 * spr_dir), y );
                    nspec_hitbox.player = current_owner.player;
                    nspec_hitbox.spr_dir = spr_dir;

                    if (current_owner != player_id){
                        nspec_hitbox.hit_effect = 301;
                    }

                    
                }
                else if (jc_buff){
                    
                    if (!jc_fspec_buff && !jc_ewgf){
                    var buff_hbox = create_hitbox( AT_NSPECIAL, 2, x + (10 * spr_dir), y );

                    if (jc_buff_loops % 2 == 0)
                    buff_hbox.spr_dir = -buff_hbox.spr_dir;

                    jc_buff_loops++;
                    }
                            
                    else if (jc_fspec_buff){
                    fspec_hitbox = create_hitbox( AT_NSPECIAL, 3, x + (10 * spr_dir), y );
                    fspec_hitbox.spr_dir = spr_dir;
                    fspec_hitbox.player = current_owner.player;
                        
                    if (jc_buff_loops % 2 == 0)
                    fspec_hitbox.spr_dir = -fspec_hitbox.spr_dir;

                    jc_buff_loops++;

                    }
                    else if (jc_ewgf){
                
                    ewgf_hitbox = create_hitbox( AT_NSPECIAL, 4, x + (10 * spr_dir), y );
                    ewgf_hitbox.spr_dir = spr_dir;
                    ewgf_hitbox.player = current_owner.player;
                        
                    if (jc_buff_loops % 2 == 0)
                    ewgf_hitbox.spr_dir = -ewgf_hitbox.spr_dir;

                    jc_buff_loops++;
                
                    }
                
                }
                
                sound_play(sound_get("slicel"), false, noone, 0.5);
            }
            
            
        }

        else{
        if (!jc_buff)
        hitbox_delay = 10;
        else if (jc_fspec_buff || jc_buff || jc_ewgf)
        hitbox_delay = 4;

        }


            // var my_player = current_owner;
            // with(pHitBox){
                
            //     if place_meeting( x, y, other.id ) && (!other.jc_buff){
            //         if (player != my_player) && (id != other.nspec_hitbox) && get_player_team( my_player ) != get_player_team( player ){
                        
            //             if ("trick_stack" in player_id)
            //             player_id.trick_stack -= 1;
                        
                        
            //         	sound_play(asset_get("sfx_clairen_swing_med"),0,0,0.5, 1);
        				// sound_play(asset_get("sfx_ori_energyhit_heavy"),0,0,0.5,2);
        				// sound_play(asset_get("sfx_ori_charged_flame_release"),0,0,0.3, 1.25);
            //             shake_camera( 4, 3 );
            //             //trade with blade storm                
            //             if (!transcendent && (other.jc_buff || other.jc_fspec_buff))
            //             destroyed = true;
            //         }
            //     }
            // }




        if (player_id.jc_hit){
            
            hit_limit--;
            player_id.jc_hit = false;

        }

        player_id.move_cooldown[AT_NSPECIAL] = 90;

        if (lifetime <= 0 || hit_limit <= 0 || jc_hitpoints == 0){
        
         if (jc_hitpoints == 0)
         player_id.move_cooldown[AT_NSPECIAL] = 200;

        spawn_hit_fx( x, y, jc_dest_vfx );
        instance_destroy(self);
        }
        else{
        lifetime--;}

}else{
    hsp = 0;
    jc_hitstop--;
}

//sound_play(asset_get("sfx_clairen_dspecial_counter_active"));