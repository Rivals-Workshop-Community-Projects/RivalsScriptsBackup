//article1_update

mask_index = sprite_get("turntable");
step += 1;
step_life += 1;
is_held = player_id.holding_turntable;



if (uspecial)
{
    if (!player_id.runeI)
    {
        can_hit = false;
    }
    
    hsp = 0;
    vsp = 0;
    
    sprite_index = sprite_get("uspecial_turntable");
    image_index = (50 - uspecial_timer) / 5;
    
    
    if (uspecial_timer <= 0)
    {
        uspecial = false;
        step = 1;
    }
    else
    {
        uspecial_timer -= 1;
    }
    
  
    
}
else
{

    if (is_held)
    {
        can_hit = true;
        
        hsp = 0;
        vsp = 0;
        
        if (player_id.state != PS_CROUCH)
        {
            x = player_id.x + 18 * player_id.spr_dir ;
            y = player_id.y - 32;
            
        }
        else
        {
            x = player_id.x + 20 * player_id.spr_dir ;
            y = player_id.y ;
        }
        
        spr_dir = player_id.spr_dir;
        
        sprite_index = sprite_get("nothing");
        image_index = 3;
    }
    else
    {
        if (can_hit) 
        {
            sprite_index = sprite_get("turntable");
        }
        else
        {
            sprite_index = sprite_get("turntable_spinning");
        }
        image_index = step / 8;
        
        if (!hitstop)
        {
            if (free)
            { 
                
                // yellow slow
                if (col == 3) and (abs(vsp) > 1.5)
                {
                   vsp = sign(vsp) * 1.5;
                }
                if (col == 3) and (abs(hsp) > 2)
                {
                   hsp = sign(hsp) * 2;
                }
                
                
                
                
                vsp += grav;
            
                
                var dir = sign(hsp);
                
                hsp -= air_fric * sign(hsp);
                if (dir != sign(hsp))
                {
                    hsp = 0;
                }
                
            }
            else
            {
                
                vsp = 0;
                    
                var dir = sign(hsp);
                hsp -= grd_fric * sign(hsp);
                if (dir != sign(hsp))
                {
                    hsp = 0;
                }
                
            }
            
            if (free) 
            {
                if (can_hit) and (runeI_timer == 0)
                {
                    hitbox = create_hitbox( AT_DSPECIAL, col + 1, floor(x) + floor(hsp), floor(y) - 16 + floor(vsp ));
                }
                
                if (hit_wall)
                {
                    if (col != 1)
                    {
                        hsp = -spr_dir * 4 - spr_dir;
                        vsp = -7
                        can_hit = false;
                        sound_play(asset_get("sfx_shovel_hit_light2"));
                        
                        
                        //PV -= 1;
                    }
                    else
                    {
                        hsp = -spr_dir * 4 - spr_dir;
                        sound_play(asset_get("sfx_bubblepop"));
                    }
                   
                }
            }
            else
            {
                can_hit = true;
            }
            
            if (runeI_timer > 0)
            {
                runeI_timer -= 1;
            }
            
            
        }
    }
}


if (y > room_height) or (x > room_width) or (x < 0)
{
    destroyed = true;
}









/*
if (place_meeting(x,y,pHitBox))
{
    
}


with (pHitBox)
{
    if (get_instance_player_id(self) != player_id) and (place_meeting(x,y,other))
    {
        
    }
    
}

var pl_id = player_id;
*/
// being hit
/*
if (can_be_hit) and (!is_held) and (!uspecial)
{
    with (pHitBox) {
        with (other) { // other.id ?? what?
            var _team = get_player_team( get_instance_player( other ));
                if (_team != get_player_team( player )) and (place_meeting(x,y,other))
                {
                var hit_angle = get_hitbox_angle(other);
                var force = other.kb_value / 2 + other.kb_scale * 4;
                hsp = lengthdir_x( force, hit_angle );
                vsp = lengthdir_y( force, hit_angle );
                
                can_hit = false;
                can_be_hit = false;
                cbh_timer = 0;
                
                PV -= floor(other.damage / 3) + (other.damage < 3)
                
                if ( PV <= 0)
                {
                    destroyed = true;
                }
                else
                {
                    sound_play(asset_get("sfx_shovel_hit_light2"));
                }
            }
            /*
            // Switching CD
            if (get_instance_player_id(other) == pl_id) and (other.attack == AT_FSPECIAL) and (place_meeting(x,y,other)) and (step_life > 30)
            {
             
                with (pl_id)
                {
                    if (!is_hcd)
                    {
                        is_hcd = true;
                        hcd_x = other.x ;
                        hcd_y = other.y - 58;
                        hcd_step = 0;
                        hcd_spd = 8;
                    }
                    
                    boost_update = true;
                }
               
                
                var inst = create_hitbox( AT_FSPECIAL, col + 1,other.x + sign(other.hsp) * 20, other.y ); // ne pas pouvoir retoucher
                inst.hsp = abs(inst.hsp) * sign(other.hsp);
                
                other.destroyed = true;
                
                
                // new boost
                col = other.hbox_num - 1;
            }
            
        }
    }
}
*/

if (cbh_timer < 15)
{
    cbh_timer += 1;
}
else
{
    can_be_hit = true;
}




// destroys the article when it’s within an enemy Clairen’s plasma field:
if (!is_held)
{
    with (asset_get( "plasma_field_obj" )) {
        with (other.id) {
            var _team = get_player_team( get_instance_player( other ));
            if (_team != get_player_team( player )
            && point_distance(
            x + 10 * spr_dir,
            y,
            get_instance_x( other ),
            get_instance_y( other )
            ) < 180) {
               destroyed = true;
            }
        }
    }
}




if ( PV <= 0)
{
    destroyed = true;
}



if (destroyed)
{
    
    spawn_hit_fx( x, y, destroy_effect );
    
    /*
    // fx staying on screen
    var x_fx = x;
    var y_fx = y;
        
    while(x_fx < view_get_xview() + 40)
    {
        x_fx += 1;
    }
    while(x_fx > view_get_xview() +  view_get_wview() - 40)
    {
        x_fx -= 1;
    }
    while(y_fx > view_get_yview() + view_get_hview())
    {
        y_fx -= 1;
    }
        
    var inst = spawn_hit_fx( x_fx, y_fx - 30, cd_destroy_effect );
        */
    
        
        
    sound_play(asset_get("sfx_shovel_hit_med1"));

    
    // debuff hitbox
    /*
   with (player_id)
   {
        for ( var i = 0; i < array_length_1d(att); i += 1)
        {
            for (var j = 0; j <= get_num_hitboxes( att[i] ); j += 1)
            {
                reset_hitbox_value( att[i], j, HG_DAMAGE );
                reset_hitbox_value( att[i], j, HG_BASE_KNOCKBACK );
                reset_hitbox_value( att[i], j, HG_KNOCKBACK_SCALING );
                reset_hitbox_value( att[i], j, HG_BASE_HITPAUSE );
                
                
            }
        }
        
        
        dash_speed = dash_speed_ref;
        initial_dash_speed = initial_dash_speed_ref;
        walk_speed = walk_speed_ref;
        walk_accel = walk_accel_ref;
        short_hop_speed = short_hop_speed_ref;
        jump_speed = jump_speed_ref;
        djump_speed = djump_speed_ref;
        air_max_speed = air_max_speed_ref;
        air_accel = air_accel_ref;
        max_djumps = max_djumps_ref;
        dash_turn_accel = dash_turn_accel_ref;
        walljump_vsp = walljump_vsp_ref;
        gravity_speed = gravity_speed_ref;
        max_fall = max_fall_ref;
        fast_fall = fast_fall_ref;
        knockback_adj = knockback_adj_ref;
        wave_friction = wave_friction_ref;
        wave_land_adj = wave_land_adj_ref;
        moonwalk_accel = moonwalk_accel_ref;
        ground_friction = ground_friction_ref;
        air_dodge_speed = air_dodge_speed_ref;
        air_dodge_speed = air_dodge_speed_ref;
        
        reset_window_value( AT_USPECIAL, 2, AG_WINDOW_VSPEED )
        
   }
    */
    
    //player_id.boost_update = true;
    

    
    instance_destroy();
    
}



