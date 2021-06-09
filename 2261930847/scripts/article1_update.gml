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

//checking so it doesn't hang over the stage & plats
//checking on the stage
if place_meeting(x,y + 1, asset_get("par_block")) {
	//slide to the right
	if (!position_meeting(x - 72, y, asset_get("par_block"))) {
		x += 16;
		x = (ceil(x/16))*16;
	}
	//slide to the left
	if (!position_meeting(x + 72, y, asset_get("par_block"))) {
		x -= 16;
		x = (ceil(x/16))*16;
	}
	//cha cha real smooth
}
//checking on platform
if place_meeting(x,y + 1, asset_get("par_jumpthrough")) {
	//slide to the right
	if (!position_meeting(x - 72, y, asset_get("par_jumpthrough"))) {
		x += 8;
		x = (ceil(x/8))*8;
	}
	//slide to the left
	if (!position_meeting(x + 72, y, asset_get("par_jumpthrough"))) {
		x -= 8;
		x = (ceil(x/8))*8;
	}
	//cha cha real smooth
}


//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
}




//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)
/* don't
with (asset_get("pHitBox")){
    if (place_meeting(x,y,other.id) && other.player_id != player_id){
        other.shoulddie = true;
        other.hitstop = 10; //Article freeze frames
        hitpause = true;    //Player freeze frames
        hitstop = 10;       //Player freeze frames, cont.
    }
}
*/


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



//State 0: Freshly spawned

if (state == 0){
    
    //Go to idle after 10 frames
    if (state_timer >= 15){
        state = 1;
        state_timer = 0;
    }
}



//State 1: Idle

if (state == 1){
    
    //Stop the movement from state 0
    hsp = 0;
    if (has_raised == 0){ //Realign with stage
        y -= 2;
        has_raised = 1;
    }
    
    //Die if should die2.
    if shoulddie{
        state = 2;
        state_timer = 0;
    }
 /*
     if has_rune("K"){
     if !instance_exists(puddle_hitbox) {
     	puddle_hitbox = create_hitbox(AT_NSPECIAL, 2, x - 2 * spr_dir,y -16);}}
*/


    //Accept buffered state
    if (bufferedstate > 0){
        state = bufferedstate;
        state_timer = 0;
        bufferedstate = 0;
    }
}


//State 2: Dying
if (state == 2){
	/*
if instance_exists(puddle_hitbox) {
  instance_destroy(puddle_hitbox);
}   */ if (state_timer == die_time){
        player_id.killarticles = false;
        instance_destroy();
        exit;
    }
}



//State 3

if (state == 3){
	//Put something here if you want
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
    
    //11 frames in, create DSPECIAL hitbox 1
    if (state_timer == 11){
    	create_hitbox(AT_DSPECIAL, 1, floor(x), floor(y-18));
    	sound_play(sound_get("a_cool_noise"));
    }
    
    //11 frames in, create DSPECIAL hitbox 2
    if (state_timer == 15){
    	create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y-18));
    	sound_play(sound_get("a_cool_noise2"));
    }
    
    //Die after 28 frames (article is used up)
    if (state_timer == 0){
	    state = 2;
	    state_timer = 0;
    }
}



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("mudland");
        animation_type = 0;
        break;
    case 1:
        new_sprite = sprite_get("muddd");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("muddry");
        animation_type = 2;
        break;
    case 3:
    case 4: //Since all of these guys are just kinda
    case 5: //in a row, without any "break;" lines to
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
    	new_sprite = sprite_get("muddd")
    	animation_type = 1;
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index += 0.25;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index += 2;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}



//Make time progress
state_timer++;

