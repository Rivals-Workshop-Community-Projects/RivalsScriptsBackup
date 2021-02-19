//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Charging
- 1 
- 2 Ded
- 3 
- 4 
- 5 
- 6 
- 7 
- 8 
- 9 Attack

*/
	
	//Are there too many articles? If so, I should die
	// >If so, I should die
	// Then perish
	
	if (replacedcount > maxarticles){
	    shoulddie = true;
	}
	
	//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)
	
	//with (asset_get("pHitBox"))
	//{
	//    if (place_meeting(x,y,other.id)
	//	&& other.player != player
	//	&& !other.player_id.killarticles
	//	&& point_distance(other.player_id.x, other.player_id.y, other.x, other.y) > 40)
	//	{
	//		//if (type == 2)
	//		//{
	//		//	if (hsp != 0)
	//		//	{
	//		//		hsp = -hsp;
	//		//		player = other.player;
	//		//		damage = floor(damage*1.5);
	//		//		kb_value = floor(kb_value*1.5);
	//		//		hitbox_timer = 0;
	//		//	}
	//		//	else
	//		//	{
	//		//		damage = 0;
	//		//		kb_value = 0;
	//		//	}
	//		//	other.shoulddie = true;
	//    	//	sound_play(sound_get("fox_shine"));
	//		//}
	//		//else
	//		{
	//			other.player_id.killarticles = true;
	//			other.player_id.counterid = player_id;
	//			other.player_id.transformplease = 1;
	//    		sound_play(asset_get("sfx_owl4"));
	//		}
	//    }
	//}
	
	
	//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)
	
	if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx(floor(x),floor(y),256)
		shoulddie = true;
	}
	
	
	
	//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2
	
	if (player_id.killarticles && state != 2){
	    state = 2;
	    state_timer = 0;
	}
	
	
	
	//State buffering
	    
	if (buffertimer < 20){
		buffertimer++;
	}else{
		bufferedstate = 0;
		buffertimer = 0;
	}
	
	/*if ("orig_player" in self && "size" in self && size != 0)
	{
		fieldsprite = sprite_get("field");
		if (get_player_color(player_id) == 15){
			fieldsprite = sprite_get("field_trans");
		}
		draw_sprite_ext(fieldsprite, 
                player_id.subimg, 
                x, 
                y, 
                1/128*floor(size), //xscale
                1/128*floor(size), //yscale
                0, 
                -1, 
                0.4);
	}*/
	//State 0: Existing lol
	
	if (state == 0){
		image_alpha = 0.4;
		if (size < sizelimit) // grow
		{
			if (size == 125){
				size += 3;
			}
			else{
				size += 5;
			}
		}
		if (state_timer % 12 == 0) with (oPlayer) if (point_distance(x,y-char_height/2,other.x,other.y)<=other.size)
		{
			with (other.player_id) spawn_hit_fx( other.x - 30 + random_func( other.player, 60, false ), floor(other.y-other.char_height/2 - 30 + random_func( other.player+1, 60, false )), heartparticle );
		}
	    if (state_timer >= 60 * 10 || shoulddie || player_id.state == PS_RESPAWN) // lasts for 15 seconds
		{
		    state = 2;
		    state_timer = 0;
	    }
	}
		
	if (state_timer % 20 == 0){
		image_index++;
		if (image_index > 2){
			image_index = 0;
		}
	}
	image_xscale = 1/128*floor(size);
	image_yscale = 1/128*floor(size);
	
	
	
	//State 1: 
	
	if (state == 1){
	    ////Stop the movement from state 0
	    //hsp = 0;
	    //
	    ////Die if should die
	    //if shoulddie{
	    //    state = 2;
	    //    state_timer = 0;
	    //}
	    //
	    ////Accept buffered state
	    //if (bufferedstate > 0){
	    //    state = bufferedstate;
	    //    state_timer = 0;
	    //    bufferedstate = 0;
	    //}
	}
	
	
	
	//State 2: Dying
	
	if (state == 2){
		size -= 10;
		if (size < 0)
			size = 0;
	    if (size == 0)
		{
			if (player_id.singleton_field == self)
				player_id.singleton_field = noone;
	        player_id.killarticles = false;
	        instance_destroy();
	        exit;
	    }
	}
	
	
	
	//State 3: Immediately perish
	
	if (state == 3){
		x += ((player_id.hit_player_obj.x + 0) - x)/10;
		y += ((player_id.hit_player_obj.y - 30) - y)/10;
		size -= 5;
		if (size < 0)
			size = 0;
	    if (size == 0)
		{
			if (player_id.singleton_field == self)
				player_id.singleton_field = noone;
	        player_id.killarticles = false;
	        instance_destroy();
	        exit;
	    }
	}
	
	
	
	//State 4
	
	if (state == 4){
		//Put something here if you want
	}
	
	
	
	//State 5
	
	if (state == 5){
		//Put something here if you want
	}
	
	
	
	//State 6
	
	if (state == 6){
		//Put something here if you want
	}
	
	
	
	//State 7
	
	if (state == 7){
		//Put something here if you want
	}
	
	
	
	//State 8
	
	if (state == 8){
		//Put something here if you want
	}
	
	
	
	//State 9: Attack
	
	if (state == 9){
	    hsp = spr_dir * 4;

	    //Die after 28 frames (article is used up)
	    //if (state_timer == 28){
		//    state = 2;
		//    state_timer = 0;
	    //}
	    if shoulddie{
	        state = 2;
	        state_timer = 0;
	    }
	}
	
	
	
	//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)
	
	
	
	//Sprite and animation handling
	
	//Assign each state both a sprite it should have and a way it should animate
	//switch(state){
	//    case 0:
	//        new_sprite = sprite_get("clone");
	//        animation_type = 1;
	//        break;
	//    case 1:
	//		if (b_yeet)
	//			new_sprite = sprite_get("cloneglitch");
	//		else
	//			new_sprite = sprite_get("clone");
	//        animation_type = 1;
	//        break;
	//    case 2:
	//        new_sprite = sprite_get("parry2");
	//        animation_type = 2;
	//        break;/*
	//    case 3:
	//    case 4: //Since all of these guys are just kinda
	//    case 5: //in a row, without any "break;" lines to
	//    case 6: //stop their execution, they'll all default
	//    case 7: //to state 9's behavior. Read up on those
	//    case 8: //switch-case statements, y'all, they're handy
	//    case 9:
	//    	new_sprite = sprite_get("your_sprite4")
	//    	animation_type = 1;
	//        break;*/
	//}
	
	//Increment image_index based on the animation type assigned, above, to the state
	//switch(animation_type){
	//    
	//    case 0: //Increment image_index every frame
	//        image_index++;
	//    
	//    case 1: //Increment image_index at the rate determined by idle_anim_rate
	//        if (state_timer mod idle_anim_rate == 0){
	//            image_index++;
	//        }
	//        break;
	//    
	//    case 2: //Increment image_index at the rate determined by die_anim_rate
	//        if (state_timer mod die_anim_rate == 0){
	//            image_index++;
	//        }
	//        break;
	//}
	
	//If not already at the sprite it should be, switch to the new sprite and restart the animation
	//if (sprite_index != new_sprite){
	//    sprite_index = new_sprite;
	//    image_index = 0;
	//}

	//Make time progress
	state_timer++;