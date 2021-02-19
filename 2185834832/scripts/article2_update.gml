//article2_update - runs every frame the article exists

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

//with (asset_get("pHitBox")){
//    if (place_meeting(x,y,other.id) && other.player_id != player_id){
//        other.shoulddie = true;
//        other.hitstop = 10; //Article freeze frames
//        hitpause = true;    //Player freeze frames
//        hitstop = 10;       //Player freeze frames, cont.
//    }
//}

//State 0: Freshly spawned

if (state == 0){
    image_index += 0.25
    create_hitbox(AT_USPECIAL, 1, x + (20 * spr_dir), y + 12)
    if(state_timer == 0){
    	vsp = -7.8
    	hsp = 2 * spr_dir
    }
    vsp += 0.24
    if(hit_wall == true || !free){
    	state = 2
    	state_timer = 0
    }
}



//State 1: Moving

if (state == 1){
    image_index += 0.15
    create_hitbox(AT_USPECIAL, 1, x + (20 * spr_dir), y + 12)
    if(state_timer == 0){
    	vsp = 6
    	hsp = 0
    }
    vsp += 0.24
    if(hit_wall == true || !free){
    	state = 2
    	state_timer = 0
    }
}

//State 2: Dying

if (state == 2){
	hsp = 0
	vsp = 0
	if(state_timer == 0){
		image_index = 0
		spawn_hit_fx(x, y, bbExplode);
	}
	if(state_timer == 3){
		create_hitbox(AT_USPECIAL, 2, x + (20 * spr_dir), y + 12);
		sound_play( asset_get("sfx_waterhit_heavy"));
		if(instance_exists(player_id.saw_blade)){
			with(player_id){
			saw_blade.state = 2
			saw_blade.state_timer = 0
			}
		}
	}
	if(image_index < 8){
	image_index += 0.35
	}
	if(state_timer == 7){
		instance_destroy();
		exit;
	}
}

//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//If not already at the sprite it should be, switch to the new sprite and restart the animation

//delete if out of bounds
if (y > room_height){
    instance_destroy();
    exit;
}
if (sprite_index != sprite[state]){
    sprite_index = sprite[state];
}

//Make time progress
state_timer++;