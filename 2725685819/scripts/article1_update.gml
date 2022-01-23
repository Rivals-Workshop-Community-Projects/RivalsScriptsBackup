image_index += 0.40;

if (!jc_buff)
hsp = 0.5 * spr_dir;



if (!set_lifetime)
{
    sound_play(sound_get("slicel"));
    sound_play(sound_get("bladehadou"));
    if !jc_buff
    lifetime = 60*5;
    else if (jc_buff || jc_fspec_buff){
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
            nspec_hitbox.player = current_owner;
            nspec_hitbox.spr_dir = spr_dir;
        }
        else if (jc_buff){
            
            if (!jc_fspec_buff){
            create_hitbox( AT_NSPECIAL, 2, x + (10 * spr_dir), y );
            }
                    
            else if (jc_fspec_buff){
            fspec_hitbox = create_hitbox( AT_NSPECIAL, 3, x + (10 * spr_dir), y );
            fspec_hitbox.spr_dir = spr_dir;
            fspec_hitbox.player = current_owner;
                
            }
        
        }
        
        sound_play(sound_get("slicel"), false, noone, 0.5);
    }
    
    
}

else{
if (!jc_buff)
hitbox_delay = 10;
else if (jc_fspec_buff || jc_buff)
hitbox_delay = 4;

}


    var my_player = player_id.player
    with(pHitBox){
        
        if place_meeting( x, y, other.id ) && (!other.jc_buff){
            if (player != my_player) && (id != other.nspec_hitbox) && get_player_team( my_player ) != get_player_team( player ){
                
                player_id.trick_stack -= 1;
                
                other.lifetime = 0;
                
                
            	sound_play(asset_get("sfx_clairen_swing_med"),0,0,0.5, 1);
				sound_play(asset_get("sfx_ori_energyhit_heavy"),0,0,0.5,2);
				sound_play(asset_get("sfx_ori_charged_flame_release"),0,0,0.3, 1.25);
                shake_camera( 4, 3 );
                //trade with blade storm                
                if (!transcendent && (other.jc_buff || other.jc_fspec_buff))
                destroyed = true;
            }
        }
    }




if (player_id.jc_hit){
    
    hit_limit--;
    player_id.jc_hit = false;

}

player_id.move_cooldown[AT_NSPECIAL] = 120;

if (lifetime <= 0 || hit_limit <= 0){
spawn_hit_fx( x, y, player_id.jc_destroyed );
instance_destroy(self);
}
else{
lifetime--;}

//sound_play(asset_get("sfx_clairen_dspecial_counter_active"));