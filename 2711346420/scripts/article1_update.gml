//article1_update - runs every frame the article exists

//Used for Monkey Ball

/*STATE LIST

- 0 Normal
- 1 Spawning from Nspecial!!!

*/

lifetime++;

if (lifetime > 2500){
	lifetime = 0;
}
if (place_meeting(x, y, asset_get("pHitBox")) && state == 0 && monkey_ball_hit_cooldown == 0) {
	if (!has_rune("G")){
		with (asset_get("pHitBox")){
			if (place_meeting(x, y, other) && ((type == 1) || (type == 2 && player_id == other.player_id))){
				if (player_id == other.player_id){//Hitboxes belonging to AiAi
					if (attack == AT_DSPECIAL){
						//nothing
					}
					else if (attack == AT_NSPECIAL){
						other.hitbox_hit = self;
						other.hsp = 8*spr_dir;
						other.vsp = -4.25;
					}
					else{
						if (attack == AT_UTILT || attack == AT_DTILT || attack == AT_DAIR || attack == AT_UAIR || attack == AT_USTRONG || attack == AT_USPECIAL){
							other.spin_fast = 50;
							other.hsp = 2.1*spr_dir
						} else {
							other.spin_fast = 20;
						}
						other.hitbox_hit = self;
					}
				}
				else{//Hitboxes from other players
					other.spin_fast = 20;
					other.hitbox_hit = self;
				}
			}
		}
	} else if (has_rune("G")){
		with (asset_get("pHitBox")){
			if (place_meeting(x, y, other) && ((type == 1) || (type == 2 && player_id == other.player_id))){
				if (player_id == other.player_id){//Hitboxes belonging to AiAi
					if (attack == AT_DSPECIAL){
						//nothing
					}
					else if (attack == AT_NSPECIAL){
						other.hitbox_hit = self;
						other.hsp = 8.25*spr_dir;
						other.vsp = -4;
					}
					else{
						if (attack == AT_UTILT || attack == AT_DTILT || attack == AT_DAIR || attack == AT_UAIR || attack == AT_USTRONG || attack == AT_USPECIAL){
							other.spin_fast = 50;
							other.hsp = 2.1*spr_dir
						} else {
							other.spin_fast = 20;
						}
						other.hitbox_hit = self;
					}
				}
				else{//Hitboxes from other players
					//other.spin_fast = 20;
					//other.hitbox_hit = self;
				}
			}
		}
	}
	if (hitbox_hit != noone){
		if (hit_lockout <= 0){
			var hit_lockout_max = 16;
			
			hit_lockout = hit_lockout_max;
			//hit_lockout = 0;
			
			var speed_mult = 1.55;
			var speed_mult_vert = 1.55;
			
			hitbox_angle = hitbox_hit.kb_angle;
			hitbox_owner = hitbox_hit.player_id;
			hitbox_bkb = hitbox_hit.kb_value;
			hitbox_kbs = hitbox_hit.kb_scale;
			//hitbox_damage = hitbox_hit.damage;
			//hitbox_sfx = hitbox_hit.sound_effect;
			hitbox_sfx = asset_get("sfx_blow_heavy1")
			//var hitbox_flipper = hitbox_hit.hit_flipper;
			var hitbox_flipper = 0;
			
			//gonna use this to set the hitbox owner to be whoever hit it
			hit_by = hitbox_hit.player;
			
			hud_color = get_player_hud_color(hitbox_owner.player);
			current_owner = hitbox_owner.player;
			//print("Current owner of Monkey Ball is Player " + string(current_owner))
			spr_dir = hitbox_owner.spr_dir*-1;
			
			if (hitbox_angle == 361){
				if (free){
					hitbox_angle = 45;
				}
				else{
					hitbox_angle = 40;
				}
			}
			
			should_spawn_hitbox = true;
			
			switch (hitbox_flipper){
				case 0:
				case 1:
				case 2:
				case 4:
					hsp=cos(degtorad(hitbox_angle))*(hitbox_bkb + 1)*hitbox_owner.spr_dir*speed_mult;
					vsp=-sin(degtorad(hitbox_angle))*hitbox_bkb*speed_mult_vert;
				break;
				case 5:
					hsp=cos(degtorad(hitbox_angle))*hitbox_bkb*hitbox_owner.spr_dir*-1*speed_mult;
					vsp=-sin(degtorad(hitbox_angle))*hitbox_bkb*speed_mult_vert;
				break;
				case 6:
				case 3:
					if (x > hitbox_owner.x){
						var bruh = 1; 
					}
					if (x <= hitbox_owner.x){
						var bruh = -1; 
					}
					hsp=cos(degtorad(hitbox_angle))*hitbox_bkb*bruh*speed_mult;
					vsp=-sin(degtorad(hitbox_angle))*hitbox_bkb*speed_mult_vert;
				break;
				case 8:
				case 9:
				case 10:
					hsp=cos(degtorad(hitbox_angle))*hitbox_bkb*hitbox_owner.spr_dir*speed_mult;
					vsp=-sin(degtorad(hitbox_angle))*hitbox_bkb*speed_mult_vert;
				break;
			}
			
			if (hitbox_angle == 270 && !free){
				vsp=sin(degtorad(hitbox_angle))*hitbox_bkb*speed_mult_vert;
			}
			
			sound_play(hitbox_hit.sound_effect);
			spawn_hit_fx(floor(hitbox_hit.x + hitbox_hit.hit_effect_x),floor(hitbox_hit.y + hitbox_hit.hit_effect_y),hitbox_hit.hit_effect);
			
			//put player in hitstop
		    if (hitbox_hit.type == 1){
			     hitpause = true;
			     hitstop = round(hitbox_hit.hitpause);
				 //print(hitstop)
			     if (!hitpause){
			        old_hsp = hsp;
			        old_vsp = vsp;
			     }
			     with (hitbox_owner){
				     has_hit = true;
				     old_hsp = hsp;
				     old_vsp = vsp;
				     hitpause = true;
				     hitstop = other.hitbox_hit.hitpause;
			     }
			}
			else{
			     hitpause = true;
			     hitstop = hitbox_hit.hitpause + hitbox_hit.extra_hitpause;
			     if (!hitpause){
			        old_hsp = hsp;
			        old_vsp = vsp;
			     }
			}
			hitby = hitbox_hit.player_id;
			hitbox_hit = noone;
		}
	}
}
else{
	hitbox_hit = noone;
}

//State 0: Normal
if (state == 0){

	if (monkey_ball_hit_cooldown != 0){
		if (hitpause == false){
			monkey_ball_hit_cooldown--;
		}
		//print(monkey_ball_hit_cooldown)
		
		if ((monkey_ball_hit_cooldown >= 1 && monkey_ball_hit_cooldown <= 2) ||
		(monkey_ball_hit_cooldown >= 5 && monkey_ball_hit_cooldown <= 6) ||
		(monkey_ball_hit_cooldown >= 9 && monkey_ball_hit_cooldown <= 10) ||
		(monkey_ball_hit_cooldown >= 12 && monkey_ball_hit_cooldown <= 14) ||
		(monkey_ball_hit_cooldown >= 16 && monkey_ball_hit_cooldown < 34)){
			monkey_ball_draw_dark_spr = true;
		} else {
			monkey_ball_draw_dark_spr = false;
		}
	}
	if (!free && collision_rectangle( x + 40, y + 40, x - 40, y - 40, asset_get("par_block"), true, true )){
		print("hi gaming")
	}
	//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)
	if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx(floor(x),floor(y),256)
		if (is_hitbox_active){
			should_destroy_hitbox = true;
		}
		sound_stop(player_id.sfx_monkey_ball_2_pop);
		sound_play(player_id.sfx_monkey_ball_2_pop);
		player_id.monkey_ball_onstage = false;
		player_id.monkeyBall = noone;
		monkey_ball_hit_cooldown = 0;
		spawn_hit_fx(x,y,304);
		instance_destroy();
		exit;
	}

	//Enabling AiAi to get in the ball while the ball is out
	if (!is_hitbox_active){
		with (oPlayer){
			if (player == other.player_id.player){
				if (place_meeting(x, y, other)){
					//
					//y = y - 100;
					monkey_ball_can_be_rode = true;
					//print("AiAi can get inside the Monkey Ball")
				} else {
					monkey_ball_can_be_rode = false;
					//print("AiAi cannot get inside the Monkey Ball")
				}	
			} else {
				monkey_ball_can_be_rode = false;
				//print("AiAi is too far away from the Monkey Ball")
			}
		}
	} else {
		monkey_ball_can_be_rode = false;
		//print("The Monkey Ball cannot be entered at this time")
	}

	//hitstop stuff
	if (hitstop <= 0){
		if (hit_lockout > 0){
			hit_lockout--;
		}
		hitpause = false;
	}
	
	if (hitpause){
		//print("i am in hitpause")
	} else if (!hitpause){
		//print("i am not in hitpause")
	}
	
	if (touching_wall_cooldown == 0){
		if (free && place_meeting(x+(6*spr_dir*-1),y-4,(asset_get("par_block")))){
			touching_wall = true;
			//print("is this working?")
			//print(stored_hsp)
		}
	} else if (touching_wall_cooldown > 0){
		touching_wall_cooldown--;
	}
	stored_hsp = hsp;
	if (touching_wall == true){
		touching_wall = false;
		touching_wall_cooldown = 35;
		if (stored_hsp < 3 && stored_hsp > -3){
			stored_hsp = 4.5 * spr_dir * -1
		}
		hsp = stored_hsp*-0.65
		spawn_base_dust( x - (40 * spr_dir), y, "walljump", spr_dir)
		//spawn_base_dust( x - (34 * spr_dir), y, "walljump", spr_dir)
		//spawn_base_dust( x - (46 * spr_dir), y, "walljump", spr_dir)
		//spawn_hit_fx(x,y,303)
		sound_play(player_id.sfx_monkey_ball_2_ball_bounce)
		should_destroy_hitbox = true;
	}

	//stopping hitbox
	if (!hitbox_var){
		should_spawn_hitbox = false;
	}

	//Are there too many articles? If so, I should die
	if (replacedcount > maxarticles){
		shoulddie = true;
	}

	//Gravity + Bouncing
	if (free){ //Gravity
		if (!hitpause && vsp < 10){
			vsp = vsp + .55;
			stored_vertical_spd = vsp;
			grounded_timer = 0;
		}
	} else if (!free){
		if (grounded_timer < 2){
			if (stored_vertical_spd >= 2.5){ //Bounce
				spawn_base_dust( x + (0 * spr_dir), y + 44, "land", spr_dir)
				vsp = abs(stored_vertical_spd/3.25)*-1;
				sound_play(player_id.sfx_monkey_ball_2_ball_bounce)
			} else if (stored_vertical_spd <= 2.5){ //Stop
				stored_vertical_spd = 0;
				vsp = 0;
			}
		}
		grounded_timer++;
	}

	if (hitpause == false && is_hitbox_active == true){
		
	}

	//Ball Friction
	if (hitpause == false){
		if (free){//Air Friction Value
			var friction_val = .1;
		} else if (!free){//Grounded Friction Value
			var friction_val = .15;
		}
		if (hsp <= 0){
			hsp = hsp + friction_val;
		} else if (hsp >= 0){
			hsp = hsp - friction_val;
		}
	}
	//Stopping the Ball
	var stopping_speed_value = .4;
	if (hsp < stopping_speed_value && hsp > -stopping_speed_value){
		hsp = 0;
	}

	//Moving the hitbox to be on the Monkey Ball.
	if (is_hitbox_active){
		cur_hitbox.x = x;
		cur_hitbox.y = y;
	}

	if (!place_meeting(x,y,cur_hitbox)){
		//print("ball is not touching hitbox")
	} else {
		//print("ball is touching hitbox")
	}

	//Spawning the hitbox
	if (should_spawn_hitbox){//Check to see if the hitbox should spawn
		if (is_hitbox_active == false){//Check to see if the hitbox is currently active
			cur_hitbox = create_hitbox(AT_DSPECIAL, 1, floor(x), floor(y)); //This is what hitbox is called and referenced
			if (hsp > 3 && hsp < -3){//>
				cur_hitbox.hsp = hsp * 1.5;
				//cur_hitbox.vsp = vsp * 1.05;
			}
			if (hsp > 1){
				cur_hitbox.kb_angle = 55;
			} else if (hsp < -1){//>
				cur_hitbox.kb_angle = 125;
			} else if (hsp > -1 && hsp < 1){//>
				cur_hitbox.kb_angle = 90;
			}
			//print(cur_hitbox.kb_angle)
			//in here for if someone else hits the ball
			cur_hitbox.player = hit_by; //Set who the owner of the Monkey Ball is
			should_spawn_hitbox = false;
			is_hitbox_active = true;
		}
	}
	
	//Decreasing Knockback + Damage as lifetime goes on
	/*
	if(!has_rune("F")){
		if(instance_exists(cur_hitbox)){
			print(cur_hitbox.hitbox_timer);
			print(cur_hitbox.damage);
			if(cur_hitbox.hitbox_timer < 9){
				cur_hitbox.kb_value = 8;
				cur_hitbox.kb_scale = 0.5;
				cur_hitbox.hitstun_factor = 0.9;
			} else if(cur_hitbox.hitbox_timer > 8 && cur_hitbox.hitbox_timer < 17){
				cur_hitbox.kb_value = 7;
				cur_hitbox.kb_scale = 0.5;
				cur_hitbox.hitstun_factor = 0.8;
			} else if(cur_hitbox.hitbox_timer > 16 && cur_hitbox.hitbox_timer < 25){
				cur_hitbox.kb_value = 6;
				cur_hitbox.kb_scale = 0.4;
				cur_hitbox.hitstun_factor = 0.7;
			} else if(cur_hitbox.hitbox_timer > 24){
				cur_hitbox.kb_value = 5;
				cur_hitbox.kb_scale = 0.4;
				cur_hitbox.hitstun_factor = 0.6;
			}
		}
	}
	*/
	//Destroy Hitbox
	if (should_destroy_hitbox == true && is_hitbox_active == true){
		should_destroy_hitbox = false;
		is_hitbox_active = false;
		cur_hitbox.hitbox_timer = 696969666669696699669696696;//idc
		cur_hitbox = noone;
	}
	//
	//Note to self: if the hitbox lifetime is less than the max_hitbox_time variable, the Monkey Ball will bug out.
	//
	if(infinite_lifetime_rune){
	max_hitbox_time = 30000;
	}else{
	max_hitbox_time = 30;
	}
	/*
	if (instance_exists(cur_hitbox)){
		print("hitbox timer: " + string(cur_hitbox.hitbox_timer))
	}
	*/
	if (is_hitbox_active){
		if (cur_hitbox.hitbox_timer > max_hitbox_time)
		|| (hsp == 0 && vsp == 0 && !free){
			should_destroy_hitbox = true;
		}
	}
	/*
	print("is hitbox active: " + string(is_hitbox_active))
	print("should destroy htibox: " + string(should_destroy_hitbox))
	print("should spawn hbox: "+string(should_spawn_hitbox))
	print("has rune F: " + string(infinite_lifetime_rune))
	*/
	if (!place_meeting(x,y,cur_hitbox)){
		is_hitbox_active = false;
	}
	//Destroys the Monkey Ball if it hits the blastzones.

	if (y > blastzone_b - 5|| x < blastzone_l || x > blastzone_r){
		print("Monkey Ball despawned")
		sound_stop(player_id.sfx_monkey_ball_2_pop);
		sound_play(player_id.sfx_monkey_ball_2_pop);
		player_id.monkey_ball_onstage = false;
		player_id.monkeyBall = noone;
		player_id.monkey_ball_can_be_rode = false;
		monkey_ball_hit_cooldown = 0;
		player_id.move_cooldown[AT_NSPECIAL] = 15;
		player_id.move_cooldown[AT_FSPECIAL] = 15;
		player_id.move_cooldown[AT_USPECIAL] = 15;
		player_id.move_cooldown[AT_DSPECIAL] = 15;
		instance_destroy();
		exit;
	}
	
	if (hey_did_i_get_parried == true){
		print("Monkey Ball despawned")
		sound_stop(player_id.sfx_monkey_ball_2_pop);
		sound_play(player_id.sfx_monkey_ball_2_pop);
		player_id.monkey_ball_onstage = false;
		player_id.monkeyBall = noone;
		player_id.monkey_ball_can_be_rode = false;
		monkey_ball_hit_cooldown = 0;
		instance_destroy();
		exit;
		hey_did_i_get_parried = false;
	}

	//Explosion Rune
	if (should_explode == true){
		print("Monkey Ball despawned")
		sound_stop(player_id.sfx_monkey_ball_2_pop);
		//sound_play(player_id.sfx_monkey_ball_2_pop);
		sound_play(asset_get("sfx_abyss_explosion_big"));
		player_id.monkey_ball_onstage = false;
		player_id.monkeyBall = noone;
		player_id.monkey_ball_can_be_rode = false;
		monkey_ball_hit_cooldown = 0;
		player_id.move_cooldown[AT_NSPECIAL] = 15;
		player_id.move_cooldown[AT_FSPECIAL] = 15;
		player_id.move_cooldown[AT_USPECIAL] = 15;
		player_id.move_cooldown[AT_DSPECIAL] = 15;
		instance_destroy();
		exit;
	}

	if (cur_rot > 359 || cur_rot < -359){
		cur_rot = 0;
	}
}

//State 1: Spawning from Nspecial
if (state == 1){
	//print(rot_from_nspec)
	x = player_id.x + (50 * player_id.spr_dir)
	y = player_id.y - player_id.monkey_ball_spawn_y_offset
	nspec_img_indx = player_id.image_index;
	if (monkeyBall_need_to_switch_to_state0){
		y = y - 10;
		state = 0;
		state_timer = 0;
		cur_rot = rot_from_nspec;
	}
}

//Make time progress
state_timer++;

//--------------------------------------------

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