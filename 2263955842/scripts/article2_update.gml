//article2_update
// NSPECIAL YIN YANG

if (w_bar_draw < w_bar)
{
	w_bar_draw += w_bar / 20;
	if (w_bar_draw > w_bar)
	{
		w_bar_draw = w_bar
	}
}

if (h_bar_draw < h_bar)
{
	h_bar_draw += h_bar / 20;
	if (h_bar_draw > h_bar)
	{
		h_bar_draw = h_bar
	}
}

if (draw_alpha < 1)
{
	draw_alpha += 1 / 20;
}


// To prevent the use of the attack while the orb is present
player_id.move_cooldown[AT_NSPECIAL] = 250;

var bounce = false;
var damageless_bounce = false;
image_index += image_spd;

if (has_rune("M"))
{
	var target = noone;
	with(oPlayer)
	{
		if (get_player_team(self) != get_player_team(other.player_id))
		{
			if (collision_circle(x,y,350,other, false,true))
			{
				target = self;
			}
		}
		
	}
	
	var max_acc = spd;
	
	if (target != noone)
	{
		var ang = find_angle(x,y,target.x,target.y - 60);
		
		var acc = 0.2
		hsp += lengthdir_x(acc,ang);
		if (abs(hsp) > max_acc)
		{ 
			hsp = max_acc * sign(hsp)
						
		}
		vsp += lengthdir_y(acc,ang);
		if (abs(vsp) > max_acc)
		{ 
			vsp = max_acc * sign(vsp)
						
		}
	}

}


if (is_hold)
{
    hitstop = 10;
    
    can_be_hit_timer = 0;
}


if (can_be_hit_timer == 0){
    var _team = get_player_team(player_id.player);
    var hitboxHit = noone;
    with pHitBox {
        if(id != other.my_hitbox) and (attack != AT_DSPECIAL){
            if(place_meeting(x, y, other)){
                if(hitboxHit == noone || hitboxHit.hit_priority < hit_priority){
                    hitboxHit = id;
                }
            }   
        }
    }
    if(hitboxHit != noone){
        
      //  spd += 2; // speeding up
      
        if (is_hold)
        {
            life = 0;
            // pratfall?
        }
      
        // follow hitbox's angle

        var hit_angle = get_hitbox_angle(hitboxHit);
        hsp = spd*dcos(hit_angle);
        vsp = -spd*dsin(hit_angle);

        can_be_hit_timer = can_be_hit_timer_ref;
        //life--;
        bounce = true;
        
        
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
            
            if (other.player_id == player_id) //doesn't lose life if hit by reimu
            {
                if (attack != AT_NSPECIAL_2) // except for nspecial_2
                {
                    damageless_bounce = true;
                }
            }
            
            if (attack != AT_NSPECIAL_2)
            {
            	if (other.hit_timer < 25)
            	{
                	other.hit_timer = 25 // hit_timer_ref;
            	}
            }
            else
            {
            	if (other.hit_timer < 10)
            	{
            		other.hit_timer = 10;
            	}
            }
        }

        //if(_team != get_player_team(hitboxHit.player)){
       if (instance_exists(my_hitbox))
       {
            instance_destroy(my_hitbox);
       }
        //}
    }
}
else{
    can_be_hit_timer -= 1;
}



if (hit_timer >= 1)
{
    if (hit_timer == hit_timer_ref)
    {
        bounce = true;
    }
    hit_timer -= 1;
    
    if (hit_timer == 1)// and (!player_id.is_reimu_a)
    {
        my_hitbox = create_hitbox( AT_NSPECIAL, 1 + player_id.is_reimu_a, floor(x) + floor(hsp), floor(y) + floor(vsp));
        hit_timer = 0;
        my_hitbox.no_absorb = true;
    }
}
        /*
        with (pHitBox) { // attacking the yinyang
                with (other) {
                    var _team = get_player_team( get_instance_player( other ));
                        if (place_meeting(x,y,other)) //and (_team = get_player_team( player )) 
                        {
                            if (other != my_hitbox)
                            {
                                
                               
                            // follow hitbox's angle
                            var hit_angle = get_hitbox_angle(other);
                            hsp = lengthdir_x( spd, hit_angle );
                            vsp = -lengthdir_y( spd, hit_angle );
                            
                            // natural path
                            if (abs(vsp) >= abs(hsp))
                            {
                                vsp *= -1;
                            }
                            else
                            {
                                hsp *= -1;
                            }
                            
                            
                            life -= 1;
                            
                            bounce = true;
                            can_be_hit_timer = can_be_hit_timer_ref;
                            
                            
                            hitstop = 8;
                            
                            player_id.hitpause = true;
                            player_id.hitstop = 8;
                            player_id.hitstop_full = 8;
                            
                            player_id.old_vsp = player_id.vsp;
                            player_id.old_hsp = player_id.hsp;
                            //player_id.has_hit = true;
                            spawn_hit_fx( x, y, other.hit_effect);//get_hitbox_value( other.attack, other.hbox_num, HG_VISUAL_EFFECT ))
                            sound_play(other.sound_effect);
                            
                            // destroy hitbox if not owner
                            var _team = get_player_team( get_instance_player( other ))
                            if (_team != get_player_team( player )) 
                            {
                                hit_timer = hit_timer_ref;
                                instance_destroy(my_hitbox);
                            }
                            
                            
                            
                            exit
                            }
                        }
                }
        }*/
    




// reimu A
/*
if (player_id.is_reimu_a) and (hit_timer == 0)
{
    if (collision_circle(x  + floor(hsp), y + floor(vsp), ray - 20,asset_get("pHurtBox"),false,true))
    {
        my_hitbox = create_hitbox( AT_NSPECIAL, 2, floor(x) + floor(hsp), floor(y) + floor(vsp))
        hit_timer = hit_timer_ref;
    }
}
*/





//


if (place_meeting(x,y + vsp,asset_get("par_block")))
{
    vsp = -vsp;
    bounce = true;
}
if (place_meeting(x + hsp,y,asset_get("par_block")))
{
    hsp = -hsp;
    bounce = true;
}


var cam_x = get_instance_x(asset_get("camera_obj"))
var cam_y = get_instance_y(asset_get("camera_obj"))
var height = view_get_hview() / 2
var width = view_get_wview() / 2

while (y - ray < cam_y - height)
{
    y += 1;
    
     if (vsp < 0)
    {
        vsp = abs(vsp);
        bounce = true;
    }
}

while(y + ray > cam_y + height)
{
    y -= 1;
    
    if(vsp > 0)
    {
        vsp = -abs(vsp);
        bounce = true;
    }
}
while(x - ray < cam_x - width)
{
    x += 1;
    
    if (hsp < 0)
    {
        hsp = abs(hsp);
        bounce = true;
    }
}
    
while(x + ray > cam_x + width)
{
    x -= 1
    
    if (hsp > 0)
    {
        hsp = -abs(hsp);
        bounce = true;
    }
}

//
/* border
while (y - ray < y_bar)
{
    y += 1;
    
     if (vsp < 0)
    {
        vsp = abs(vsp);
        bounce = true;
    }
}

while(y + ray > y_bar + h_bar)
{
    y -= 1;
    
    if(vsp > 0)
    {
        vsp = -abs(vsp);
        bounce = true;
    }
}
    
while(x - ray < x_bar)
{
    x += 1;
    
    if (hsp < 0)
    {
        hsp = abs(hsp);
        bounce = true;
    }
}
    
while(x + ray > x_bar + w_bar)
{
    x -= 1
    
    if (hsp > 0)
    {
        hsp = -abs(hsp);
        bounce = true;
    }
}
*/

if (bounce)
{
    
    if (!damageless_bounce)
    {
        life -= 1;
        
        if (life >= 3)
        {
            sound_play(sound_get("yybounce"))
        }
        else
        {
            sound_play(sound_get("yybounce_almost"))
        }
    }
   else
   {
       sound_play(sound_get("yybounce"))
   }
}

/*
// for rune B
if (collision_rectangle(x - 1, y -1, x + 1,y + 1, asset_get("par_block"),false,true))
{
    hit_timer = 3;
}

*/

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
        
        life = 0;
        
        }
    }
}

step += 1;

if (life <= 0)
{
    sound_play(asset_get("sfx_shovel_hit_light2")) // can be changed
    spawn_hit_fx( x, y, effect_destroy )
    instance_destroy(self);
}

#define find_angle(x, y, x_to,y_to)


xd = argument2 - argument0;
yd = argument3 - argument1;

if (sign(xd) == sign(yd))
{
	if (yd != 0)
	{
		var angle = darctan(xd / yd) - 90 + (yd < 0) * 180;
	}
	else
	{
		var angle = 0;
	}
	
}
else
{
	if (yd != 0)
	{
		
		var angle = darctan(xd / yd) + 270 + 180 * (yd < 0)
	}
	else
	{
		var angle = 180 * (xd < 0);
	}
	
}
return angle;



