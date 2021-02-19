
/*
			if effect == 4 && spr_dir > 0 {
				effect = 3;
			}
			if effect == 3 && spr_dir < 0 {
				effect = 4;
			}
*/

if state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR {
recolor = 0;
}
if !bake_mode && bake_sound > -1 {
		sound_stop(bake_sound);
		bake_sound = -1;
}
var shadered = 0;

if clinging {
	vsp = -4+(state_timer*0.05);
	if !place_meeting(x-spr_dir,y-20,asset_get("par_block")) {
		state = PS_DOUBLE_JUMP;
		state_timer = 0;
		spr_dir *= -1;
		vsp = -5;	
		clinging = false;
	}
} /*else {
	if old_cling && jump_down && state_timer <= 59{
		state = PS_DOUBLE_JUMP;
		state_timer = 0;
		spr_dir *= -1;
		vsp = -5;
	}
}
*/

old_cling = clinging;

if !hitpause && state_timer == 1 && (state == PS_PARRY or state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_BACKWARD or state == PS_TECH_FORWARD or state == PS_TECH_GROUND or state == PS_WALL_TECH) {
	sound_play(asset_get("sfx_frog_nspecial_shove"), 0, noone, 0.3, 1.1)
}

if state == PS_ATTACK_GROUND && attack == AT_FSTRONG {
	if get_window_value(attack,window,AG_WINDOW_TYPE) == 99 && window_timer == 0 {
		x += 12*spr_dir
	}
	if get_window_value(attack,window,AG_WINDOW_TYPE) == 98 && window_timer == 0 {
		x += 10*spr_dir
	}
}

if state == PS_WALK_TURN or state == PS_DASH_TURN {
	is_turning = 1;
} else if state != PS_ATTACK_GROUND is_turning = 0;
/*
with (asset_get("pHitBox")) {
	if player_id = other.id && hitbox_timer = 0 && other.spritesdone[attack] == 0 {
	/*
		spawn_hit_fx(bbox_left,bbox_top,player_id.hfx[1])
		spawn_hit_fx(bbox_right,bbox_top,player_id.hfx[1])
		spawn_hit_fx(bbox_left,bbox_bottom,player_id.hfx[1])
		spawn_hit_fx(bbox_right,bbox_bottom,player_id.hfx[1])
	/
		var h = instance_create(x,y,"obj_article2")
		h.sprite_index = sprite_index
		h.image_index = image_index
		h.owner = id;
		h.visible = true;
		h.image_xscale = image_xscale
		h.image_yscale = image_yscale
	}
}
*/
var d = 0;
if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) && (attack == AT_UAIR or attack == AT_UTILT or (attack == AT_USTRONG && (window >= 3 && window <= 5))) {
	d = 200
} 
hud_offset = floor(lerp(hud_offset, d, 0.1))

if (state == PS_FIRST_JUMP) && state_timer == 1 {
	if vis_full_hop && prev_state == PS_JUMPSQUAT && (prev_prev_state == PS_DASH) {
		vsp -= (2 + has_rune("A")*2)
		hsp += (3 + (has_rune("A")*3))*spr_dir
		sound_play(asset_get("sfx_waveland_wra"))
	}
	sound_play(asset_get("sfx_frog_nspecial_shove"), 0, noone, 0.3, 1.3)	
}
if state == PS_DOUBLE_JUMP && state_timer == 1 {
	if sign(right_down-left_down) != 0 && sign(right_down-left_down) != spr_dir {
		animation_variant = 1;
	} else animation_variant = 0;
}
if place_meeting(x,y,obj_article1) {
	if vsp >= 0 djumps = 0;
	if state == PS_DOUBLE_JUMP && state_timer == 1 {
		hsp = max_jump_hsp*(right_down-left_down)
	}
}
if bake_time == -1 && !free && place_meeting(x,y+1, obj_article_platform) {
	bake_time = 0;
}


if state == PS_CROUCH && state_timer == 1 {
	sound_play(sound_get("squeak0"), 0, noone, 0.1, 0.9 + random_func(0, 1, 0)*0.2)
}
if state == PS_IDLE && state_timer == 1 && prev_state == PS_CROUCH {
	sound_play(sound_get("squeak1"), 0, noone, 0.1, 0.9 + random_func(0, 1, 0)*0.2)
}


if state_cat == SC_HITSTUN {
	stun_cooldown = 5;
} else stun_cooldown -= (stun_cooldown > 0)

var oldbake = bake_time;
if bake_time != -1 bake_time++;

if (bake_time == -1 && has_rune("J")) bake_time++;
if (bake_time >= 0 && !bake_mode && has_rune("L")) bake_time = min(bake_time+1, bake_max);

if oldbake == -2 && bake_time = -1 refresh_alpha = 1;
if bake_time >= 0 {
	if bake_time >= bake_max + bake_reset {
		bake_time = -bake_cooldown
		spawn_hit_fx(x, y, hfx[2])
		sound_play(asset_get("sfx_forsburn_spew2"))
		//effect = random_func(0, 4, 1)+1
	}
	
	bake_mode = (bake_time >= bake_max) + (bake_time >= bake_max+bake_armor)
	super_armor = 0;
	if bake_mode == 1 {
		if !stun_cooldown && !(state == PS_PARRY && window == 1) super_armor = 1;
		var c = 0.5+(1-((bake_time-bake_max)/bake_reset))*0.5
		outline_color = [219*c, 120*c, 0]
		shadered = 1;
		if bake_sound == -1 bake_sound = sound_play(asset_get("sfx_ell_missile_loop"), 1, noone, 0.3, 0.5)
	} 
	else if bake_mode == 0{
		var c = ease_expoIn(0, 1, bake_time, bake_max)
		outline_color = [219*c, 120*c, 0]
		

		shadered = 1;
	}
	
	
	if bake_time == bake_max {
		sound_play(sound_get("ding"), 0, noone, 0.8)
		spawn_hit_fx(x, y, hfx[0])
		if self_effect > 0 {
			sound_play(sound_get("ding"), 0, noone, 0.7, 0.5);
		}
		var p = 0;
		repeat(prox_limit) {
			if instance_exists(prox_ins[p]) && !prox_ins[p].free {

				prox_ins[p].vsp = -13;
			}
			p++;
		}
	}
	if bake_time >= bake_max && self_effect > 0 && !stun_cooldown && !hitpause {
		sound_play(sound_get("sizzle"), 0, noone, 0.1, 1)

		attack_end(AT_NSPECIAL);
		var b = create_hitbox(AT_NSPECIAL, self_effect, x, y);
		spawn_hit_fx(x, y-40, hfx[8]);

		self_effect = 0;

	}
	


	if bake_time mod 10 == 0 && !bake_mode {
//	if bake_time mod floor(clamp((1-(bake_time/bake_max))*20, 2, 20)) == 0 && !bake_mode {
	var mr = 20;
		spawn_hit_fx((bbox_left-mr)+random_func(0,(bbox_right-bbox_left)+mr*2, 1), (bbox_top-mr)+random_func(1,(bbox_bottom-bbox_top)+mr*2, 1), hfx[1])
	}
}

		if refresh_alpha > 0 {
		outline_color = [255*refresh_alpha, 255*refresh_alpha, 255*refresh_alpha]
		refresh_alpha -= 0.1;
		shadered = 1;
		}


if self_effect {
	self_effect_time++;
} else self_effect_time = 0;

if state == PS_PARRY {
hurtboxID.sprite_index = crouchbox_spr;
}

if shadered init_shader();

if swallowed == 1{
	swallowed = 0

	var ki = sprite_get("k_icon")
	print_debug("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")

	with enemykirby {
		sound_play(sound_get("copy"))

		newicon = ki

		amarelle_cycle_effect = 1;
		amarelle_old_player = noone;
		amarelle_bake_mode = 0;
		amarelle_bake_time = -1;
		amarelle_bake_max = other.bake_max
		amarelle_bake_armor = other.bake_armor
		amarelle_bake_reset = other.bake_reset
		amarelle_bake_cooldown = other.bake_cooldown;
		
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("AT_NSPECIAL_INHALE"));
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("AT_NSPECIAL_INHALE_hurt"));

		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 22);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 5);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 16);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sound_get("nspecial_swallow"));
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 4);

		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 69);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 26);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, sn);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 4);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, sound_get("nspecial_down"));


		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 14);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 28);
		
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 69);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 69);
		set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 69);
	}
} if instance_exists(enemykirby) {
	var so_app = sound_get("applyloud");
	var so_done = sound_get("ding");
	
	with (obj_article3) {
		if orig_player_id == other.id {
			copy_player_id = other.enemykirby
		}
	}
	
	with (enemykirby) {
		if amarelle_bake_time != -1 amarelle_bake_time++;
		if amarelle_bake_time >= amarelle_bake_max + amarelle_bake_reset {
			amarelle_bake_time = -amarelle_bake_cooldown;
			with (other) {var h = spawn_hit_fx(other.x, other.y, hfx[2]); h.depth = other.depth+2}
			sound_play(asset_get("sfx_forsburn_spew2"))
		}

		amarelle_bake_mode = 0;
		if amarelle_bake_time >= amarelle_bake_max amarelle_bake_mode++;
		if amarelle_bake_time >= amarelle_bake_max+amarelle_bake_armor amarelle_bake_mode++;

		
		if amarelle_bake_time mod floor(clamp((1-(amarelle_bake_time/amarelle_bake_max))*20, 2, 20)) == 0 && !amarelle_bake_mode {
		var mr = 20;
			with (other) {spawn_hit_fx((other.bbox_left-mr)+random_func(0,(other.bbox_right-other.bbox_left)+mr*2, 1), (other.bbox_top-mr)+random_func(1,(other.bbox_bottom-other.bbox_top)+mr*2, 1), hfx[1])}
		}		
		
		
		if amarelle_bake_time == amarelle_bake_max {
			with (other) {var h = spawn_hit_fx(other.x, other.y, hfx[0]); h.depth = other.depth+2}
			sound_play(so_done);
		}
		if amarelle_bake_time == -1 && (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) && (attack == AT_FSPECIAL or attack == AT_USPECIAL or attack == AT_DSPECIAL or attack == AT_EXTRA_3){
			amarelle_bake_time = 0;
		}
		if has_hit_player && hit_player_obj != amarelle_old_player {
			amarelle_old_player = hit_player_obj;
			//print_debug("STARTING")
			if !amarelle_bake_mode { //Apply
				if (my_hitboxID.attack == AT_FSPECIAL or my_hitboxID.attack == AT_USPECIAL or my_hitboxID.attack == AT_DSPECIAL or my_hitboxID.attack == AT_NSPECIAL) {
					sound_play(so_app);
					//print_debug("APPLIED APPLIED APPLIED APPLIED APPLIED APPLIED APPLIED APPLIED APPLIED APPLIED APPLIED APPLIED APPLIED APPLIED APPLIED APPLIED APPLIED APPLIED APPLIED APPLIED APPLIED ")
					hit_player_obj.amarelle_effect[0] = amarelle_cycle_effect;
					hit_player_obj.amarelle_player = id;
					amarelle_cycle_effect++;
					if amarelle_cycle_effect > 4 amarelle_cycle_effect = 1
				}
			} else {//submit
				//print_debug("SUBMITTING???")
				if hit_player_obj.orig_knock > 6 && hit_player_obj.amarelle_effect[0] > 0 {
				
					hit_player_obj.amarelle_should_submit = 1;
				}
			}
		}
		if !has_hit_player {
			amarelle_old_player = noone;
		}
	}
}
if bake_time > 0 
//b//ake_draw = min(lerp(bake_draw,1-(bake_time/bake_max), 0.1), 1-(bake_time/bake_max))
bake_draw = 1-(bake_time/bake_max)
else
bake_draw = 0

if bake_time >= 0 &&  bake_time < bake_max && bake_time mod 30 == 0 {
	var vol = 1;
	if bake_max - bake_time > 90 vol = 0; //vol -= bake_time*0.006
		sound_play(asset_get("sfx_ice_chain"), 0, noone, vol, 1.2 - (bake_time mod 60 == 0)*0.3 )
}
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 11;
    trummelcodecsprite1 = sprite_get("trummel");
    trummelcodecsprite2 = sprite_get("X");
	var i = 0;
    //Page 0
    trummelcodecspeaker[i] = 2;
    trummelcodecexpression[i] = 0;

    trummelcodecline[i,1] = "im hungy";
    trummelcodecline[i,2] = "";
    trummelcodecline[i,3] = "";
	trummelcodecline[i,4] = "";

    i++;
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 0;
	
    trummelcodecline[i,1] = "Well, we're gonna have to";
    trummelcodecline[i,2] = "wait a little longer for";
    trummelcodecline[i,3] = "lunch. Amarelle's here.";
	trummelcodecline[i,4] = "";

    i++;
    trummelcodecspeaker[i] = 2;
    trummelcodecexpression[i] = 0;
	
    trummelcodecline[i,1] = "foond,,,";
    trummelcodecline[i,2] = "";
    trummelcodecline[i,3] = "";
	trummelcodecline[i,4] = "";

    i++;
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 0;
	
    trummelcodecline[i,1] = "I wouldn't try biting into";
    trummelcodecline[i,2] = "them unless you want to";
    trummelcodecline[i,3] = "get burned.";
	trummelcodecline[i,4] = "";
	
    i++;
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 5;
	
    trummelcodecline[i,1] = "And get your teeth";
    trummelcodecline[i,2] = "kicked in.";
    trummelcodecline[i,3] = "";
	trummelcodecline[i,4] = "";
	
    i++;
    trummelcodecspeaker[i] = 2;
    trummelcodecexpression[i] = 0;
	
    trummelcodecline[i,1] = "its ok i got a lot";
    trummelcodecline[i,2] = "";
    trummelcodecline[i,3] = "like 12000";
	trummelcodecline[i,4] = "";
	
    i++;
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 4;
	
    trummelcodecline[i,1] = "well yes but you get my";
    trummelcodecline[i,2] = "point. it'll hurt like";
    trummelcodecline[i,3] = "heck.";
	trummelcodecline[i,4] = "";
	
    i++;
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 1;
	
    trummelcodecline[i,1] = "Thankfully, she doesn't";
    trummelcodecline[i,2] = "have much in terms of";
    trummelcodecline[i,3] = "range, so we should be";
	trummelcodecline[i,4] = "able to zone her out.";
	
    i++;
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 0;
	
    trummelcodecline[i,1] = "...but she DOES have soft";
    trummelcodecline[i,2] = "armor on a few moves.";
    trummelcodecline[i,3] = "Too many, if you ask me.";
	trummelcodecline[i,4] = "";
	
    i++;
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 4;
	
    trummelcodecline[i,1] = "AND she gets super armor";
    trummelcodecline[i,2] = "for a few frames when";
    trummelcodecline[i,3] = "she's fully baked. Like,";
	trummelcodecline[i,4] = "seriously, come ON.";
	
    i++;
    trummelcodecspeaker[i] = 2;
    trummelcodecexpression[i] = 3;
	
    trummelcodecline[i,1] = "lol";
    trummelcodecline[i,2] = "              baked";
    trummelcodecline[i,3] = "";
	trummelcodecline[i,4] = "";
	
    i++;
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 4;
	
    trummelcodecline[i,1] = "...I'm not even doing the";
    trummelcodecline[i,2] = "laugh track for that one.";
    trummelcodecline[i,3] = "For shame, Trum.";
	trummelcodecline[i,4] = "For shame.";
}

if get_btt_data { //Get data for Break The Targets
	course_name = "Amarelle's Course";
	//Set the spawn properties
	respawn_point = [[26,30],[0,0],1];
	//Set the collision of the solid sprites to precise
	sprite_change_collision_mask("btt_solid",true, 1, 0, 0, 0, 0, 0 );  
	room_add(1,[
	    [ //Each Cell
	        [0,0], //Cell Coordinates
	        [
	        	//Targets
		        [10, 5, 2, 0, -5, [0, 0, 0, [[0,0],[0,0]], 0, 0, 0, 0], [0]],
				[10, 22, 13, 0, -5, [1, 0, 0, [[0,0],[0,0]], 0, 0, 0, 0], [0]],
				[10, 42, 15, 0, -5, [2, 0, 0, [[0,0],[0,0]], 0, 0, 0, 0], [0]],
				[10, 39, 21, 0, -5, [3, 0, 0, [[0,0],[0,0]], 0, 0, 0, 0], [0]],
				[10, 34, 25, 0, -5, [4, 0, 0, [[0,0],[0,0]], 0, 0, 0, 0], [0]],
				[10, 5, 25, 0, -5, [5, 0, 0, [[0,0],[0,0]], 0, 0, 0, 0], [0]],
				[10, 31, 36, 0, -5, [6, 0, 0, [[0,0],[0,0]], 0, 0, 0, 0], [0]],
				[10, 44, 36, 0, -5, [7, 0, 0, [[0,0],[0,0]], 0, 0, 0, 0], [0]],
				[10, 22, 22, 0, -5, [8, 0, 0, [[0,0],[0,0]], 0, 0, 0, 0], [0]],
				[10, 22, 29, 0, -5, [9, 0, 0, [[0,0],[0,0]], 0, 0, 0, 0], [0]],
		        //Solid Ground
		    	[1, 0, 0, 2, 0, [sprite_get("btt_solid_0"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	//Plats
		    	[1, 46, 49, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	[1, 64, 71, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]]
	            ]
	        ],
	    //Blastzones
	    [ //Each Cell
	        [0,1], //Cell Coordinates
	        [
	            [4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
	            ]
	        ],
	    [
	        [1,1],
	        [
	        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
	            ]
	        ],
	    [ //Each Cell
	        [-1,1], //Cell Coordinates
	        [
	        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
	            ]
	        ]
	    ]);
}


#define room_add(_room_id,room_data) //Adds a new room to the scene
with obj_stage_article if num == 5 {
	var _room_id_ind = array_find_index(array_room_ID,_room_id);
	if _room_id_ind == - 1 {
	    if debug print_debug("[RM] Adding... "+string(_room_id));
	    array_push(array_room_data,room_data);
	    array_push(array_room_ID,_room_id);
	} else {
	    array_room_data[_room_id_ind] = room_data;
	    array_room_ID[_room_id_ind] = _room_id;
	}
}