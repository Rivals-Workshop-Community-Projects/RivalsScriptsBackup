//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying
- 3 Taunt

*/

with (oPlayer)
{
	if url == CH_ORI && attack == AT_DSPECIAL &&
	(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && !has_hit
	{
		//Checks Ori is using Bash
		if collision_circle(x+17*spr_dir, y-12, 68, other.id, false, true)
		{ //Checks the article is in bash range
			switch (window)
			{
				
				case 2: //Transitions to bashing window
				window = 4; window_timer = 0;
				basher_x = x;
				basher_y = y;
				
				case 4: //Makes sure article is grabbed and freezes its code
				//move_cooldown[AT_NSPECIAL] = 5; //If the character can unsummon the
				
				//article, uncomment this
				bashed_proj = other.id;
				x = basher_x;
				y = basher_y;
				with(bashed_proj)
				{
					hitstop = true;
					if hitstop_full <= 0 hitstop_full = 10;
					//Change the 3 depending on your article
					hitstop_full++;
				}
				
				break;
				case 5:
	
				other.bashed = true;
				other.bashing_player = player;
				other.bashing_player_obj = self;
				//other.move_cooldown[AT_NSPECIAL] = 180; //If the character can
				
				//unsummon the article, uncomment this. Change the values as you see fit
				
				// other.player = player; //Gives ownership of the article to Ori. May cause
				
				//crashes on some articles, so only use if necessary
				
				//other.state = 1; //You can manipulate your article’s variables here, like this
				
				break;
			}
		}
	}
}

--hitstop_full;
hitstop = (hitstop_full > 0);

if (!hitstop)
{
	var noofclones = 2;
	if (player_id.runeK)
		noofclones += 2;
	maxarticles = noofclones;
	
	if (replacedcount > maxarticles){
	    shoulddie = true;
	}
	
	with (asset_get("pHitBox"))
	{
	    if (place_meeting(x,y,other.id)
			&& other.player != player
			&& other.state != 2
			&& !other.player_id.killarticles
			&& point_distance(other.player_id.x, other.player_id.y, other.x, other.y) > 40
			&& get_player_team( player ) != get_player_team( other.player ))
		{
			var counterplayer = (player_id==other.player_id?other.player_id.hit_player_obj:player_id);
			other.player_id.killarticles = true;
			other.player_id.counterid = counterplayer;
			//other.player_id.transformplease = 1;
			other.player_id.aurapt[0] = counterplayer.x;
			other.player_id.aurapt[1] = counterplayer.y-floor(counterplayer.char_height/2);
			other.player_id.aurapt[2] = counterplayer.x;
			other.player_id.aurapt[3] = counterplayer.y-floor(counterplayer.char_height/2);
			other.player_id.aurapt[4] = other.player_id.aurapt[6];
			other.player_id.aurapt[5] = 1;
			other.player_id.aurapt[7] = counterplayer.sprite_index;
			other.player_id.aurapt[8] = counterplayer.image_index;
			other.player_id.aurapt[9] = counterplayer.spr_dir;
			if (type == 1)
			{
				counterplayer.hitpause = true;
				counterplayer.hitstop = hitpause;
				counterplayer.hitstop_full = hitpause;
				counterplayer.old_hsp = counterplayer.hsp;
				counterplayer.old_vsp = counterplayer.vsp;
				counterplayer.hit_player = false;
			}
			//can_hit[other.player] = false;
	    	sound_play(sound_effect);
			var fx = spawn_hit_fx(other.x+(hit_effect_x*spr_dir)+x-other.x,other.y+hit_effect_y+y-other.y,hit_effect);
			fx.draw_angle = kb_angle;
			fx.spr_dir = spr_dir;
	    }
	}
	
	if (bashed)
	{
		player_id.killarticles = true;
		player_id.counterid = bashing_player_obj;
		player_id.transformplease = 1;
		sound_play(asset_get("sfx_owl4"));
		bashed = false;
	}
	
	if (free)
	{
		shoulddie = true;
	}
	
	
	//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)
	
	if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 2)) {
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx(floor(x),floor(y),256)
		shoulddie = true;
	}
	
	//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2
	
	if (player_id.killarticles && state != 2){
	    state = 2;
	    state_timer = 0;
	}
	
	//State 0: Freshly spawned
	
	if (state == 0){
		//Go to idle after 6 frames
		if (state_timer >= 6)
		{
		    state = 1;
		    state_timer = 0;
		}
	    else if (shoulddie) //Die if should die
		{
	        state = 2;
	        state_timer = 0;
	    }
	}
	
	//State 1: Idle
	
	if (state == 1)
	{
	    //Stop the movement from state 0
		if (da_walk != !(hsp == 0))
		{
			state_timer = 0;
		}
		da_walk = !(hsp == 0);
		if (da_walk)
		{
			player_id.techdone[0] = true;
		}
	    hsp = 0;
	    
	    //Taunt
	    if (player_id.attack == AT_TAUNT && player_id.state == PS_ATTACK_GROUND)
		{
	        state = 3;
	        state_timer = 0;
	    }
	    
	    //Die if should die
	    if (shoulddie)
		{
	        state = 2;
	        state_timer = 0;
	    }

		if (state_timer >= player_id.clone_lifetime && !player_id.runeA){
		    state = 2;
		    state_timer = 0;
		}
	}
	
	//State 2: Dying
	
	if (state == 2){
	    if (state_timer == die_time){
	        player_id.killarticles = false;
	        instance_destroy();
	        exit;
	    }
	}
	
	//State 3
	
	if (state == 3){
		spr_dir = player_id.spr_dir;
	    if (player_id.state != PS_ATTACK_GROUND || !(player_id.attack == AT_TAUNT || player_id.attack == AT_TAUNT_2 || player_id.attack == AT_NTHROW))
		{
	        state = 1;
	        state_timer = 0;
	    }
	    
	    //Die if should die
	    if (shoulddie)
		{
	        state = 2;
	        state_timer = 0;
	    }
	}
	
	switch(state){
	    case 0:
	        new_sprite = sprite_get("clone");
	        animation_type = 1;
	        break;
	    case 1:
			new_sprite = (da_walk?sprite_get("walk"):sprite_get("cloneglitch"));
	        animation_type = 1;
	        break;
	    case 2:
	        new_sprite = sprite_get("parry2");
	        animation_type = 2;
	        break;
	    case 3:
	        new_sprite = player_id.sprite_index;
	        animation_type = 3;
	        break;
	}
	
	switch(animation_type){
	    
	    case 0: //Increment image_index every frame
	        ++image_index;
	    
	    case 1: //Increment image_index at the rate determined by idle_anim_rate
	        if (state_timer mod idle_anim_rate == 0){
	            ++image_index;
	        }
	        break;
	    
	    case 2: //Increment image_index at the rate determined by die_anim_rate
	        if (state_timer mod die_anim_rate == 0){
	            ++image_index;
	        }
			break;
	    
	    case 3: //Just use owner's image index
	            image_index = player_id.image_index;
	        break;
	}
	
	if (sprite_index != new_sprite){
	    sprite_index = new_sprite;
	    image_index = 0;
	}
	
	++state_timer;
}