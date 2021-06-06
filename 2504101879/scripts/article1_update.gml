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

depth = player_id.depth+2; 

//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
}

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

/*var dist = distance_to_point(curtainpermx, curtainpermy);
var dir = point_direction(x, y, curtainpermx, curtainpermy);
if (dist > 0) {
	hsp = lengthdir_x(smooth_val * dist, dir);
	vsp = lengthdir_y(smooth_val * dist, dir);
	smooth_val += .01;
}*/

//State 0: Freshly spawned
if (state == 0){
    if (image_index == 9){
        state = 1;
        state_timer = 0;
    }
}



//State 1: Idle

if (state == 1){
    //Stop the movement from state 0
    hsp = 0;
    vsp = 0;
    //Die if should die
    if shoulddie{
        state = 2;
        state_timer = 0;
    }
    
    //Accept buffered state
    if (bufferedstate > 0){
        state = bufferedstate;
        state_timer = 0;
        bufferedstate = 0;
    }
}



//State 2: Dying

if (state == 2){
    if (image_index == 1){
        player_id.killarticles = false;
        instance_destroy();
        exit;
    }
}

//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("blood_cloud");
        animation_type = 1;
        break;
    case 1:
        new_sprite = sprite_get("blood_cloud");
        animation_type = 3;
        break;
    case 2:
        new_sprite = sprite_get("blood_cloud");
        animation_type = 2;
        break;
    case 3:
    case 4: //Since all of these guys are just kinda
    case 5: //in a row, without any "break;" lines to
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0) {
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
    	if (state_timer == 1) {
    		image_index = 10;
    	}
        if (state_timer mod die_anim_rate == 0) {
            image_index--;
        }
        break;
    case 3:
	    if (state_timer mod idle_anim_rate == 0) {
	        image_index++;
	    }
	    if (image_index >= 13) {image_index = 10;}
	    break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}



//Make time progress
state_timer++;