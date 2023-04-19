if (attack == AT_DSPECIAL && hbox_num == 1) 
{
    if (has_hit){
        player_id.move_cooldown[AT_DSPECIAL] = 40;
    } else {player_id.move_cooldown[AT_DSPECIAL] = 20;
    if(!free)
    {
        spawn_hit_fx(x,y-18, dspec_explode);
        hbox = create_hitbox(AT_DSPECIAL,2, x,y-20);
        if(player != orig_player)
        {
            hbox.can_hit[player] = false;
            hbox.can_hit_self = true;
        }
        sound_play(asset_get("sfx_ice_shatter"), false, noone, 1.1, 0.8);
        sound_play(asset_get("sfx_kragg_rock_land"));
        hbox.image_xscale *= 2;
        hbox.image_yscale *= 1.4;
        y -= 999;
        destroyed = true;
    }
    with(pHitBox)
    {
        if(collision_circle(x,y,30,other,false,false))
        {
            if(player_id == other.player_id)
            {
                if(attack == AT_NSPECIAL)
                {
                    other.hitbox_timer = 0;
                    other.hsp = -1*spr_dir;//other.hsp *= -1;
                    other.vsp = -5;
                    spawn_hit_fx(other.x,other.y, smallfx);
                    sound_play( asset_get( "sfx_clairen_fspecial_slash" ), 0, noone, 1, 1.2);
                    destroyed = true;
                }
                else if(type == 1)
                {
                    
                    other.player_id.fast_fwd = true;
                    other.player_id.fast_timer = 500;
                    
                    
                    other.destroyed = true;

                    sound_play(asset_get("sfx_ell_arc_taunt_start"), 0, noone, 1, 1.2);
                    // spawn_hit_fx(floor((x+other.x)/2),floor((y+other.y)/2), smallfx);
                    white_flash_timer = 10;
                    spawn_hit_fx(x,y, other.ff_fx);
                    
                }
            }
        }
    }
    } 
}