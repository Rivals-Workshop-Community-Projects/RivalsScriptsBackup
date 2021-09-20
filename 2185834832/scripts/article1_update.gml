//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying

*/
if object_index == oPlayer exit;


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
    if(state_timer > 18 && player_id.special_down && startMoving == true){
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
	if(state_timer == 0 && startMoving == false){
		spawn_hit_fx(x,y + 60, 111)
		sound_play(asset_get("sfx_kragg_rock_land"))
	}
	if(startMoving = false){
		hsp = 0
		if(player_id.attack == AT_FSPECIAL){
			startMoving = true
		}
		if(lifeTimer > 0){
			lifeTimer -= 1
		}else{
			if(state == 0 || state == 1){
				state = 4
				state_timer = 0
				image_index = 7
			}
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
	if(player_id.attack == AT_EXTRA_1 && player_id.window == 2){
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
	create_hitbox( AT_DSPECIAL, 1, floor(x + (hsp * 2)), y + 40)
	hitboxReal = 0
    }
}

//State 2: Dying

if (state == 2){
	spawn_hit_fx( x, y + 40, 149 );
	create_hitbox( AT_DSPECIAL, 2, x, y + 40)
	sound_play( asset_get("sfx_waterwarp_start"))
	instance_destroy();
    exit;
}

//State 3: Emerge
if (state == 3){
	spawn_hit_fx( x, y + 40, 149 );
	sound_play( asset_get("sfx_waterhit_heavy"))
	instance_destroy();
    exit;
}

//State 4: Sink
if (state == 4){
	hsp = 0
	vsp = 0
	image_index -= 0.25
	if(state_timer == 1){
	sound_play( asset_get("sfx_orca_shake"))
	}else if(state_timer > 27){
		instance_destroy();
    	exit;
	}
}

if(multi_hits > 20 && state != 4){
	state = 4
	state_timer = 0
	image_index = 0
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