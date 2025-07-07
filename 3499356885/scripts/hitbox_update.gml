//Egg Throw
if attack == AT_USPECIAL
&& hbox_num == 1
&& player == orig_player{
    
    length = hitbox_timer+2;
    
    proj_angle -= 4*hsp;
    if !free
    || has_hit
    || was_parried
    || (has_rune("N") && hitbox_timer >= 360) destroyed = true;
    
    if destroyed{
        
        //Rune Explosion
        if has_rune("O"){
            destroy_fx = 263;
            sound_play(asset_get("sfx_abyss_explosion_big"));
            create_hitbox(AT_USPECIAL, 3, x, y);
        }
        else{
            sound_play(sound_get("SFX_Egg_Pop"));
            create_hitbox(AT_USPECIAL, 2, x, y);
        }
        
    }
    
    //Homing Eggs?
    if has_rune("N"){
        
        if hitbox_timer >= 15{
            
            //Find Player
            if egg_target == noone{
                locate_nearest_player();
                with(player_id){
                    other.egg_target = collision_circle(other.x, other.y, 240, oPlayer, true, true);
                }
            }
            
            //Chase Player
            if egg_target != noone{
                hsp += 0.6*sign(egg_target.x - x);
                vsp += 0.3*sign(egg_target.y - 48 - y);
                grav = 0;
            }
            else{
                grav = 0.4;
            }
            
        }
        else{
            egg_target = noone;
        }
    }
}

#define locate_nearest_player

shortest_dist = 9999;
shortest_id = noone;

with (asset_get("oPlayer")) {
    if (player != other.player) {
        var curr_dist = point_distance(x,y,other.x,other.y);
        if (curr_dist < other.shortest_dist) {
            other.shortest_dist = curr_dist;
            other.shortest_id = id;
        }
    }
}