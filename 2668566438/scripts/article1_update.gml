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

//Just to clear things up I (DonGT) wrote all of this (except the moving to ledge part. That was RuberCuber) for Parasol.

//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2

if (player_id.killarticles && state != 2){
    state = 2;
    state_timer = 0;
}


//State 0: Freshly spawned

if (state == 0){
    //In this example, the article moves forward for a little bit when spawned
	new_sprite = sprite_get("puddle_spawn");
    //Go to idle after 40 frames
    if (state_timer >= 20){
        state = 1;
        state_timer = 0;
    }
}



//State 1: Idle

if (state == 1){
	var team_attack = get_match_setting(SET_TEAMATTACK);
	new_sprite = sprite_get("puddle");
}
var team_attack = get_match_setting(SET_TEAMATTACK);
with (oPlayer) {
	if (self != other.player_id && (get_player_team(self.player) != get_player_team(other.player)) 
	&& !invincible && !free){
		if (place_meeting(x,y,other.id)){
			bee_victim = other.player_id;
			poi_cooldown+=2;
			if(poi_cooldown >= 500){
				poi_cooldown = 500;
			}
		}
	}
}
if state == 0 || state == 1 {
	//platform/stage edge corrections Credit to RuberCuber
	var puddleLeft = x - (24);
	var puddleRight = x + (24);
	var puddley = y+20;
	if place_meeting(x, puddley, asset_get("par_jumpthrough")) { //on platform
	    var leftPos = position_meeting(puddleLeft, puddley, asset_get("par_jumpthrough"));
	    var rightPos = position_meeting(puddleRight, puddley, asset_get("par_jumpthrough"));
	
	    if !leftPos {
	        x += 5;
	    } else if !rightPos {
	        x -= 5;
	    }
	
	} else if place_meeting(x, puddley, asset_get("par_block")) { //on ground
	    var leftPos = position_meeting(puddleLeft, puddley, asset_get("par_block"));
	    var rightPos = position_meeting(puddleRight, puddley, asset_get("par_block"));
	    
	    if !leftPos {
	        x += 5;
	    } else if !rightPos {
	        x -= 5;
	    }
	}
}




//State 2: Dying

if (state == 2){
		player_id.puddle_exists = false;
		if(sprite_index != sprite_get("puddle_despawn")){
	    	new_sprite = sprite_get("puddle_despawn")
		}else{
	    	new_sprite = asset_get("empty_sprite")			
		}
        player_id.killarticles = false;
        instance_destroy();
        exit;
}
player_id.og_puddle = self;
if(state == 3){
	new_sprite = sprite_get("puddle_despawn")
	if(state_timer >= 15){
		state = 2;
		state_timer = 0;
	}
	player_id.puddle_exists = false;
}

if (player_id.move_puddle){
	state = 3;
	state_timer = 0;
	player_id.move_puddle = false;
}
//Assign each state both a sprite it should have and a way it should animate

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod puddle_idle_anim_rate == 0){
            image_index++;
        }
        break;
}

//Make time progress
state_timer++;