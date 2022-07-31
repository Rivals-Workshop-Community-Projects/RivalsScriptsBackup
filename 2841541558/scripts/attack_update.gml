//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}


// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	case AT_DATTACK:
		if window == 1 && window_timer == phone_window_end{
			sound_play(asset_get("sfx_kragg_spike"),false,noone,0.8);
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		break;
	case AT_FTILT:
		if window == 2 && window_timer == 4{
			sound_play(asset_get("sfx_leaves"),false,noone,0.8);
			sound_play(asset_get("sfx_syl_dspecial_plantaway"));
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		break;
	case AT_DTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;
	case AT_UTILT:
	if window == 1 && window_timer == 10{
			sound_play(asset_get("sfx_leaves"),false,noone,1.3);
		}
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		if window == 2 && window_timer == 9{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		break;
	case AT_FSTRONG:
		if window == 1 && window_timer == 3{
			sound_play(asset_get("sfx_syl_dstrong"),false,noone,1.3);
		}
		if window == 2 && window_timer == 2{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
		}
		if window == 2 && window_timer == 7{
			sound_play(asset_get("sfx_syl_fstrong_final"),false,noone,0.8,0.9);
			sound_play(asset_get("sfx_leaves"),false,noone,0.8);
			sound_play(asset_get("sfx_syl_dspecial_plantaway"));
		}
		break;
	case AT_USTRONG:
		if window == 1 && window_timer == 1{
		sound_play(asset_get("sfx_may_root"),false,noone,1,1.4);
		}
		if window == 2 && window_timer == 8{
			sound_play(asset_get("sfx_kragg_spike"),false,noone,0.8);
			sound_play(asset_get("sfx_syl_dspecial_plantaway"));
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;
	case AT_DSTRONG:	
		if window == 2 && window_timer == 3{
			sound_play(asset_get("sfx_ori_stomp_hit"));
		}
		if window == 4 && window_timer == 16{
			sound_play(asset_get("sfx_leaves"),false,noone,0.6,0.8);
		}
		break;
	case AT_FAIR:
		if window == 1 && window_timer == 12{
			sound_play(asset_get("sfx_leaves"),false,noone,0.8);
			sound_play(asset_get("sfx_syl_dspecial_plantaway"));
		}
		break;
	case AT_BAIR:
    	var correct_window;
    	correct_window = window == 2 and window_timer mod 3 == 0 and window_timer != 0;
    
    	if (correct_window and !hitpause)
    	{	
        	var hitbox;
        	hitbox = 2 + (window_timer > 6);
        
        	create_hitbox(attack, hitbox, x, y)
    	}
    	if window == 1 && window_timer == 5{
			sound_play(asset_get("sfx_syl_dstrong"));
		}
		if window == 1 && window_timer == 9{
            take_damage(player,1,1);
		}
		if window == 2 && window_timer == 8 && !hitpause {
			take_damage(player,1,-1);
		}
    	break;
	case AT_UAIR:
		if window == 2 && window_timer == 6{
			sound_play(asset_get("sfx_bite"),false,noone,1.0,1.2);
		}
		if window == 3 && window_timer == 2 && !hitpause{
			sound_play(asset_get("sfx_bite"),false,noone,1.0,1.3);
		}
		if window == 3 && window_timer == 6 && !hitpause{
			sound_play(asset_get("sfx_bite"));
		}
		if window == 3 && window_timer == 10 && !hitpause{
			sound_play(asset_get("sfx_bite"),false,noone,1.0,0.8);
		}
		break;
	case AT_DAIR:	
		if window == 2 && window_timer == 3{
			sound_play(asset_get("sfx_syl_dspecial_plantaway"));
		}
		break;
	case AT_NSPECIAL:
	can_wall_jump = true;
	attack_down = special_down;
	
	if window == 1 {
		if vsp > 2 {
			vsp = 2;
		}

	if window_timer == 1 {
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 2);
	}

	if strong_charge = 30 || nspec_charge == 1{
		nspec_charge = 1;
		window = 3;
		window_timer = 0;
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 7);
	}
}
	if window = 2 {
		if vsp > 2 {
			vsp = 2;
		}
		
		if window_timer == 1{
			sound_play(sound_get("whispybreath"));
		}
	}
	if window = 3 || window = 1{
		if(shield_pressed){
			strong_charge = 60;
			window = 7;window_timer = 0;
		}		
	}
	if (window = 4  && window_timer == 4 && !hitpause){
		sound_play(asset_get("sfx_bird_sidespecial"));
	}
	if window = 5 {
		if vsp > 2 {
			vsp = 2;
		}
		if (window_timer == 1 && !hitpause){
			nspec_charge = 0;
			hsp -= 4*spr_dir;
		}
		with(oPlayer) {
	        if self != other {
	            if ((x > other.x && other.spr_dir == 1) or (x < other.x && other.spr_dir == -1)) && abs(x - other.x) < 200 && abs(y - other.y) < 65 {
	                if abs(hsp) < 9 && abs(vsp) < 3 {
	                    hsp += x > other.x ? 2 : -2;
	                    vsp += y > other.y ? 2 : -2;
	                }
	            }
	        }
	    }
	}
	
	break;
	
	
	
	case AT_FSPECIAL:
		//root
		can_move = false;
		can_fast_fall = false;
		if (window == 1){
			if (!free){
				rootCannotBePlaced = false;
				if (collision_rectangle(x-16, y, x+16, y+6, asset_get("par_block"), 0, 1))
				&& !(collision_rectangle(x-16, y, x+16, y+6, asset_get("par_jumpthrough"), 0, 1)){
					//print("touching_ground");
					//var groundBelowMe = collision_line(x - 2, y+4, x + 2, y+1000, asset_get("par_block"), 0, 1)
					root_grounded_type = 1;
				} else if !(collision_rectangle(x-16, y, x+16, y+6, asset_get("par_block"), 0, 1))
				&& (collision_rectangle(x-16, y, x+16, y+6, asset_get("par_jumpthrough"), 0, 1)){
					//print("touching_plat");
					//var groundBelowMe = collision_line(x - 2, y+4, x + 2, y+1000, asset_get("par_block"), 0, 1)
					root_grounded_type = 2;
				}
			} else if (free){
				if (collision_rectangle(x-2, y, x+2, y+1000, asset_get("par_block"), 0, 1)){
					print("Ground found!");
					root_grounded_type = 1;
					//rootYPlaceOffset = floor(point_distance(asset_get("par_block"), asset_get("par_block"), x, y));
					rootYPlaceOffset = 2;
					rootCannotBePlaced = false;
				} else {
					print("Neither a platform or the ground were found.");
					rootYPlaceOffset = -2;
					rootCannotBePlaced = true;
				}
			}
			
			//print("Root Grounded Type: " + string(root_grounded_type));
			
		}
		switch(window){
			case 1:
				//
				
				rootYPlaceOffsetReal = y+rootYPlaceOffset;
				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
					if (!instance_exists(whispyRoot)){
						if (!free){
							if (root_grounded_type == 1){
								if (collision_line(x+(40*spr_dir), y-600, x+(40*spr_dir), y+600, asset_get("par_block"), 0, 1)){
									var rootSpawnX = 40;
								} else if (!collision_line(x+(40*spr_dir), y-600, x+(40*spr_dir), y+600, asset_get("par_block"), 0, 1)){
									var rootSpawnX = -12;
								}
							} else if (root_grounded_type == 2){
								if (collision_line(x+(40*spr_dir), y-600, x+(40*spr_dir), y+600, asset_get("par_jumpthrough"), 0, 1)){
									var rootSpawnX = 40;
								} else if (!collision_line(x+(40*spr_dir), y-600, x+(40*spr_dir), y+600, asset_get("par_jumpthrough"), 0, 1)){
									var rootSpawnX = -12;
								}
							}
						} else if (free){
							if (root_grounded_type == 1){
								if (collision_line(x+(2*spr_dir), y, x-(2*spr_dir), y+600, asset_get("par_block"), 0, 1)){
									var rootSpawnX = 0;
								} else if !(collision_line(x+(2*spr_dir), y, x-(2*spr_dir), y+600, asset_get("par_block"), 0, 1)){
									var rootSpawnX = -12;
								}
							} else if (root_grounded_type == 2){
								if (collision_line(x+(40*spr_dir), y-600, x+(40*spr_dir), y+600, asset_get("par_jumpthrough"), 0, 1)){
									var rootSpawnX = 20;
								} else if !(collision_line(x+(40*spr_dir), y-600, x+(40*spr_dir), y+600, asset_get("par_jumpthrough"), 0, 1)){
									var rootSpawnX = -12;
								}
							}
							//var rootSpawnX = 60;
							//print("AAA");
						}
						if (rootCannotBePlaced == false){
							if (free){//airborne
								whispyRoot = instance_create(x+(rootSpawnX*spr_dir),get_stage_data(SD_Y_POS)-10,"obj_article1");
							} else if (!free){//grounded
								whispyRoot = instance_create(x+(rootSpawnX*spr_dir),y-1,"obj_article1");
							}
							whispyRoot.root_grounded_type = root_grounded_type;
						} else if (rootCannotBePlaced == true){
							sound_play(asset_get("sfx_pillar_crumble"));
							window = 4;
							window_timer = 0;
						}
						rootYPlaceOffset = 0;
						//print("holy crap root now exists!!");
					} else if (instance_exists(whispyRoot)){
						//print("lies");
						if (whispyRoot.state == 2){
							whispyRoot.state = 8;
							whispyRoot.state_timer = 0;
							whispyRoot.image_index = 0;
							//print("WOOO THE ROOT IS MOVING");
						}
					}
				} 
				break;
			case 2:
				//
				if (whispyRoot.state == 3){
					if (special_pressed){
						window = 3;
						window_timer = 0;
						if (instance_exists(whispyRoot)){
							//print("ok root pls attack");
							whispyRoot.state = 4;
							whispyRoot.state_timer = 0;
							whispyRoot.image_index = 0;
							whispyRoot.spr_dir = spr_dir;
							sound_play(asset_get("sfx_may_root"),false,noone,0.9,1.4);
						}
					}
					if (shield_pressed){
						window = 4;
						window_timer = 0;
						if (instance_exists(whispyRoot)){
							//print("ok root pls stop and hold your position!");
							sound_play(asset_get("sfx_plant_ready"));
							whispyRoot.state = 7;
							whispyRoot.state_timer = 0;
							whispyRoot.image_index = 0;
						}
					}
				}
				break;
			case 3:
				//
				break;
			case 4:
				move_cooldown[AT_FSPECIAL] = 45;
				break;
		}
		break;
	
	
	
	case AT_USPECIAL:
			var uspecial_move_speed = 4;
			var uspecial_hitbox = AT_USPECIAL;
			var uspecial_hbox_num = 5;
			var uspecial_soft_armor = 4;
			var uspecial_max_fall = 18;

    		can_fast_fall = false;
    		
			if (window == 1 && !hitpause) {
				uspecial_hsp = 0;
				vsp = min(vsp, 4);
				
				if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
					spawn_base_dust(round(x), round(y), "doublejump")
				}
			}
			if (window == 2 && window_timer == 1 && !hitpause) {
				soft_armor = 4;
				uspecial_hsp += uspecial_move_speed * (right_down - left_down)
			}
			if (window == 3 && !hitpause) {
				can_move = false;
				
				grav = 0.5;
				if (window_timer == 12) {
					soft_armor = 0;
				}
			}
			if (window == 4 && !hitpause) {
				soft_armor = 4;
				max_fall = uspecial_max_fall;
			
				can_move = false;
				can_wall_jump = true;
				
				//Landing
				if (!free) {
					soft_armor = 0;
					window ++;
					window_timer = 0;
					sound_play(asset_get("sfx_syl_ustrong"))
					sound_play(asset_get("sfx_syl_dstrong"))
					sound_play(asset_get("sfx_ori_stomp_hit"),false,noone,1.3)
					destroy_hitboxes();
				}
				else if (shield_pressed) {
		            window = 7;
		            window_timer = 0;
		            vsp = 0;
		            clear_button_buffer(PC_SHIELD_PRESSED)
		            attack_end();
					destroy_hitboxes();
					sound_play(asset_get("sfx_forsburn_consume_fail"));
		        }
			}
			if (free && window > 2 && !hitpause) {
				uspecial_hsp += 0.15 * (right_down - left_down)
				uspecial_hsp = clamp(uspecial_hsp, -uspecial_move_speed, uspecial_move_speed)
				
				hsp = uspecial_hsp;
			}
		break;
	
	
	
	case AT_DSPECIAL:
	if window == 1 && window_timer == 1 {
		aused = 0
	}
	if (window == 1 && window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH)) {
		if (apples >= 2) {
			window = 4;
			window_timer = 0;
		}
	}
	if window == 2 && window_timer == 1 {
		sound_play(asset_get("sfx_leaves"),false,noone,0.8);
	}
	
	if window == 3 && window_timer == 8 && special_down {
		if aused == 0 && apples < 2 {
			aused += 1
			window = 2
			window_timer = 1
		}
	}
	if window == 3 && window_timer == 1 {
		sound_play(asset_get("sfx_leaves"),false,noone,0.8,0.8);
		
		if aused { instance_create(x + 60*spr_dir, y,  "obj_article2") } else { instance_create(x + 80*spr_dir, y,  "obj_article2") }
	}
	if window == 4 && window_timer == 1 {
		sound_play(asset_get("sfx_leaves"),false,noone,0.8);
		sound_play(asset_get("sfx_syl_nspecial_flowerhit"),false,noone,0.8);
	}
	break;
	case AT_TAUNT:
	if window == 1 && window_timer == 1 {
		sound_play(asset_get("sfx_leaves"),false,noone,1.0,0.8);
	}
	if window == 1 && window_timer == 10 {
		sound_play(asset_get("sfx_leaves"),false,noone,1.0);
	}
	break;
}
	
	



#define beam_clash_logic

if !beam_clash_buddy.doing_goku_beam{
	beam_clash_buddy.beam_clash_buddy = noone;
	beam_clash_buddy = noone;
}
else{
	if beam_clash_timer >= beam_clash_timer_max{
		var winner = noone;
		if beam_length > beam_clash_buddy.beam_length{
			winner = self;
		}
		if beam_length < beam_clash_buddy.beam_length{
			winner = beam_clash_buddy;
		}
		if winner == self{
			window = 5;
			window_timer = 0;
		}
		else{
			beam_juice = 0;
		}
		if winner == beam_clash_buddy{
			
		}
		else{
			beam_clash_buddy.beam_juice = 0;
		}
	}
	else{
		beam_clash_timer++;
		if special_pressed{
			clear_button_buffer(PC_SPECIAL_PRESSED);
			beam_length += 32;
			beam_clash_buddy.beam_length -= 32;
			beam_juice = min(beam_juice + 20, beam_juice_max);
			beam_clash_buddy.beam_juice = max(beam_clash_buddy.beam_juice - 10, 10);
			sound_play(sfx_dbfz_kame_charge, false, noone, 1, 1 + beam_juice * 0.001);
		}
	}
}




#define spawn_base_dust // written by supersonic
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

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
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;


