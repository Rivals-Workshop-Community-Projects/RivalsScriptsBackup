if (die_trigger == 1)
{
	sound_play(sound_get("ring"));
	var vfx = spawn_hit_fx( x, y, player_id.ring_take_vfx );
	vfx.depth = player_id.depth - 10;
	instance_destroy();
}

if (position_meeting(x,y, asset_get("plasma_field_obj"))){
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx( x, y, 124 );
    instance_destroy();
}

if (place_meeting(x, y, asset_get("pHitBox")))
{
	hitbox_colliding = instance_place(x,y, asset_get("pHitBox"))
	hitbox_colliding_player = hitbox_colliding.player_id;
	hitbox_colliding_player.old_hsp = hitbox_colliding_player.hsp;
    hitbox_colliding_player.old_vsp = hitbox_colliding_player.vsp;
    hitbox_colliding_player.hitpause = true;
	hitbox_colliding_player.hitstop = 3;
	hitbox_colliding_player.hitstop_full = 9;
	hitbox_colliding_player.has_hit = true;
	if (hitbox_colliding.player_id == player_id)
	{
		with (player_id)
        {
        	if (!shield_pressed)
        	{
        		if (free)
        		{
        			if (attack == AT_FAIR) || (attack == AT_DAIR) ||
        			(attack == AT_BAIR) || (attack == AT_UAIR) ||
        			(attack == AT_NAIR) || (attack == AT_FSPECIAL) ||
        			(attack == AT_DSPECIAL) || (attack == AT_UTILT)
				    {
				    	old_vsp = -12;
				    }
        			if (attack == AT_NSPECIAL)
		            {
		            	old_vsp = -5;
		            }
		            if (attack == AT_USTRONG)
		            {
		            	old_vsp = -15;
		            }
        		}
        		if (!free)
        		{
        			if (attack == AT_FTILT) || (attack == AT_DTILT) ||
        			(attack == AT_FSTRONG) || (attack == AT_DSTRONG) ||
        			(attack == AT_NSPECIAL)
        			{
        				old_hsp = (old_hsp/2) + (12*spr_dir);
        			}
        			if (attack == AT_JAB)
        			{
        				old_hsp = 6*spr_dir;
        			}
        			if (attack == AT_DATTACK)
        			{
        				old_hsp = 12*spr_dir;
        			}
        		}
        	}
        }
	}
	die_trigger = 1;
}