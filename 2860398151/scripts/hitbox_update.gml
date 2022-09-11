//	hitbox_update nonsense

var vfx_ki_trail 		= hit_fx_create(sprite_get("nspecial_proj_trail"), 16);
var vfx_ki_uspecial		= hit_fx_create(sprite_get("uspecial_proj"), 24);

//========================================================================================

if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR)
{
    target 	= noone;
    mindis 	= 10000;
	
	var spd = 10;
    hsp 	= dcos(pdir) * spd;
    vsp 	= -dsin(pdir) * spd;	
	
	with (oPlayer)
    {
        if (get_player_team(player) != get_player_team(other.orig_player))
        {
            var distance = point_distance(x, y, other.x, other.y);
            if (distance < other.mindis)
            {
                other.target = id;
                other.mindis = distance;
            }
        }
    }
	
	if (target != noone)
    {
        var todir = point_direction(x, y, target.x, target.y - target.char_height / 2);
        pdir += sign(angle_difference(todir, pdir));
    }
	
	if (!free)
	{
		destroyed = true;
	}
	
	if (was_parried)
	{
		destroyed = true;
		spawn_hit_fx(x-0*spr_dir, y-1, 14);	
	}
	
	if (get_gameplay_time() mod 4 == 0)
	{
		spawn_hit_fx(x-2*spr_dir, y + 7, vfx_ki_trail);	
	}
	
	if (hitbox_timer == 49)
	{
		spawn_hit_fx(x-0*spr_dir, y-1, 14);	
	}
}

if (attack == AT_NSPECIAL_2)
{	
	if (hbox_num == 1)
	{	
		if (!was_parried)
		{
			if (get_gameplay_time() mod 4 == 0)
			{
				spawn_hit_fx(x-2*spr_dir, y + 7, vfx_ki_trail);	
			}
		}
		
		if (hitbox_timer == 29)
		{
			spawn_hit_fx(x-0*spr_dir, y-1, 14);	
		}
		
		if (was_parried)
		{
			if (hitbox_timer == 13)
			{
				spawn_hit_fx(x-0*spr_dir, y-1, 14);	
			}
		}
	}
	
	if (hbox_num == 2)
	{	
		if (!was_parried)
		{
			if (get_gameplay_time() mod 4 == 0)
			{
				spawn_hit_fx(x-2*spr_dir, y + 7, vfx_ki_trail);	
			}
		}
		
		if (hitbox_timer == 29)
		{
			spawn_hit_fx(x-0*spr_dir, y-1, 14);	
		}
		
		if (was_parried)
		{
			if (hitbox_timer == 13)
			{
				spawn_hit_fx(x-0*spr_dir, y-1, 14);	
			}
		}
	}
}

if (attack == AT_USPECIAL)
{
	if (hbox_num == 3)
	{
		spawn_hit_fx(x-66*spr_dir, y-108, vfx_ki_uspecial);
		
		if (hitbox_timer == 4)
		{
			//	Spike be gone
			kb_angle = 110;
			
			kb_value = 9;
			kb_scale = 0.80;
				
			hitpause = 9;
			hitpause_growth = 0.80;			
					
			hit_flipper = 4;
				
			sound_effect = asset_get("sfx_ell_strong_attack_explosion");
		}		
	}
}