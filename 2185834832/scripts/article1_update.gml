//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying

*/

//Are there too many articles? If so, I should die
		
if (replacedcount > maxarticles){
    shoulddie = true;
}

if (player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_TAUNT){
	//make him do stuff when you want if you want to
}

//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)

//State 0: Freshly spawned

if (state == 0){
    if(state_timer > 32){
		state = 1
		state_timer = 0
    }
    if(free){
    	x -= spr_dir*8
    }
    if(state_timer > 18 && player_id.special_down){
		startMoving = false
	}
    if(!free){
    	image_index += 0.2	
    	if(image_index == 1){
			with(player_id){
				waterCharges -= 1
				sound_play( asset_get("sfx_waterwarp"))
			}
    	}
    }
}



//State 1: Moving

if (state == 1){
	if(state_timer <= 1 && player_id.special_down){
		startMoving = false
	}
	if(startMoving = false){
		hsp = 0
		if(player_id.attack == AT_FSPECIAL){
			startMoving = true
		}
	}
	if(hsp > -5 && hsp < 5 && startMoving = true){
		var turn = spr_dir / 5
		hsp = hsp + turn
	}
	if(free && state_timer > 2|| hit_wall == true && state_timer > 2){
		state = 2
		state_timer = 0
	}else if(free && state_timer <= 2 || hit_wall == true && state_timer <= 2){
		instance_destroy();
	}
	if(player_id.attack == AT_EXTRA_1){
		state = 3
		state_timer = 0
	}
	var spd = hsp / 17
	if (spd < 0){
		spd = spd * -1
	}
    image_index += spd
    hitboxReal += 0.12
    if(hitboxReal > 1 && startMoving = true){
	create_hitbox( AT_DSPECIAL, 1, x + 10, y)
	hitboxReal = 0
    }
}

//State 2: Dying

if (state == 2){
    if (state_timer == die_time){
    	spawn_hit_fx( x, y + 40, 149 );
    	create_hitbox( AT_DSPECIAL, 2, x + 10, y)
    	sound_play( asset_get("sfx_waterwarp_start"))
    	instance_destroy();
        exit;
    }
}

//State 3: Emerge
if (state == 3){
    if (state_timer == die_time){
    	spawn_hit_fx( x, y + 40, 149 );
    	sound_play( asset_get("sfx_waterhit_heavy"))
    	instance_destroy();
        exit;
    }
}

//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//If not already at the sprite it should be, switch to the new sprite and restart the animation

//delete if out of bounds
if (y < 0 || y > room_height){
    instance_destroy();
    exit;
}

if (x < 0 || x > room_width){
    instance_destroy();
    exit;
}
if (sprite_index != sprite[state]){
    sprite_index = sprite[state];
}

//Make time progress
state_timer++;