//article2_update
// bomb? you want it?

var prop = player_id;
with (player_id)
{
    if !(has_rune("N"))
    {
        move_cooldown[AT_DSPECIAL] = 40;
    }
    else
    {
        var num = 0;
        with (obj_article2)
        {
            if (player_id == prop)
            {
                num += 1;
            }
        }
        
        if (num >= 2)
        {
            move_cooldown[AT_DSPECIAL] = 40;
        }
    }
}




if (!cant_be_hit)
{
    var _team = get_player_team(player_id.player);
    var hitboxHit = noone;
    with pHitBox {
        if(get_char_info( player_id.player, INFO_STR_NAME) =="Seija Kijin") and (attack == AT_FSPECIAL){ 
            if( collision_circle(other.x,other.y,30,self,false,false)){
                if(hitboxHit == noone || hitboxHit.hit_priority < hit_priority){
                    hitboxHit = id;
                }
            }   
        }
    }
    if(hitboxHit != noone){
    
        cant_be_hit = 20;
        sound_play(sound_get("switch"));
        sided = -sided;
         
        hitstop = max(round(hitboxHit.hitpause + hitboxHit.extra_hitpause), 0);
    
        with hitboxHit{
        	if (type == 1)// not hitpause if projectile
        	{
                player_id.hitpause = true;
                player_id.hitstop_full = max(round(hitpause), 0);
                player_id.hitstop = player_id.hitstop_full;
                player_id.old_hsp = player_id.hsp;
                player_id.old_vsp = player_id.vsp;
        	}
            player_id.has_hit = true;
            
            spawn_hit_fx(other.x, other.y, hit_effect);
            sound_play(sound_effect);
            
        }
    }
}
else
{
    cant_be_hit -= 1
}




switch (step)
{
    case 80: 
        step_im_ref = 4
    break;
    case 160: 
        step_im_ref = 8
        x_shake = -1;
    break;
    case 220:
       with (player_id)
        {
            spawn_hit_fx( other.x + 20, other.y - 30, counter_star )
        }
    break;
    case 240: 
        state = 1;
        x_shake = 0;
    break;
    case 245:
        destroyed = true;
        with (player_id)
        {
            spawn_hit_fx( other.x, other.y, explosion_effect)
            
            var hitb1 = create_hitbox( AT_DSPECIAL, 1, other.x, other.y );
            if (other.hurt_player)
            {
                var hitb2 = create_hitbox( AT_DSPECIAL, 2, other.x, other.y );
            }
           
            if (other.sided == -1)
            {
                 hitb1.kb_angle = 270;
                 hitb2.kb_angle = 270;
            }
            
            sound_play(sound_get("bomb"))
            shake_camera( 5, 5 )
        }
    break;
    
}

im_step += im_spd;
im_step %= 4;


switch(state)
{
    case 0:
        image_index = step_im_ref + im_step
    break;
    case 1:
        image_index = 12
    break;
}

if (step % 3 == 0)
{
    x_shake *= -1;
}




// CLAIREN FIELD
with (asset_get( "plasma_field_obj" )) {
        with (other.id) {
            var _team = get_player_team( get_instance_player( other ));
            if (_team != get_player_team( player )
            && point_distance(
            x + 10 * spr_dir,
            y,
            get_instance_x( other ),
            get_instance_y( other )
            ) < 30) {
               destroyed = true;
            }
        }
    }

step += 1;
if (destroyed)
{
         instance_destroy(self);
}




