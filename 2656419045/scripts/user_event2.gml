//animation.gml
run_animation_in_pre_draw = false;

repeat_animation = get_gameplay_time() == last_animation_time;
last_animation_time = get_gameplay_time();

//#region PHASE 1
//Prepare animations
if(debug_skip_animation) {
	neo_power_checked = neo_power; neo_animstate_checked = neo_animstate; exit;
}

//Handle power-up overrides
neo_power_checked = neo_power;
if(hitstop && transition_to_frames > 0 && transition_to_frames % 10 < 5) neo_power_checked = transition_to_power;
neo_power_prefix_checked = (neo_power_checked.has_alts && neo_char.use_alts)?neo_power_checked.alt_prefix:neo_power_checked.prefix;

//prepare for pre_draw
prev_neo_image = neo_image;
var holp_depth_offset = 1, holp_x_mult = 1, new_neo_draw_x = neo_draw_x, new_neo_draw_y = neo_draw_y;
if(instance_exists(neo_data.carried_by_id) || animating_hitpause || (!animation_frozen && !hitpause && !cancel_state_processing)) {
	neo_sprite_name = null;
	if(override_anim_timer > 0 && override_ignore) {
		override_anim_timer--;
		if(override_anim_timer == -1) {
				neo_animstate_checked = override_anim_animstate;
		}
		else {
			neo_animstate_checked = neo_animstate;
		}
	}
	else if(override_anim_timer > 0) {
		if(!override_ignore) neo_animstate_checked = override_anim_animstate;
		override_anim_timer--;
	}
	else {
		if(override_anim_timer == -1) {
				neo_animstate_checked = override_anim_animstate;
		}
		else {
			neo_animstate_checked = neo_animstate;
		}
	}
	
	if(override_anim_timer == -1) {
			neo_animstate_checked = override_anim_animstate;
	}
	else {
		// neo_animstate_checked = neo_animstate;
		var reset_rotation = true;
		
		//Inherit the correct animstate from the Mario carrying us
		var reset_neo_image_to = 0;
		if(neo_animstate_checked == "carried") {
			var bottom_of_stack = find_stack_bottom_recursive(id);
			if(string_pos("lift_", bottom_of_stack.neo_animstate) == 1) {
				neo_animstate_checked = (`carried_${string_delete(bottom_of_stack.neo_animstate, 1, 5)}`);
				reset_neo_image_to = bottom_of_stack.theoretical_neo_image;
			}
			else neo_animstate_checked = "idle";
		}
		else if(neo_animstate_checked == "carried_shell") {
			var bottom_of_stack = find_stack_bottom_recursive(id);
			switch(bottom_of_stack.neo_animstate) {
				case "lift_twirl": case "lift_spin":
					neo_animstate_checked = "carried_shell_spin";
					reset_neo_image_to = 4 - ((bottom_of_stack.theoretical_neo_image + 1) % 4);
				break;
				default:
					neo_animstate_checked = "carried_shell_duck";
				break;
			}
		}
		else if(neo_animstate_checked == "carried_grab") {
			var bottom_of_stack = find_stack_bottom_recursive(id);
			if(string_pos("lift_", bottom_of_stack.neo_animstate) == 1) {
				neo_animstate_checked = (`carried_grab_${string_delete(bottom_of_stack.neo_animstate, 1, 5)}`);
				reset_neo_image_to = bottom_of_stack.theoretical_neo_image;
			}
			else neo_animstate_checked = "idle";
		}
		else if(neo_animstate_checked == "carried_lift") {
			var bottom_of_stack = find_stack_bottom_recursive(id);
			if(string_pos("lift_", bottom_of_stack.neo_animstate) == 1) {
				neo_animstate_checked = (`carried_lift_${string_delete(bottom_of_stack.neo_animstate, 1, 5)}`);
				reset_neo_image_to = bottom_of_stack.theoretical_neo_image;
			}
			else neo_animstate_checked = "idle";
		}
		
		switch(neo_animstate_checked) {
			//#mark Animation Code
			case "fall":
				neo_image = 1;
			break;
			case "plasma_shocked":
				neo_animtimer += 0.25;
				neo_image = floor(neo_animtimer) % 2;
			break;
			case "walk": case "run": case "grab_walk": case "grab_run": case "lift_walk": case "lift_run":
				neo_animtimer += abs(hsp) / 20 + 0.05;
				var new_image = floor(neo_animtimer % 3);
				if(new_image == 2 && neo_image == 1) play_footstep_sfx();
				neo_image = new_image;
				if(neo_image == 0) { char_height += 2; holp_relative_y -= 2; }
			break;
			// case "run":
			// 	neo_animtimer += abs(hsp) / 20 + 0.05;
			// 	var new_image = floor(neo_animtimer % 3);
			// 	if(new_image == 2 && neo_image == 1) play_footstep_sfx();
			// 	neo_image = new_image;
			// 	if(neo_image == 0) char_height += 2;
			// break;
			case "jump": case "run_jump": case "long_jump":
			case "grab_jump": case "grab_run_jump": case "lift_jump": case "lift_run_jump":
				neo_image = (vsp <= 1 && free)?0:1;
			break;
			case "duck": case "grab_duck":
				if(free) neo_image = (vsp >= 0)?1:0;
				else neo_image = 0;
			break;
			case "backwards_long_jump":
				neo_image = (vsp >= 0)?0:1;
			break;
			case "tjump_twirl":
				neo_image = (neo_substatetimer * 0.4 + 1) % 4;
				
			// 	reset_rotation = false;
				
			// 	neo_animtimer++;
			// 	if(neo_animtimer % 2 == 0 && neo_animtimer <= 24) spr_angle -= 30 * spr_dir;
			// 	if(neo_animtimer == 1) sound_play(sound_get("flip"), false, noone, 0.5, 0.35);
			// 	if(neo_animtimer == 9) sound_play(sound_get("flip"), false, noone, 0.75, 0.55);
			// 	if(neo_animtimer == 24) sound_play(sound_get("flip"), false, noone, 0.6, 0.55);
			// break;
			case "triplejump":
				reset_rotation = false;
				
				neo_animtimer++;
				// if(neo_animtimer % 2 == 0 && neo_animtimer <= 32) spr_angle -= 45 * spr_dir;
				
				spr_angle = -1 * spr_dir * (
						clamp((neo_animtimer - 0) * 10, 0, 90)
						+ clamp((neo_animtimer - 9) * 17, 0, 90)
						+ clamp((neo_animtimer - 14) * 25, 0, 180)
						+ clamp((neo_animtimer - 20) * 30, 0, 180)
						+ clamp((neo_animtimer - 26) * 15, 0, 90)
						+ clamp((neo_animtimer - 30) * 10, 0, 90)
						);
				
				if(neo_animtimer == 1) sound_play(sound_get("flip"), false, noone, 0.5, 0.35);
				if(neo_animtimer == 9) sound_play(sound_get("flip"), false, noone, 0.75, 0.55);
				if(neo_animtimer == 24) sound_play(sound_get("flip"), false, noone, 0.6, 0.55);
				// if(neo_animtimer > 24 && vsp >= 0) neo_image = 1;
				// else neo_image = 0;
			break;
			case "sflip_twirl":
				neo_image = (neo_substatetimer * 0.4 + 1) % 4;
			case "sideflip":
				reset_rotation = false;
				
				if(abs(spr_angle) < 360) neo_animtimer += 1;
				else neo_animtimer += 0.47;
				
				var prev_spr_angle = spr_angle;
				spr_angle = floor(neo_animtimer) * -45 / 2 * spr_dir;
				
				if(spr_angle != prev_spr_angle && abs(spr_angle) % 360 == 180)
					sound_play(sound_get("flip"), false, noone, 1.0, 0.5);
			break;
			case "somersault":
				reset_rotation = false;
				
				neo_animtimer++;
				if(neo_animtimer % 2 == 0) spr_angle -= 45 * spr_dir;
			break;
			case "pound_twirl": case "shell_pound_twirl":
				reset_rotation = false;
				
				
				neo_animtimer++;
				// if(neo_animtimer % 3 < 2) spr_angle -= 45 * spr_dir;
				spr_angle = spr_dir * -45 * floor(neo_animtimer / 1.5);
				
				if(neo_animtimer > 1 && neo_animtimer % 4 == 0) sound_play(sound_get("flip"), false, noone, 0.3, 1.0);
			break;
			case "ground_pound":
				neo_image = !free;
			break;
			case "roll":
				reset_rotation = false;
				
				neo_animtimer -= hsp * 2.25;
				spr_angle = round(neo_animtimer / 30) * 30;
			break;
			case "death": case "burn_jump":
				neo_image = (get_gameplay_time() % 10 < 5)?1:0;
			break;
			case "spin": case "twirl": case "grab_spin": case "grab_twirl": case "lift_spin": case "lift_twirl":
				neo_animtimer += 0.5;
				neo_image = floor(neo_animtimer % 4) + ((vsp >= 0)?4:0);
			break;
			case "twirl2": case "djump_twirl":
				neo_animtimer += 0.4;
				neo_image = (neo_animtimer + 1) % 4;
			break;
			case "wall_slide":
				new_neo_draw_x -= spr_dir * 3;
			break;
			case "ice_scuttle":
				neo_animtimer += 0.45;
				var new_image = floor(neo_animtimer % 3);
				if(new_image == 2 && neo_image == 1) play_footstep_sfx();
				neo_image = new_image;
				if(neo_image == 0) { char_height += 2; holp_relative_y -= 2; }
			break;
			
			case "stall": case "stall_duck": case "flight":
			case "grab_stall": case "grab_stall_duck": case "grab_flight":
			case "lift_stall": case "lift_flight":
				neo_animtimer += 0.25;
				neo_image = floor(neo_animtimer) % 4;
			break;
			
			case "tail": case "reverse_tail":
				neo_animtimer += 0.33;
				neo_image = min(floor(0.33 + neo_animtimer), 4);
			break;
			
			case "shell_duck":
				var old_neo_image = floor(neo_image);
				neo_image += hsp / 18 * spr_dir;
				if(abs(hsp) > 4.5 && floor(neo_image) != old_neo_image && old_neo_image = 0)
					sound_play(sfx_shell_spin, false, noone, 0.35, 1.0);
			break;
			case "shell_triple_jump":
				reset_rotation = false;
				
				neo_animtimer++;
				if(neo_animtimer % 2 == 0) spr_angle -= 30 * spr_dir;
				if(neo_animtimer == 1) sound_play(sound_get("flip"), false, noone, 0.5, 0.35);
				if(neo_animtimer == 9) sound_play(sound_get("flip"), false, noone, 0.75, 0.55);
				if(neo_animtimer == 24) sound_play(sound_get("flip"), false, noone, 0.6, 0.55);
			case "shell_spin":
				var old_neo_image = floor(neo_image % 4);
				neo_image += hsp / 20 * spr_dir;
				if(abs(hsp) > 4.5 && floor(neo_image % 4) != old_neo_image && old_neo_image = 0)
					sound_play(sfx_shell_spin, false, noone, 0.35, 1.0);
				
				if(point_distance(0, 0, hsp, vsp) > 6 && get_gameplay_time() % 3 == 0) {
					var afterimage = instance_create(round(x), round(y), "obj_article1");
					
					// var alternate_spr_angle = (spr_angle + 90) % 360;
					// afterimage.x += lengthdir_x(106, alternate_spr_angle);
					// afterimage.y += lengthdir_y(106, alternate_spr_angle);
					
					afterimage.y -= 16;
					
					afterimage.variant = "afterimage";
					afterimage.sprite_index = sprite_get(`char_${neo_char.prefix}shell_shell_spin`);
					afterimage.image_index = neo_image;
					afterimage.image_angle = spr_angle;
					afterimage.image_xscale = spr_dir * 2; afterimage.image_yscale = 2;
					afterimage.uses_shader = true;
					
					afterimage.life = 8;
					afterimage.depth = depth + 1;
				}
			break;
			
			case "taunt_explode":
				var cycled_time = neo_statetimer % 85;
				neo_image = (cycled_time <= 6 || (cycled_time >= 12 && cycled_time <= 18));
			break;
			case "taunt_pluck":
				neo_image = 0;
				if(neo_statetimer >= 15) neo_image = 1;
				if(neo_statetimer >= 30) neo_image = 2;
			break;
			
			default:
				neo_image = reset_neo_image_to;
			break;
		}
		if(reset_rotation) spr_angle = 0;
	}
	
	//Generate particles from the ground based on the movetype
	switch(floor_type.ground_particle) {
		case "dust":
			switch(dust_status) {
				//#mark Dust decals
				case "Run Sub-Walking":
					create_dust_decal(spr_dir * -1, 0, 0.25, 50);
				break;
				
				case "Duck Skid": case "Skid":
					create_dust_decal(hsp / 4 + sign(hsp) * 2, 0, 0.75, 25);
				break;
				case "Skid Extension":
					create_dust_decal(spr_dir * -3, -1, 0.75, 60);
				break;
				case "Skid Extension 100%":
					create_dust_decal(spr_dir * -3, -1, 0.8, 100);
				break;
				
				case "Shell Reverse":
					create_dust_decal(spr_dir * 3, -1, 0.75, 60);
				break;
				
				case "Start Roll": case "Start Pound Roll":
					create_dust_decal(-0.45 * hsp, 0, 0.8, 100);
				break;
				case "Roll":
					if(!free && abs(hsp) > 4) {
						var new_dust = create_dust_decal(-0.25 * hsp, 0, 0.6, 40, "dust_rising");
						if(new_dust != noone) new_dust.y += 8;
					}
				break;
				case "Pound Roll":
					if(!free && abs(hsp) > 4) {
						var new_dust = create_dust_decal(-0.25 * hsp, 0, 0.6, 40, "dust_rising");
						if(new_dust != noone) new_dust.y += 8;
					}
				break;
				
				case "Ground Pound Solid":
					var rng_index = 0;
					repeat(6) {
						new_dust = create_dust_decal(0, 0.5, 0.8, 100, "dust_rising", 30, 40, 4, 8, rng_index);
						new_dust.x -= (rng_index - 2.5) * 3;
						new_dust.fake_hsp = (new_dust.x - x) / 3;
						rng_index++;
					}
				break;
				case "Ground Pound Platform":
					var rng_index = 0;
					repeat(5) {
						new_dust = create_dust_decal(0, 1.1, 0.4, 100, "dust_rising", 30, 65, 10, 8, rng_index);
						new_dust.fake_hsp = (new_dust.x - x) / 4;
						rng_index++;
					}
				break;
				case "Ground Pound Break":
					var rng_index = 0;
					repeat(5) {
						new_dust = create_dust_decal(0, 2.65, 0.4, 100, "dust", 30, 40, 8, 8, rng_index);
						new_dust.fake_hsp = (new_dust.x - x) / 5;
						rng_index++;
					}
				break;
				
				case "Land Frame":
					var rng_index = 0;
					repeat(3) {
						new_dust = create_dust_decal(hsp / 5, 0.5, 0.3, 100, "dust_rising", 20, 10, 4, 8, rng_index);
						new_dust.x -= (rng_index - 1) * 5;
						new_dust.fake_hsp += (new_dust.x - x) / 5;
						rng_index++;
					}
				break;
				case "Jump Frame":
					create_dust_decal(hsp / 4, vsp / 4, 0.35, 100, "dust", 15, 0);
					create_dust_decal(hsp / 7.6, vsp / 7.6, 0.45, 100, "dust", 20, 0);
					new_dust = create_dust_decal(hsp / 7.6, -1.25, 0.45, 100, "dust", 30, 0);
					new_dust.y += 8;
				break;
				case "Wall Jump Frame":
					create_dust_decal(spr_dir * 4, vsp / 4, 0.35, 100, "dust", 15, 0);
					create_dust_decal(spr_dir * 2, vsp / 7.6, 0.45, 100, "dust", 20, 0);
					new_dust = create_dust_decal(spr_dir * 2, -1.25, 0.45, 100, "dust", 30, 0);
					new_dust.y += 8;
					
					var rng_index = 0;
					repeat(3) {
						new_dust = create_dust_decal(0, 0.35, 0.5, 100, "dust", 40, 10, 4, 8, rng_index);
						new_dust.x -= spr_dir * 8; new_dust.y -= (rng_index - 1) * 5;
						new_dust.fake_vsp += (new_dust.y - y) / 5;
						rng_index++;
					}
				break;
			}
		break;
		case "droplets":
			switch(dust_status) {
				//#mark Droplet decals
				case "Run Sub-Walking": case "Run Accel": case "Run Against Momentum": case "Run Max":
					create_droplet(spr_dir * -1, 0.6, 2.3, -2.8, -2.5, 60, 2);
				break;
				
				case "Duck Skid": case "Skid":
					create_droplet(sign(hsp), abs(hsp) / 4 + 2, 6, -1, -8, 40, 4);
				break;
				case "Skid Extension": case "Skid Extension 100%":
					create_droplet(spr_dir * -1, 1, 7, -5.5, -4, 50, 2);
				break;
				
				case "Start Roll": case "Start Pound Roll":
					create_droplet(spr_dir * -1, 2, abs(hsp) * 0.25, -4, -3, 100, 6);
				break;
				case "Roll":
					create_droplet(spr_dir * -1, 3.0, -5.2, -3, -4, 30, 2);
				break;
				case "Pound Roll":
					create_droplet(spr_dir * -1, 4.0, -6.9, -3, -4, 40, 3);
				break;
				
				case "Ground Pound Solid": case "Ground Pound Platform":
					create_droplet(1, 4, -8, -4, -5, 100, 17, true, "droplet_friction");
				break;
				
				case "Ground Pound Break":
					create_droplet(1, 2, -4, -2, -2.5, 100, 15, true, "droplet_nocollide");
				break;
			}
		break;
	}
	// if(move_type.ground_particle == "dust") 
}
else neo_animstate_checked = neo_animstate;

decal_lines_alpha = (get_gameplay_time() % 2 == 0)?0.5:0.25;
decal_blur_alpha = (get_gameplay_time() % 6 == 0)?0.85:0.45;
//#endregion

//#region PHASE 3
var neo_sprite_override = "n/a";
if(neo_sprite_name == null) neo_sprite_name = neo_animstate_checked;
var center_sprite_x = 16;
var center_sprite_y = "bottom";

//Figure out what sprite to render based on the Animstate
//Will almost always just be the same as the animstate, but there are some exceptions
//and we will process those here
flip_spr_dir_frame = false; flip_spr_dir_against = 0; theoretical_neo_image = neo_image;
switch(neo_sprite_name) {
	case "advanced_idle":
		neo_sprite_name = down_down?"duck":"idle";
	break;
	case "reverse_fireball":
		mirror_sprite();
		neo_sprite_name = "fireball";
	case "fireball":
		substitute_anim("idle");
	break;
	case "burn_jump": case "plasma_shocked":
		neo_sprite_name = "death";
	break;
	case "fall": case "jump":
		neo_sprite_name = "jump";
	break;
	case "doublejump":
		// neo_image = (vsp <= 0.5 && free)?0:1;
		if(vsp > 6.5 || !free) {
			neo_sprite_name = "jump"; neo_image = 1;
		}
	break;
	case "triplejump":
		/*if(vsp < 0) {
			neo_sprite_name = "run"; neo_image = 0;
			// if(neo_anim)
		}
		else {
			neo_sprite_name = "jump"; neo_image = 1;
		}*/
		if(abs(spr_angle) > 180 && abs(spr_angle) < 520) {
			neo_sprite_name = "somersault"; neo_image = 0;
		}
		else if(abs(spr_angle) > 675) {
			neo_sprite_name = "jump"; neo_image = 1;
		}
		else {
			neo_sprite_name = "run"; neo_image = 0;
		}
	break;
	case "somersault": case "roll": case "pound_twirl":
		neo_sprite_name = "somersault";
	break;
	case "backwards_long_jump":
		neo_sprite_name = "long_jump";
	break;
	
	case "twirl": case "twirl2": case "tjump_twirl": case "djump_twirl":
		neo_sprite_name = "twirl";
	break;
	
	case "grab_twirl": case "grab_spin": case "carried_grab_twirl": case "carried_grab_spin":
		switch(neo_image) {
			case 0: case 4:
				//facing forwards: grab_idle pose
				neo_sprite_name = "grab_idle"; neo_image = 0;
			break;
			case 1: case 5:
				//facing away camera: second frame of spin
				neo_sprite_name = "spin"; neo_image = 1;
				holp_depth_offset = -1; 
				holp_x_mult = 0; holp_dir *= -1;
			break;
			case 2: case 6:
				//facing backwards: grab_idle pose, mirrored
				neo_sprite_name = "grab_idle"; neo_image = 0;
				mirror_sprite();
				holp_x_mult = -1; holp_dir *= -1;
			break;
			case 3: case 7:
				//facing towards camera: fourth frame of spin
				neo_sprite_name = "spin"; neo_image = 3;
				holp_x_mult = 0;
			break;
		}
	break;
	case "lift_twirl": case "lift_spin": case "carried_lift_spin": case "carried_lift_twirl":
		neo_sprite_name = "lift_spin";
		switch(neo_image) {
			case 1: case 5: case 2: case 6:
				holp_dir *= -1; holp_x_mult = -1;
			break;
		}
	break;
	
	case "sideflip":
		neo_image = 1;
	case "sflip_twirl":
		neo_sprite_name = "lift_spin";
	break;
	
	case "ice_scuttle":
		neo_sprite_name = "walk";
	break;
	case "lift_pickup":
		neo_sprite_name = "grab_duck";
	break;
	case "grab_run":
		substitute_anim("grab_walk");
	break;
	case "grab_run_jump":
		substitute_anim("grab_jump");
	break;
	case "lift_run":
		substitute_anim("lift_walk");
	break;
	case "lift_run_jump":
		substitute_anim("lift_jump");
	break;
	
	case "stall":
		substitute_anim("jump", 1);
	break;
	case "stall_duck":
		if(!substitute_anim("duck", 1)) new_neo_draw_y += 2;
	break;
	case "flight":
		substitute_anim("run_jump", (hitpause?old_vsp:vsp) > 0);
	break;
	case "statue": case "statue_transform":
		substitute_anim("spin", 1);
	break;
	
	case "shell_duck": case "carried_shell_duck":
		if(neo_image == 0) {
			neo_sprite_name = "duck";
			break;
		}
		else {
			neo_sprite_name = "shell_spin";
		}
	case "shell_spin": case "carried_shell_spin": case "shell_triple_jump":
		neo_sprite_name = "shell_spin";
		if(substitute_anim("duck", (vsp > 0))) {
			if(neo_image % 4 < 2) mirror_sprite();
		}
		else {
		}
	break;
	case "shell_pound_twirl":
		neo_sprite_name = "shell_spin"; neo_image = 3;
		substitute_anim("somersault");
	break;
	case "shell_pound":
		neo_sprite_name = "shell_spin"; neo_image = 3;
		substitute_anim("ground_pound", !free);
	break;
	
	case "grab_stall": case "grab_flight":
		neo_sprite_name = "grab_stall";
		substitute_anim("grab_jump", vsp < 0);
	break;
	case "grab_stall_duck":
		if(!substitute_anim("grab_duck", 1)) new_neo_draw_y += 2;
	break;
	
	case "lift_stall": case "lift_flight":
		neo_sprite_name = "lift_stall";
		substitute_anim("lift_jump", vsp < 0);
	break;
	
	case "carried_twirl":
		neo_sprite_name = "twirl";
	break;
	case "carried_run_jump":
		substitute_anim("carried_run", 0);
	break;
	case "carried_pickup":
		neo_sprite_name = "duck";
		mirror_sprite();
	break;
	case "carried_idle": case "carried_walk": case "carried_throw":
		neo_sprite_name = "idle";
	break;
	case "carried_duck":
		neo_sprite_name = "duck";
	break;
	case "carried_look_up":
		neo_sprite_name = "look_up";
	break;
	case "carried_flight":
		if(substitute_anim("carried_run_jump", 0)) substitute_anim("carried_run");
	break;
	case "carried_stall":
		substitute_anim("carried_jump", 1);
	break;
	case "tail": case "carried_spin":
		neo_sprite_name = "spin";
	break;
	
	case "carried_grab_jump":
		neo_sprite_name = "grab_idle";
	break;
	case "carried_lift_jump":
		neo_sprite_name = "lift_idle";
	break;
	case "carried_grab_run": case "carried_grab_run_jump":
		neo_sprite_name = "grab_run"; neo_image = 2;
		substitute_anim("grab_idle");
	break;
	case "carried_lift_run": case "carried_lift_run_jump":
		neo_sprite_name = "lift_run"; neo_image = 2;
		substitute_anim("lift_idle");
	break;
	case "carried_grab_idle": case "carried_grab_walk": case "carried_grab_throw":
		neo_sprite_name = "grab_idle";
	break;
	case "carried_lift_idle": case "carried_lift_walk": case "carried_lift_throw": case "carried_lift_pickup":
		neo_sprite_name = "lift_idle";
	break;
	case "carried_grab_duck": case "carried_grab_pickup":
		neo_sprite_name = "grab_duck";
	break;
	case "carried_grab_look_up":
		neo_sprite_name = "grab_look_up";
	break;
	case "carried_grab_flight":
		neo_sprite_name = "carried_grab_stall";
		if(substitute_anim("carried_grab_run")) substitute_anim("grab_idle");
	break;
	case "carried_lift_flight":
		neo_sprite_name = "carried_lift_stall";
		if(substitute_anim("carried_lift_run")) substitute_anim("lift_idle");
	break;
	case "carried_grab_stall":
		substitute_anim("grab_idle");
	break;
	case "carried_lift_stall":
		substitute_anim("lift_idle");
	break;
	
	case "final_smash":
		neo_sprite_name = "idle";
	break;
}

//#region Sprite Offsets
switch(neo_sprite_name) {
	case "jump": case "run": case "twirl": case "lift_spin":
		center_sprite_y = neo_power_checked.size_profile.pivot_height;
		new_neo_draw_y -= neo_power_checked.size_profile.pivot_offset;
	break;
	
	case "somersault":
		center_sprite_y = 16;
		new_neo_draw_y -= neo_power_checked.size_profile.somersault_offset;
	break;
	
	case "shell_spin": case "duck":
		center_sprite_y = 24;
		new_neo_draw_y -= 16;
	break;
}
//#endregion

neo_sprite = "char_" + neo_char.prefix + neo_power_prefix_checked + neo_sprite_name;
var neo_sprite_index = sprite_get(neo_sprite);
if(neo_sprite_index == UNDEFINED_SPRITE) {
	neo_sprite_old = neo_sprite;
	neo_sprite = "char_undefined";
	center_sprite_y = "bottom";
	neo_sprite_index = sprite_get(neo_sprite);
}

if(sprite_get_xoffset(neo_sprite_index) == 0) {
	if(center_sprite_y == "bottom") center_sprite_y = sprite_get_height(neo_sprite_index);
	sprite_change_offset(neo_sprite, center_sprite_x, center_sprite_y);
	if(debug_sprite_offsets) print_debug("Adjusted offset of sprite " + neo_sprite);
}

sprite_index = neo_sprite_index;
image_index = neo_image;

// if(!repeat_animation) {
// 	neo_draw_x = new_neo_draw_x;
// 	neo_draw_y = new_neo_draw_y;
// }

// print(`repeat: ${repeat_animation}; y: ${neo_draw_y} (${new_neo_draw_y})`);
draw_x = new_neo_draw_x;
draw_y = new_neo_draw_y;
//#endregion

//#region PHASE 2
//Position the HOLP so it can render itself in the right place
//We do this here instead of update.gml because this needs to occur after Mario's finished processing his movement,
//while update.gml runs before that can happen
if(instance_exists(carry_obj)) {
	carry_obj.x = x + holp_relative_x * holp_x_mult;
	carry_obj.y = y + holp_relative_y;
	
	if(carry_obj.object_index == oPlayer || carry_obj.object_index == oTestPlayer) {
		if(carry_obj.url == url) {
			if(!carry_obj.resist_carrier_holp_dir) carry_obj.spr_dir = spr_dir;
			carry_obj.depth = holp_depth + holp_depth_offset;
			carry_obj.force_depth = true;
		}
		else {
			carry_obj.spr_dir = holp_dir;
		}
	}
	else {
		carry_obj.spr_dir = holp_dir;
		if(carry_obj.neo_carry_data.can_change_depth) carry_obj.depth = holp_depth + holp_depth_offset;
	}
}
//#endregion

#define has_animstate(name)
	return(sprite_get("") != sprite_get(`char_${neo_char.prefix}${neo_power_prefix_checked}${name}`));

#define substitute_anim
/// substitute_animstate(new_animstate, new_frame = neo_image)
var new_animstate = argument[0];
var new_frame = argument_count > 1 ? argument[1] : neo_image;
	if(!has_animstate(neo_sprite_name)) {
		neo_sprite_name = new_animstate;
		neo_image = new_frame;
		return(true);
	}
	return(false);

#define play_footstep_sfx
	sound_play(floor_type.footstep_sfx[footstep_counter % 2]);
	footstep_counter++;

#define create_dust_decal
/// create_dust_decal(dust_hsp, dust_vsp, dust_alpha, chance, variant = "dust", base_life = 30, extra_life = 15, offset_range_x = 8, offset_range_y = 8, rng_index = 1)
var dust_hsp = argument[0], dust_vsp = argument[1], dust_alpha = argument[2], chance = argument[3];
var variant = argument_count > 4 ? argument[4] : "dust";
var base_life = argument_count > 5 ? argument[5] : 30;
var extra_life = argument_count > 6 ? argument[6] : 15;
var offset_range_x = argument_count > 7 ? argument[7] : 8;
var offset_range_y = argument_count > 8 ? argument[8] : 8;
var rng_index = argument_count > 9 ? argument[9] : 1;
	rng_index = round(rng_index % 20); //making sure we don't kill the RNG function
	
	if(chance >= 100 || random_func(rng_index, 100, false) < chance) {
		var x_offset = random_func(rng_index, offset_range_x + 1, true) - offset_range_x / 2;
		var y_offset = random_func(rng_index + 1, offset_range_y + 1, true) - offset_range_y / 2;
		var x_scale = (random_func(rng_index, 2, true) == 0)?2:-2;
		var y_scale = (random_func(rng_index + 1, 2, true) == 0)?2:-2;
		
		var new_dust = instance_create(round(x + x_offset), round(y + y_offset), "obj_article1");
		new_dust.sprite_index = floor_type.ground_particle_sprite;
		new_dust.variant = variant;
		new_dust.fake_hsp = dust_hsp; new_dust.fake_vsp = dust_vsp; new_dust.image_alpha = dust_alpha;
		new_dust.image_xscale = x_scale; new_dust.image_yscale = y_scale;
		
		new_dust.life = base_life;
		if(extra_life > 0) new_dust.life += random_func(rng_index, extra_life, true);
		
		return(new_dust);
	} 
	return(noone);

#define create_droplet
/// create_droplet(dir, base_hsp, extra_hsp, base_vsp, extra_vsp, chance, count, arc_vsp = false, variant = "droplet", base_life = 60, extra_life = 0, offset_range_x = 18, rng_index = 1)
var dir = argument[0], base_hsp = argument[1], extra_hsp = argument[2], base_vsp = argument[3], extra_vsp = argument[4], chance = argument[5], count = argument[6];
var arc_vsp = argument_count > 7 ? argument[7] : false;
var variant = argument_count > 8 ? argument[8] : "droplet";
var base_life = argument_count > 9 ? argument[9] : 60;
var extra_life = argument_count > 10 ? argument[10] : 0;
var offset_range_x = argument_count > 11 ? argument[11] : 18;
var rng_index = argument_count > 12 ? argument[12] : 1;
	repeat(count) {
		rng_index = round(rng_index % 20); //making sure we don't kill the RNG function
		
		if(chance >= 100 || random_func(rng_index, 100, false) < chance) {
			var x_offset = random_func(rng_index, offset_range_x + 1, true) - offset_range_x / 2;
			
			var new_drop = instance_create(round(x + x_offset), round(y - 4), "obj_article1");
			new_drop.variant = variant; new_drop.despawn_y = new_drop.y + 2;
			new_drop.fake_hsp = dir * (base_hsp + random_func(rng_index, 1, false) * extra_hsp);
			new_drop.fake_vsp = base_vsp + random_func(rng_index + 1, 1, false) * extra_vsp;
			
			if(arc_vsp) new_drop.fake_vsp -= 0.5 * abs(new_drop.fake_hsp + sign(new_drop.fake_hsp) * (base_hsp + extra_hsp));
			
			new_drop.image_xscale = 2; new_drop.image_yscale = 2;
			new_drop.sprite_index = floor_type.ground_particle_sprite;
			
			// new_drop.use_post_draw = false; new_drop.image_blend = puddle_colour;
			
			new_drop.life = base_life;
			if(extra_life > 0) new_drop.life += random_func(rng_index, extra_life, true);
		}
		rng_index++;
	}

#define find_stack_bottom_recursive(examining_player)
	if(instance_exists(examining_player.neo_data.carried_by_id) && examining_player.neo_data.carried_by_id.carry_obj == examining_player)
		return(find_stack_bottom_recursive(examining_player.neo_data.carried_by_id));
	else
		return(examining_player);

#define mirror_sprite
	if(mirror_spr_dir == 0) mirror_spr_dir = spr_dir; spr_dir *= -1;