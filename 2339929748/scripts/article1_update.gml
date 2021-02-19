//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying
- 3 
- 4 
- 5 
- 6 
- 7 
- 8 
- 9 Attack

*/



//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
    
}

//Die if should die

//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)

//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2

if (player_id.killarticles && state != 2){
    state = 2;
    state_timer = 0;
}






//State 0: Freshly spawned

if (state == 0){ //falling
	if(!free && vsp == 0){
		state = 1;
	}
}

if(free){
	vsp += article_gravity;
}


//State 1: Idle

if (state == 1){
    
    
    //Accept buffered state
    if (bufferedstate > 0){
        state = bufferedstate;
        state_timer = 0;
        bufferedstate = 0;
    }
    
	if (shoulddie == true){
		state = 2;
		state_timer = 0;
	}
	/*
	with(asset_get("oPlayer")){
		if(attack == AT_DSPECIAL){
			with(asset_get("obj_article")){
				state = 3;
				state_timer = 0;
			}
		}
	}
	*/
}

//State 2: Dying

if (state == 2){
    if (state_timer == die_time){
        player_id.killarticles = false;
        instance_destroy();
        exit;
    }
}




//State 3: DSpecial blocks

if (state == 3){
	if(state_timer == 1){
	switch(player_id.bl_select){
		
		case 0:
		//spawn platform that allows you to jump higher
		var fbox = instance_create(x, y-60, "obj_article_platform");
		fbox.player_id = player_id;
		fbox.orig_player_id = player_id;
		fbox.player = player;
		state = 2;
		break;
		
		case 1:
		//teleport to player
		x = player_id.x;
		y = player_id.y - 70;
		state = 0;
		break;
		
		case 2:
		//Hitbox that deals fire damage and destroys projectiles
		create_hitbox(AT_USPECIAL, 1, x+20, y+20);
		state = 1;
		break;
		
		case 3:
			//Spawn hitbox that reduces ground friction on hit, until DSpecial is used again.
			hsp = -10*player_id.spr_dir;
			state = 1;
		break;
		
		case 4:
		//massive hitbox that kills at low percents
		create_hitbox(AT_DSPECIAL, 1, x+20, y+20);
		state = 2;
		player_id.move_cooldown[AT_FSPECIAL] = 300;
		break;
		
		case 5:
		//hitbox with freeze effect.
		create_hitbox(AT_DSPECIAL, 2, x+20, y+20);
		state = 2;
		break;
		
		case 6:
		//spawn barrier block
		
		var sbox = instance_create(x, y-60, "obj_article_solid");
		sbox.player_id = player_id;
		sbox.orig_player_id = player_id;
		sbox.player = player;
		state = 2;
		break;
		
		case 7:
		state = 1;
		break;
		
	}
	
	
	/*
	if(player_id.bl_select != 3){
		hsp = 0;
	}
	*/
	/*
	if(player_id.bl_select != 0){
		instance_destroy(fbox);
	}
	*/
	if(player_id.attack == AT_FSPECIAL){
		state = 2;
	}
	
}
}


//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling
/*
//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("your_sprite");
        animation_type = 0;
        break;
    case 1:
        new_sprite = sprite_get("your_sprite2");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("your_sprite3");
        animation_type = 2;
        break;
    case 3:
    case 4: //Since all of these guys are just kinda
    case 5: //in a row, without any "break;" lines to
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
    	new_sprite = sprite_get("your_sprite4")
    	animation_type = 1;
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}
*/

//Make time progress
state_timer++;