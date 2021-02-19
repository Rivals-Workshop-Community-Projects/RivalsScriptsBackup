/*STATE LIST

- 0 Spawn
- 1 Idle
- 2 Death
- 3 
- 4 
- 5 
- 6 
- 7 
- 8 
- 9

*/

if (killarticles == true){
	player_id.m_lava = noone;
    instance_destroy();
    exit;
}

if (state == 0){
if (abs(x) > room_width){
	player_id.m_lava = noone;
  instance_destroy();
exit;
}
}

if (state == 0){
	if (abs(y) > room_height){
		player_id.m_lava = noone;
		instance_destroy();
		exit;
	}
}

if(state == 0 || state == 1 || state == 2){
	if(free){
		vsp = 50;
	}else{
		vsp = 0;
	}
}

if (state == 0){ //Spawn
if (state_timer == 1){
sound_play(asset_get("sfx_watergun_splash"));
}
	if (state_timer == 23){
	setState(1);
	state_timer = 0;
	}
}

if (state == 1){ //Idle
    var createHitbox = false;
	var touchingEnemy = false;
	with oPlayer {
		if(id != other.player_id){
			if(place_meeting(x, y, other)){
				touchingEnemy = true;
			}
		}
	}
	if(touchingEnemy){
		hurtcounter++;
	} else {
		hurtcounter = 0;
	}
	if (hurtcounter == 1){
		sound_play(asset_get("sfx_zetter_fireball_fire"));
	}
	if (hurtcounter == 5){
		createHitbox = true;
	}
	if (hurtcounter == 30){
		hurtcounter = 0;
	}
    if (createHitbox){
		if (spr_dir == 1){
        puddleHitbox = create_hitbox(AT_EXTRA_1, 4, x+0, y+25);
		}
		if (spr_dir == -1){
        puddleHitbox = create_hitbox(AT_EXTRA_1, 4, x-0, y+25);
		}
    }
    if (state_timer >= 780 || (instance_exists(puddleHitbox) && puddleHitbox.was_parried)){
        setState(2);
        state_timer = 0;
    }
}

if (state == 2){ //Death
if (state_timer == 1){
sound_play(sound_get("sfx_intro"));
}
	if (state_timer >= 28){
		sound_stop(sound_get("sfx_intro"));
		instance_destroy();
		exit;
	}
}

//more states can go here

//Sprite and animation handling

//Change articleX to article1 or etc

//Increment image_index based on the animation type assigned, in init, to the state. The example 2 are just different anim speeds and frame counts, but you can put any logic you want here

switch(anim_type[state]){
        case 0:
            var frames = 5; //# of frames in animation
            var frame_dur = 5; //duration of each frame
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
        case 1:
            var frames = 5;
            var frame_dur = 8;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
		case 2:
            var frames = 6;
            var frame_dur = 5;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
    }

//If not already at the sprite it should be, switch to the new sprite
if (sprite_index != sprite[state]){
    sprite_index = sprite[state];
}

//Make time progress
state_timer++;

if (place_meeting(x, y, asset_get("plasma_field_obj")) && state != 2){
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(floor(x),floor(y),256)
    setState(2); //you could replace this with "setState(2);" to make it die INSTANTLY, even if already attacking or etc
}

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;