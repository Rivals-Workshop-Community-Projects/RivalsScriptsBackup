//article2_update
// familiar
var yes = false;
var me = self;
with (obj_article2)
{
    if (player_id == me.player_id) and (self != me)
    {
        yes = true;
    }
}
        
with (player_id)
{
    if (!has_rune("K"))
    {
        move_cooldown[AT_DSPECIAL] = 40;
    }
    else
    {
        if (yes)
        {
            move_cooldown[AT_DSPECIAL] = 40;
        }
    }
}

switch (state)
{
    case 0: // idle, can catch
        image += idle_spd;
        
        if (rad < rad_max)
        {
            rad += 0.2;
        }
        if (scale < 1)
        {
            scale += 0.1
        }
        image_xscale = scale;
        image_yscale = scale;
        
        ang += ang_spd * spr_dir;
        
        if (last_image != floor(image))
        {
            
            image_index = image;
            last_image = floor(image)
            x = x_ref + lengthdir_x(rad,ang);
            y = y_ref + lengthdir_y(rad,ang);
            
            image_angle = ang + 90 //* spr_dir;
            
        }
        
        
        if (sing_image < sing_image_max )
        {    
            if (sing_image == 0)
            {
                if (has_rune("L"))
                {
                    with (player_id)
                    {
                        my_hitbox = create_hitbox(AT_NSPECIAL,3,round(other.x),round(other.y));
                        other.cant_grab_time = 40;
                    }
                }
            }
            sing_image += 0.2;
        }
        
        if (cant_grab_time > 0)
        {
            cant_grab_time -= 1;
        }
        
        if (my_hitbox != noone)
        {
            if (instance_exists(my_hitbox))
            {
                my_hitbox.x = x;
                my_hitbox.y = y;
            }
            else
            {
                my_hitbox = noone;
            }
        }
        
        if (my_grab_hitbox != noone)
        {
            if (instance_exists(my_grab_hitbox))
            {
                my_grab_hitbox.x = x;
                my_grab_hitbox.y = y;
            }
            else
            {
                my_grab_hitbox = noone;
            }
        }
    
        var hitbox_needed = false;
        with (player_id)
        {
            var rad_hit = get_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH) / 2 ;
        }
        if (my_grab_hitbox == noone)
        {
            with (oPlayer)
            {
                if (self != other.player_id) and (state_cat == SC_HITSTUN) and (blinded)
                {
                    if (collision_circle(x,y - char_height / 2,rad_hit,other,false,true))
                    {
                        if (other.cant_grab_time == 0)
                        {
                            hitbox_needed = true;
                        }
                    }
                }
            }
        }
        
        if (hitbox_needed)
        {
            my_grab_hitbox = create_hitbox(AT_EXTRA_3,1,round(x),round(y));
        }
    
    
        if (step >= 600)
        {
            state = 2;
        }
    
    break;
    case 1: // catch
        image_xscale = 1;
        image_yscale = 1;
        scale = 1;

        if (!hitstop)
        {
            image_index += catch_spd;
            sprite_index = sprite_get("familiar_catch");
            image_angle = 0;
            if (!set_place)
            {
                x = grab_id.x;
                y = grab_id.y;
                set_place = true;
                
                
                step = 0;
                
                ds_list_add(player_id.caged_list,grab_id);
                ds_list_add(player_id.cage_time_list,0);
            }
        }
        switch(step)
        {
            case 6:
            case 12:
            case 24:
                sound_play(asset_get("sfx_swipe_weak1"));
            break;
            case 18:
            case 30:
                sound_play(asset_get("sfx_swipe_weak2"));
            break;
            
            
            
        }
        
        if (image_index >= image_number - 1)
        {
            destroyed = true;
        }
    
    break;
    
    case 2: // leaving, can't catch
    
        if (!has_played_leaving_sound)
        {
             sound_play(sound_get("familiar_leaving"));
             has_played_leaving_sound = true;
        }
        image += idle_spd;
        
        if (rad < rad_max)
        {
            rad += 0.2;
        }
        
        if (scale > 0)
        {
            scale -= 0.05
        }
        else
        {
            destroyed = true;
        }
        image_xscale = scale;
        image_yscale = scale;
        
        ang += ang_spd * spr_dir;
        
        if (last_image != floor(image))
        {
            
            image_index = image;
            last_image = floor(image)
            x = x_ref + lengthdir_x(rad,ang);
            y = y_ref + lengthdir_y(rad,ang);
            
            image_angle = ang + 90 //* spr_dir;
            
        }
    
    break;
    
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
            ) < 210) {
               state = 2;
            }
        }
    }

step += 1;
if (destroyed)
{
         instance_destroy(self);
}




