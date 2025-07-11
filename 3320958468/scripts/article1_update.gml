//	article1_update

//--------------------------------------------------------------------------------------------

//	The States

//	0: 	Spawn
//	1:	Grabby Enemy
//	2:	Grabby Terrain or P.Guard
//	3:	Return
//	4:	Ded

//	Make time progress
state_timer++;

//--------------------------------------------------------------------------------------------

if (place_meeting(x, y, asset_get("plasma_field_obj"))) 
{
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(x-10, y, 21);
		
	setState(3);
}

//	Track the fist's position
player_id.grapple_fist_pos_x = x;
player_id.grapple_fist_pos_y = y;

with (player_id) 
{
    var pull_angle = point_direction(x + hand_x, y - hand_y, grapple_fist_pos_x, grapple_fist_pos_y);
}

//--------------------------------------------------------------------------------------------

//	State 0: Grapple Fist Spawn
if (state == 0)
{
    mask_index 		= sprite_get("fspec_grapple_mask");
	image_index 	= 0;

	if (get_player_color( player ) == 0) 
	{
		sprite_index = sprite_get("fspec_grapple_thrown_pr");
	}

	else if (get_player_color( player ) != 0) 
	{
		sprite_index = sprite_get("fspec_grapple_thrown");
	}
    
    if (state_timer < 16)
    {
        //	Adjusting the hitbox position based on the direction of the fist
        var grab_box 	= create_hitbox(AT_FSPECIAL, 1, x + 0 * spr_dir, y);
        grab_box.x 		= player_id.grapple_fist_pos_x + lengthdir_x(16, pull_angle);
        grab_box.y 		= player_id.grapple_fist_pos_y + lengthdir_y(16, pull_angle);

        with (pHitBox)
        {    
            if (player_id == other.player_id && attack == AT_FSPECIAL && hbox_num == 1 && type == 2) 
            {             
                //	Grabbing Enemy Players
				if (has_hit_player)
				{
					grab_box.destroyed 			= true;
					grab_box.destroy_fx 		= 1;

					other.hsp 					= 0;
					other.vsp 					= 0;

					//hitpause 					= true;
					//hitstop 					= 6;
					//hitstop_full 				= 6;  
					
					other.state 				= 1;
					other.state_timer 			= 0;
				}
				
				//	Grabbing the stage/terrain
				if (place_meeting(x - 20 * spr_dir, y-23, asset_get("par_block")))
                {    
                    player_id.grapple_obj 	= true;
					
					grab_box.destroyed 		= true;
                    grab_box.destroy_fx 	= 1;				
                    
                    other.hsp 				= 0;
                    other.vsp 				= 0;
					
					other.state 			= 2;
					other.state_timer 		= 0;
					
					spawn_hit_fx(obj_article1.x - 0 * spr_dir, obj_article1.y + 3, 302);	
					sound_play(asset_get("sfx_blow_medium1"), false, noone, 1);
                }

				//	Grabbing the Plunger Guard
				if (place_meeting(x, y, player_id.plunger_guard))
                {    
                    player_id.grapple_obj 	= true;
					
					grab_box.destroyed 		= true;
                    grab_box.destroy_fx 	= 1;

					obj_article1.x 			= player_id.plunger_guard.x + 2 * spr_dir;
					obj_article1.y 			= player_id.plunger_guard.y + 4;				
                    
                    other.hsp 				= 0;
                    other.vsp 				= 0;
					
					other.state 			= 2;
					other.state_timer 		= 0;
					
					spawn_hit_fx(player_id.plunger_guard.x - 5 * player_id.plunger_guard.spr_dir, player_id.plunger_guard.y + 5, 302);	
					sound_play(asset_get("sfx_blow_medium1"), false, noone, 1);
                }
            }
        }
    }
    
    if (state_timer == 16 || state_timer == 17)
    {
		with (oPlayer)
		{
			if (player != other.player_id.player)
			{
				if (state == PS_HITSTUN && hitpause == true) 
				{
					other.hsp 				= 0;
                    other.vsp 				= 0;
					
					other.state 			= 1;
					other.state_timer 		= 0;
				}
			}
		}
    }

	if (state_timer == 18)
    {
		setState(3);
	}
}

//	State 1: Grabby - Now Pose I mean Pause
if (state == 1)
{
	mask_index 		= sprite_get("fspec_grapple_mask");
	image_index 	= 1;

	if (get_player_color( player ) == 0) 
	{
		sprite_index = sprite_get("fspec_grapple_thrown_pr");
	}

	else if (get_player_color( player ) != 0) 
	{
		sprite_index = sprite_get("fspec_grapple_thrown");
	}
	
	hsp = 0;
	vsp = 0;

	//	Centre the Grapple Fist on the Enemy Player
	with (oPlayer)
	{
		if (player != other.player_id.player)
		{
			if (state == PS_HITSTUN && hitpause == true) 
			{
				obj_article1.x 	= x;
				obj_article1.y 	= y - 28;
			}
		}
	}
	
	if (state_timer == 18)
    {
        setState(3);
    }
}

//	State 2: Grabby the floor, P.Guard or whatever
if (state == 2)
{
	mask_index 		= sprite_get("fspec_grapple_mask");
	image_index 	= 1;

	if (get_player_color( player ) == 0) 
	{
		sprite_index = sprite_get("fspec_grapple_thrown_pr");
	}

	else if (get_player_color( player ) != 0) 
	{
		sprite_index = sprite_get("fspec_grapple_thrown");
	}
	
	hsp = 0;
	vsp = 0;
	
	if (state_timer == 18)
    {
        setState(3);
    }
}

//	State 3: Return to Sender
if (state == 3)
{
	mask_index 		= sprite_get("fspec_grapple_mask");
	image_index 	= 2;

	if (get_player_color( player ) == 0) 
	{
		sprite_index = sprite_get("fspec_grapple_thrown_pr");
	}

	else if (get_player_color( player ) != 0) 
	{
		sprite_index = sprite_get("fspec_grapple_thrown");
	}
	
	hsp = round(player_id.grapple_speed * 1.5 * dcos(pull_angle + 180));
	vsp = round(-player_id.grapple_speed * 1.5 * dsin(pull_angle + 180));
	
	//	When the Grapple Fist returns and clashes into Rayman, disappear
	with (oPlayer) 
	{
		if (player == other.player && place_meeting(x + 30 * spr_dir, y, other))
		{				
			//other.mask_index 		= sprite_get("fspec_grapple_mask");
			
			other.state 			= 4;
			other.state_timer 		= 0;
		}
	}		
}

//	State 4: Deceased, Death, Dead... 
if (state == 4)
{
	sprite_index 	= asset_get("empty_sprite");
	mask_index 		= asset_get("empty_sprite");
	image_index 	= 0;
	
	hsp 			= 0;
	vsp 			= 0;
	
	with (player_id)
	{
		move_cooldown[AT_FSPECIAL] = 66;
	}
	
	spawn_hit_fx(x - 10 * spr_dir, y + 5, 310);	
	sound_play(asset_get("sfx_forsburn_disappear"), false, noone, 0.75);
		
	instance_destroy();
    exit;
}

//--------------------------------------------------------------------------------------------

#define setState(new_state)
{
	state 			= new_state;
	state_timer 	= 0;
}