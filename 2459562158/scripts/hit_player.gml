// hit_player

switch(my_hitboxID.attack)
{
	case AT_NSPECIAL:
		if (my_hitboxID.hbox_num == 1) or (my_hitboxID.hbox_num == 2)
		{
			var obj = noone;
			with (obj_article1)
	        {
	            if (other == player_id)
	            {
	            	var obj = self;
	            }
	        }
			
			if (obj != noone) and (!hit_player_obj.super_armor)
			{
				var ang = find_angle( hit_player_obj.x, hit_player_obj.y,obj.x, obj.y);
	            hit_player_obj.old_hsp = lengthdir_x(12, ang);
	            hit_player_obj.old_vsp = lengthdir_y(12, ang);
			}
		}
	break;
    case AT_UTILT:
        if (my_hitboxID.hbox_num == 4) and (!hit_player_obj.super_armor)
        {
            var ang = find_angle( hit_player_obj.x, hit_player_obj.y,x - 6, y- 106);
            hit_player_obj.old_hsp = lengthdir_x(10, ang);
            hit_player_obj.old_vsp = lengthdir_y(10, ang);
        }
        
    break;
    case AT_FSPECIAL:
        if (!hit_player_obj.super_armor) and (hit_player_obj.soft_armor < 3)
        {
        	grab_id = hit_player_obj;
        }
        else
        {
        	if (state_cat != SC_HITSTUN)
        	{

				hitstop_full = 3;
				hitstop = 3;
				
        		attack_end()
	            destroy_hitboxes()
        		set_attack(AT_EXTRA_2);
        		sprite_index = sprite_get("grab_release_air");
        		image_index = 0;
        		hurtboxID.sprite_index = sprite_get("grab_release_ground_hurt")
        		old_hsp = -4 * spr_dir;
        		hsp = old_hsp;
        	}
        }
        
        spd_hand /= 2;
        
        acc_hand = 0.8;
    break;
    case AT_DAIR:
        with (obj_article2)
        {
            if (player_id == other)
            {
                hitstop = my_hitbox.hitpause;
            }
        }
    break;
    case AT_BAIR:
        if (state_cat != SC_HITSTUN)
        {
        	if (!hit_player_obj.super_armor) and (hit_player_obj.soft_armor < 3)
        	{
	            attack_end()
	            destroy_hitboxes()
	            set_attack(AT_EXTRA_1)
	            grab_id = hit_player_obj;
	            hurtboxID.sprite_index = sprite_get("bair_throw_hurt")
        	}
        	else
        	{
        		spr_dir *= -1;
        		
        		hitstop_full = 3;
				hitstop = 3;
        		
        		attack_end()
	            destroy_hitboxes()
        		set_attack(AT_EXTRA_2);
        		old_hsp = -4 * spr_dir;
        		hsp = old_hsp;
        		
        		sprite_index = sprite_get("grab_release_air");
        		image_index = 0;
        		hurtboxID.sprite_index = sprite_get("grab_release_ground_hurt")
        	}
        }
    break;
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



