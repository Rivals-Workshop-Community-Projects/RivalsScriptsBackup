//article1_update - runs every frame the article exists.

//Used for Remote Robot

//This code is very spagetti

/*STATE LIST

- 0 Being Spawned
- 1 Landing after State 0
- 2 Walking
- 3 Turning Around at Ledge
- 4 Jumpsquat
- 5 Jumping for Attack
- 6 Explode
- 7 Falling
- 8 Got Hit
- 9

*/

player_id.tailsrobotx = x
player_id.tailsroboty = y

if (hit_wall == true && state < 4){ //>
	x = x - 6 * spr_dir
	setState(8);
}

if (player_id.tailsdidrobotgetparried == true){
	player_id.tailsdidrobotgetparried = false
	setState(8);
}

if (place_meeting(x, y, asset_get("pHitBox")) && can_get_hit && state != 8) { //makes the pot hittable when can_get_hit is true
	with (asset_get("pHitBox")){
		if (player != other.player_id.player){
			if (place_meeting(x, y, other)){
				other.hitbox_hit = self;
			}
		} else {
			if ((place_meeting(x, y, other)) && (type == 1)){
				if (attack != AT_FSPECIAL){
					//no
				} else {
					player_id.tailsdidhesidebrobot = true
					player_id.tailsisrobotout = false
					player_id.tailsdspechbox3destroyplease = true
					player_id.move_cooldown[AT_DSPECIAL] = 150;
					sound_play(player_id.sfx_krtd_grab)
					instance_destroy();
					exit;
				}
			}
		}
	}
	if (hitbox_hit != noone){
		
		if (hitbox_hit.damage > 0 && state != 8){
			
			with (player_id){
				move_cooldown[AT_DSPECIAL] = 150;
			}
			
			setState(8);
			
			//sound_play(sound_get("doink"));
			sound_play(hitbox_hit.sound_effect);
			spawn_hit_fx(floor(hitbox_hit.x),floor(hitbox_hit.y),hitbox_hit.hit_effect);
			
			//hitbox_hit.player_id.hitpause = 1;
			//hitbox_hit.player_id.hitstop_full = hitbox_hit.hitpause;
			//hitbox_hit.player_id.old_hsp = hitbox_hit.player_id.hsp
			//hitbox_hit.player_id.old_vsp = hitbox_hit.player_id.vsp
			//hitbox_hit.player_id.has_hit = true
			//hitstop = hitbox_hit.hitpause;
			
			
			//instance_destroy();
			//exit;
			
			
			//hitby = hitbox_hit.player_id;
		
		}
	}
}

if (state == 0
|| state == 1
|| state == 2
|| state == 3
){
	if (player_id.tailsdidbombhitrobot == true){
		player_id.tailsdidbombhitrobot = false
		//sound_play(asset_get("mfx_star"));
		//sound_play(asset_get("sfx_mobile_gear_jump"));
		setState(9);
	}
	if (player_id.tailsdidstartingdownbhitboxhit == true && state == 0){
		player_id.tailsdidstartingdownbhitboxhit = false
		setState(6);
	}
	
}

if (state == 0){ //Being Spawned
	player_id.tailsisrobotout = true
    if should_die{
        //setState(2);
    }
	
	if (state_timer == 0){
		vsp = -10
		hsp = 3.2 * spr_dir
		create_hitbox(AT_DSPECIAL, 3, x, y);
	}

	vsp += 0.55

	if (vsp > 15){
		vsp = 15
	}

	if (!free){
		player_id.tailsdspechbox3destroyplease = true
		setState(1);
	}
	player_id.tailsdidpressdownbwhenthingisactive = 0

    //Custom idle behavior goes here
}

if (state == 1){ //Landing after State 0
	player_id.tailsisrobotout = true
	player_id.tailsdspecheydidtherobotdieyet = 1
	hsp = 0
	vsp = 0
	if (state_timer == 1){
		sound_play(asset_get("sfx_gus_land"))
		spawn_base_dust( x + (0 * spr_dir), y, "land", spr_dir)
	}
	if (state_timer == 11){
		free = false
		setState(2);
	}
	player_id.tailsdidpressdownbwhenthingisactive = 0
}

if (state == 2){ //Walking
	player_id.tailsisrobotout = true
	player_id.tailsdspecheydidtherobotdieyet = 1
    hsp = 3.5 * spr_dir
	if (image_index == 1 || image_index == 3 || image_index == 5 || image_index == 7 || image_index == 9){
		robot_dust_spawn_var++;
		if (robot_dust_spawn_var == 1){
			spawn_base_dust( x + (0 * spr_dir), y, "walk", spr_dir)
		}
	} else {
		robot_dust_spawn_var = 0
	}
	with (asset_get("oPlayer")){
	    if (place_meeting(x, y, other)){
	    	if (player != other.player_id.player){
	    		other.activatejump = true;
	    	}
	    }
    }
	
	if (activatejump == true){
		setState(4);
	}

	if (free){
		setState(7);
	}
	if (player_id.tailsdidpressdownbwhenthingisactive == 1){
		player_id.tailsdidpressdownbwhenthingisactive = 0
		//sound_play(asset_get("mfx_star"))
		setState(4);
	}
	if (at_ledge == 1 && robot_on_plat == false){
		//sound_play(asset_get("mfx_star"))
		spr_dir *= -1
		setState(3);
	}
}

if (state == 7){//Falling
	player_id.tailsisrobotout = true
	vsp += 0.55
	if (!free){
		sound_play(asset_get("sfx_gus_land"))
		setState(2);
	}
}

if (state == 3){//Turning Around
	player_id.tailsisrobotout = true
	player_id.tailsdspecheydidtherobotdieyet = 1
	hsp = 0
	if (state_timer == 1){
		//spr_dir *= -1
		sound_play(player_id.sfx_dstrong_use)
	}
	if (state_timer == 11){
		setState(2);
	}
}

if (state == 4){ //Jumpsquat
	player_id.tailsisrobotout = true
	player_id.tailsdspecheydidtherobotdieyet = 1
	hsp = 0
	vsp = 0
	x = x + 4 * spr_dir
	if (state_timer == 1){
		sound_play(asset_get("sfx_mobile_gear_jump"));
	}
	if (state_timer == 4){
		spawn_base_dust( x + (0 * spr_dir), y + 2, "jump", spr_dir)
		setState(5);
	}
	player_id.tailsdidpressdownbwhenthingisactive = 0
}

if (state == 5){ //Jumping for Attack	
	player_id.tailsisrobotout = true
	player_id.tailsdspecheydidtherobotdieyet = 1
	if (state_timer == 0){
		hsp = 1.5 * spr_dir
		vsp = -14
		create_hitbox(AT_DSPECIAL, 1, x, y - 35);
	}
	vsp += 0.55
	if (state_timer == 20){
		setState(6);
	}
	player_id.tailsdidpressdownbwhenthingisactive = 0
}

if (state == 6){ //Explode
	player_id.tailsisrobotout = false
    if (state_timer == 0){ //Make a hitbox 10 frames after entering state 1
		spawn_hit_fx( x, y, 143 );
		sound_play(asset_get("sfx_ell_big_missile_fire"));
        create_hitbox(AT_DSPECIAL, 2, x, y); //Spawns NSPECIAL hitbox 1 at article's position. Hitboxes MUST be projectiles for articles
	}
	if (state_timer == 1){
		player_id.move_cooldown[AT_DSPECIAL] = 150;
		instance_destroy();
		exit;
	}
	player_id.tailsdspecheydidtherobotdieyet = 1
}

if (state != 8){
	player_id.tailsdidrobotgethit = false
} else {
	if (state_timer != 26){
		player_id.tailsdidrobotgethit = true
	} else {
		player_id.tailsdidrobotgethit = false
	}
}

if (state == 8){ //Get Hit
	player_id.tailsisrobotout = true
	player_id.tailsdspecheydidtherobotdieyet = 1
    if (state_timer == 0){ //Make a hitbox 10 frames after entering state 1
		hsp = -4.5 * spr_dir
		vsp = -8
	}
	vsp += 0.55
	if (state_timer == 26){
		spawn_hit_fx( x, y, 144 );
		sound_play(asset_get("sfx_ell_cooldown"));
		player_id.move_cooldown[AT_DSPECIAL] = 150;
		instance_destroy();
		exit;
	}
	player_id.tailsdidpressdownbwhenthingisactive = 0
}

if (state == 9){ //Explode but better
	player_id.tailsisrobotout = false
    if (state_timer == 0){ //Make a hitbox 10 frames after entering state 1
		//spawn_hit_fx( x, y, 143 );
		spawn_hit_fx( x, y - 20, 157 );
		sound_play(asset_get("sfx_absa_kickhit"));
        create_hitbox(AT_DSPECIAL, 4, x, y - 20); //Spawns NSPECIAL hitbox 1 at article's position. Hitboxes MUST be projectiles for articles
	}
	if (state_timer == 1){
		player_id.move_cooldown[AT_DSPECIAL] = 150;
		instance_destroy();
		exit;
	}
	player_id.tailsdspecheydidtherobotdieyet = 1
}

//more states can go here

//Sprite and animation handling

//mario
//Increment image_index based on the animation type assigned, in init, to the state. The example 2 are just different anim speeds and frame counts, but you can put any logic you want here
if !hitstop{
    switch(anim_type[state]){
		//Spin
        case 0:
            var frames = 4; //# of frames in animation
            var frame_dur = 4; //duration of each frame
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
		//Landing
        case 1:
            var frames = 3;
            var frame_dur = 4;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
		//Walking
		case 2:
            var frames = 10;
            var frame_dur = 4;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
		//Turning
		case 3:
            var frames = 3;
            var frame_dur = 4;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
		//Jumpsquat
		case 4:
            var frames = 2;
            var frame_dur = 2;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
		//Jump
		case 5:
            var frames = 1;
            var frame_dur = 1;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
		//Does not exist
		case 6:
            var frames = 3;
            var frame_dur = 4;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
		//Falling
		case 7:
            var frames = 1;
            var frame_dur = 1;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
		//Hurt
		case 8:
            var frames = 1;
            var frame_dur = 1;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break
		//Does not exist
		case 9:
            var frames = 1;
            var frame_dur = 1;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
    }
}

if (x != clamp(x, blastzone_l, blastzone_r) || y > blastzone_b){
	player_id.tailsdidpressdownbwhenthingisactive = 0
	sound_play(asset_get("mfx_coin"));
	player_id.tailsisrobotout = false
    instance_destroy();
    exit;
}

//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && state != 8) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
	setState(8);
}

//If not already at the sprite it should be, switch to the new sprite
if (sprite_index != sprite[state]){
    sprite_index = sprite[state];
}

//Make time progress
if !hitstop{
    state_timer++;
}

if (!collision_rectangle( x + 35 * spr_dir, y + 20, x + 39 * spr_dir, y - 20, asset_get("par_block"), true, true )) && (!place_meeting( x, y, asset_get("par_block"))){
	at_ledge = true
} else {
	at_ledge = false
}

if (!collision_rectangle( x + 40, y + 40, x - 40, y - 40, asset_get("par_block"), true, true )){
	robot_on_plat = true
} else {
	robot_on_plat = false
}

//if (!free && !collision_line(x+16*spr_dir, y-16, x+16*spr_dir, y+16, asset_get("par_block"), 0, 1)){
//	at_ledge = true;
//} else {
//	at_ledge = false;
//}

draw_debug_text( x, y - 10, string(at_ledge))

exist_timer++;

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;