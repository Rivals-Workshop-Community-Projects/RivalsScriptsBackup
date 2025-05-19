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

/* print(state_timer);
 print(state);*/
if (state != 0 && state != 1){
with (pHitBox)
{
    if (player != other.player)
    {
        if (place_meeting(x, y, other))
        {
            if (type == 1)
            {
                other.killarticles = true;
            }
        }
    }
}
}
if (state >= 3)
{
	if (y > room_height + 100 || y < -100 || x > room_width + 100 || x < -100) 
	{
		sound_play(asset_get("sfx_ori_energyhit_medium"));
		killarticles = true
		player_id.comet = noone
	}
}

if (killarticles == true){
	player_id.move_cooldown[AT_NSPECIAL] = 90;
	spawn_hit_fx(x, y, 112);
	if (hitbox_activate == true)
	{
		create_hitbox(AT_NSPECIAL, 2,x - 0 * spr_dir, y + 0);
		create_hitbox(AT_NSPECIAL, 3,x - 0 * spr_dir, y + 0);
	}
	sound_play(asset_get("sfx_ori_energyhit_medium"));
	player_id.comet = noone
	instance_destroy();
	exit;
}

if(state_timer % 10 == 0){
	spawn_hit_fx( x - 45 + ((random_func(0, 80, true))) , y - 60 + random_func(10, 100, true) , player_id.VFX_small_bling );
}
if(state_timer % 20 == 0){
	spawn_hit_fx( x - 45 + ((random_func(0, 80, true))) , y - 60 + random_func(10, 100, true) , player_id.VFX_medium_bling );
}

if (state == 0){ //Spawn
	mask_index = sprite_get("comet_idle_hurt")
	if(state_timer == 1){
		hsp = 5 * player_id.spr_dir
		if(!player_id.hitpause){
			sound_play(asset_get("sfx_abyss_portal_spawn"))
		}
	}
	if(collision_point(x + 30 * spr_dir, y + 0, asset_get("par_block"),false,true) != noone){
		hsp = -5
	}
	hsp *= .89
	if (state_timer == 19){
	setState(1);
	state_timer = 0;
	}
}


if (state == 1){ //Idle
mask_index = sprite_get("comet_idle_hurt")
	hsp *= .89
	if(state_timer > 3){
		if(activate = true && comet_clinged != true){
			setState(2);
			
		}
	}
}



if (state == 2){ //launch   
	if (state_timer == 1){
		if(!player_id.hitpause){
			sound_play(asset_get("sfx_abyss_explosion_start"))
			spr_dir = player_id.spr_dir; 
		}
	}
	player_id.move_cooldown[AT_NSPECIAL] = 90;
	if (state_timer == 32){
		if (player_id.nspecial_pop_timer >= player_id.nspecial_pop_hold) {
			player_id.move_cooldown[AT_NSPECIAL] = 90;
			spawn_hit_fx(x, y, 112);
			create_hitbox(AT_NSPECIAL, 2,x - 0 * spr_dir, y + 0);
			sound_play(asset_get("sfx_ori_energyhit_medium"));
			player_id.comet = noone
			instance_destroy();
			exit;
		} else {
			setState(3);
			state_timer = 1			
		}
	}
}


if(combustable == true){ //explode
	if (place_meeting(x, y, asset_get("par_block")))
	{
		combust_now = true;
	}
	with (oPlayer)
		{
			if (player != other.player)
			{
				if (place_meeting(x, y, other))
                {
                    other.combust_now = 1;
                }
			}
		}
}

if(combust_now == true){ //explode on call
	killarticles = true;
	hitbox_activate = true;
}

if (state == 3){ //launch
	combustable = true;
	mask_index = sprite_get("comet_hurt");
	player_id.move_cooldown[AT_NSPECIAL] = 90;
	if(state_timer == 1){
		vsp = -6;
		hsp = 6 * spr_dir;
	}else{
		image_angle = radtodeg(arctan(vsp/-hsp));
		vsp = vsp + .3;
	}
	if (!free)
	{
		killarticles = true;
		hitbox_activate = true;
	}
}

if (state == 4){ //launch any angle
if (state == 4 && state_timer <= 2) {
/*print("In State 4")*/
}

	combustable = true;
	mask_index = sprite_get("comet_hurt");
	player_id.move_cooldown[AT_NSPECIAL] = 90;
	image_angle = radtodeg(arctan(vsp/-hsp));
	vsp = vsp + .3
	if (!free)
	{
		killarticles = true;
		hitbox_activate = true;
	}
}
if (state == 5){ //launch tetramino launch
	combustable = true;ask_index = sprite_get("comet_hurt");
	player_id.move_cooldown[AT_NSPECIAL] = 90;
	if(state_timer == 1){
		if(hit_tetramino == 1){
			vsp = 0
			hsp = 6 * spr_dir
		}
	}
	if(hit_tetramino == 2){
		if(state_timer % 20 >= 8){
			vsp = 0
			hsp = 6 * spr_dir
		}else{
			vsp = 6
			hsp = 0 
		}
	}
	if(hit_tetramino == 3){
		if(state_timer % 20 >= 8){
			vsp = 0
			hsp = 6 * spr_dir
		}else{
			vsp = -6
			hsp = 0 
		}
	}
	if(hit_tetramino == 4){
		if(collision_point(x - 40 * spr_dir, y + 80, asset_get("par_block"),false,true) != noone || collision_point(x - 20 * spr_dir, y + 80, asset_get("par_jumpthrough"),false,true) != noone){
			vsp = 0
			hsp = 9 * spr_dir
		}else{
			vsp = 6
			hsp = 0 
		}
		if(collision_point(x + 40 * spr_dir , y + 20, asset_get("par_block"),false,true) != noone || collision_point(x , y + 20, asset_get("par_jumpthrough"),false,true) != noone){
			vsp = -6
			hsp = 0 
		}
	}
	if(hit_tetramino == 5){
		if(collision_point(x - 40 * spr_dir, y + 80, asset_get("par_block"),false,true) != noone || collision_point(x - 20 * spr_dir, y + 80, asset_get("par_jumpthrough"),false,true) != noone){
			vsp = 0
			hsp = 9 * spr_dir
		}else{
			vsp = -6
			hsp = 0 
		}
		if(collision_point(x + 40 * spr_dir , y + 20, asset_get("par_block"),false,true) != noone || collision_point(x , y + 100, asset_get("par_jumpthrough"),false,true) != noone){
			vsp = 6
			hsp = 0 
		}
	}
	if(hit_tetramino == 6){
		if(state_timer <= 15){
			vsp = 0
			hsp = 6 * spr_dir
		}else if(state_timer <= 30){
			vsp = -6
			hsp = 0
		}else if(state_timer <= 45){
			vsp = 0
			hsp = -6 * spr_dir
		}else if(state_timer <= 60){
			vsp = 6
			hsp = 0
		}else{
			vsp = 0
			hsp = 6 * spr_dir
		}
	}
	if(hit_tetramino == 7){
		vsp = 0
		hsp = hsp + 1 * spr_dir
	}
	
	if(state_timer > 100){
		killarticles = true
		//setState(1);
		//state_timer = 1
			
	}
	if(spr_dir == -1){
		if(vsp > 0){
			image_angle = 90
		}else if(vsp < 0){
			image_angle = -90
		}else{
			image_angle = radtodeg(arctan(vsp/hsp));
		}
	}else{
		if(vsp > 0){
			image_angle = -90
		}else if(vsp < 0){
			image_angle = 90
		}else{
			image_angle = radtodeg(arctan(vsp/-hsp));
		}
	}
}




/*




if (state == 3){ //Death1
player_id.dspecial_bomb = 0;
if (state_timer == 0){
	ignores_walls = true; 
	hit_wall = true;   

	create_hitbox(AT_DSPECIAL, 3, x + 0*spr_dir, y + 15);
	sound_play(asset_get("sfx_war_horn"));
	spawn_hit_fx( x + 0*spr_dir, y + 15, 254  );
	
}
	if (state_timer >= 21){
		instance_destroy();
		exit;
	}
}


*/

//more states can go here

//Sprite and animation handling

//Change articleX to article1 or etc

//Increment image_index based on the animation type assigned, in init, to the state. The example 2 are just different anim speeds and frame counts, but you can put any logic you want here

switch(anim_type[state]){
        case 0:
            var frames = 5; //# of frames in animation
            var frame_dur = 4; //duration of each frame
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
        case 1:
            var frames = 8;
            var frame_dur = 4;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
		case 2:
            var frames = 10;
            var frame_dur = 4;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
		case 3:
            var frames = 4;
            var frame_dur = 4;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
		case 4:
            var frames = 4;
            var frame_dur = 4;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
		case 5:
            var frames = 4;
            var frame_dur = 4;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
		case 6:
            var frames = 9;
            var frame_dur = 4;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
    }

//If not already at the sprite it should be, switch to the new sprite
if (sprite_index != sprite[state]){
    sprite_index = sprite[state];
}

//Make time progress
state_timer++;

if (place_meeting(x, y, asset_get("plasma_field_obj")) && state != 3){
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(floor(x),floor(y),256)
    setState(3); //you could replace this with "setState(2);" to make it die INSTANTLY, even if already attacking or etc
}

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;

