//article1_update - runs every frame the article exists. Template by Muno

//Used for Sleep Copy Essence

/*STATE LIST

- 0 Spawning
- 1 Ability Comes into Play
- 2 Holds Ability
- 3 Got Hit
- 6 death

*/

player_id.essence_state_timer = state_timer
player_id.essence_vsp = vsp

copy_essence_gamer_x = x
copy_essence_gamer_y = y

copy_got_parried = player_id.essence_got_parried

if (state != 4){
	hud_color = get_player_hud_color(player_id.player);
	hud_y_var_thing = 56
	spawned_by_rune_o = false
} else {
	hud_color = get_player_hud_color(hitbox_owner.player);
	hud_y_var_thing = 40
}

//Getting Hit
if (place_meeting(x, y, asset_get("pHitBox")) && can_get_hit) {
	if (player_id.essence_can_be_destroyed == true){
		//This is before the star spawns in the Copy Essence so opponents can get rid of the Essence before Sleep Kirby can even hit it.
		if (state == 2 || state > 2){ //Anyone can hit the Essence and knock the star out of it at this point.
			with (asset_get("pHitBox")){
				//if (player != other.player_id.player){
					if (place_meeting(x, y, other) && ((type == 1) || (type == 2 && player_id == other.player_id))){
						if (player_id == other.player_id){
							if (attack == AT_DSPECIAL || (attack == AT_FSPECIAL)){
								//nothing
							} else if (attack == AT_NSPECIAL) {
								obj_article1.vsp = -12
								other.hitbox_hit = self;
								player_id.burst_bubble_hit = true
							} else {
								other.hitbox_hit = self;
							}
						} else {
							other.hitbox_hit = self;
						}
					}
				//}
			}
		}
	} else if (player_id.essence_can_be_destroyed == false){
		if (state == 2 || state > 2){
			with (asset_get("pHitBox")){
				//if (player != other.player_id.player){
					if (place_meeting(x, y, other) && ((type == 1) || (type == 2 && player_id == other.player_id))){
						if (player_id == other.player_id){
							if (attack == AT_DSPECIAL || (attack == AT_FSPECIAL)){
								//nothing
							} else if (attack != AT_NSPECIAL && attack != AT_FSPECIAL && attack != AT_DSPECIAL){
								other.hitbox_hit = self;
							}
						} else {
							//other.hitbox_hit = self;
						}
					}
				//}
			}
		}
	}
	if (hitbox_hit != noone){
		
		if (hit_lockout <= 0){
			
			//if (!free){
			//	y = y - 15;
			//}
			
			//if (should_rotate){
			//	cur_rot = 0;
			//}
			
			
			state = 4
			state_timer = 0
			var hit_lockout_max = 12;
			
			hit_lockout = hit_lockout_max;
			
			var speed_mult = 2.2;
			var speed_mult_vert = 1.8
			
			hitbox_angle = hitbox_hit.kb_angle;
			hitbox_owner = hitbox_hit.player_id;
			hitbox_bkb = hitbox_hit.kb_value;
			hitbox_kbs = hitbox_hit.kb_scale;
			hitbox_damage = hitbox_hit.damage;
			hitbox_sfx = hitbox_hit.sound_effect;
			hitbox_spr_dir = hitbox_hit.spr_dir;
			var hitbox_flipper = hitbox_hit.hit_flipper;
			
			//gonna use this to set the hitbox owner to be whoever hit it
			hit_by = hitbox_hit.player;
			
			spr_dir = 1;
			
			y = y - 12
			
			if (hitbox_angle == 361){
				if (free){
					hitbox_angle = 45;
				}
				else{
					hitbox_angle = 40;
				}
			}
			
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
			sound_stop(player_id.sfx_ability_star_bounce);
			
			//put player in hitstop
		    if (hitbox_hit.type == 1){

			     hitpause = true;
			     hitstop = round(hitbox_hit.hitpause);
			     
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
			
			hitby = noone
		}
		
	}
} else {
	hitbox_hit = noone
}


if (hitstop <= 0){
	if (hit_lockout > 0){
		hit_lockout--;
	}
	hitpause = false;
}

if (!hitbox_var){
	should_spawn_hitbox = false;
}

//Cooldown if Sleep Kirby has the max amount of Copy Essences out
if (player_id.essences_in_use ==  player_id.essences_max_limit){
	player_id.move_cooldown[AT_DSPECIAL] = 12;
}

if (videogaming == 1 || vsp = 69){
	videogaming = 0
	vsp = -5
	setState(4);
}

if (state == 0){ //Spawning
	oh_crap_did_i_get_absorbed_by_bubble = false
	if (state_timer == 19 ){
		if (copy_essence_spawn_loop != 2){
			copy_essence_spawn_loop++;
			state_timer = 0
		} else {
			state = 1
			state_timer = 0
			copy_essence_spawn_loop = 0
			sound_play(asset_get("mfx_star"));
		}
	}
}

if (state == 1){ //Ability Comes into Play
	/*
    if (state_timer == 10){ //Make a hitbox 10 frames after entering state 1
        create_hitbox(AT_NSPECIAL, 1, x, y); //Spawns NSPECIAL hitbox 1 at article's position. Hitboxes MUST be projectiles for articles
    }
    if (state_timer == 20){ //This state lasts 20 frames
        setState(0);
    }
	*/
	
	if (state_timer == 19){
		setState(2);
		//create_hitbox(AT_DSPECIAL, 1, x, y - 24);
	}
	
}

if (state == 2){ //Holds Ability
	if (state_timer == 1
	|| state_timer == 11){
		if (copy_essence_spawn_loop == 23 || copy_essence_spawn_loop == 24){
			//spawn_hit_fx( x, y - 32, 301 );
			//sound_play(asset_get("mfx_unstar"));
		}
	}
    if (state_timer == 19 ){
		state_timer = 0
		if (copy_essence_spawn_loop != 24){
			copy_essence_spawn_loop++;
		} else {
			state = 3
			state_timer = 0
			copy_essence_spawn_loop = 0
			spawn_hit_fx( x, y - 32, 144 );
			sound_play(player_id.sfx_ability_star_break);
		}
	}
	//create_hitbox(AT_DSPECIAL, 2, x, y - 24);
	with (asset_get("oPlayer")){
	    if (place_meeting(x, y, other)){
	    	if (player != other.player_id.player && state == PS_HITSTUN){
	    		other.ayo_the_pizza_here = true;
	    	}
	    }
    }
	
	if (ayo_the_pizza_here == true){
		ayo_the_pizza_here = false;
		create_hitbox(AT_DSPECIAL, 3, x, y - 24);
		player_id.copy_essence_hit = false
		player_id.essences_in_use--;
		player_id.essence_got_parried = false
		sound_play(player_id.sfx_ability_star_break);
		spawn_hit_fx( x, y - 32, 144 );
		if (player_id.essences_in_use != player_id.essences_max_limit){
			player_id.move_cooldown[AT_DSPECIAL] = 120;
		}
		instance_destroy();
		exit;
	}
}

if (state == 3){ //Got Hit???
    if (state_timer == 0 ){
		player_id.essences_in_use--;
		//sound_play(player_id.sfx_ability_star_break);
		sound_stop(player_id.sfx_canvas_curse_balloon_pop);
		spawn_hit_fx( x, y - 32, 144 );
		if (hey_what_way_did_bubble_hit_me == 1){
			create_hitbox(AT_NSPECIAL, 6, x, y);
		} else if (hey_what_way_did_bubble_hit_me == -1){
			create_hitbox(AT_NSPECIAL, 7, x, y);
		}
		instance_destroy();
		exit;
	}
}

if (state == 4){
	//create_hitbox(AT_DSPECIAL, 1, x, y - 24);
	
	//friendly reminder to myself that i should recode how the hitbox works on this move
	//maybe port over how it works on aiai?
	
	if (gaming_timing_variable_that_i_should_have_named_better == 3){
		cur_hitbox = create_hitbox(AT_DSPECIAL, 1, x, y + 4);
	} else if (gaming_timing_variable_that_i_should_have_named_better != 3){
		gaming_timing_variable_that_i_should_have_named_better++;
	}
	if (hsp > 4.5){
		hsp = hsp - 0.5
	}
	if (hsp < -4.5){
		hsp = hsp + 0.5
	}
	if (hsp < 0){
		cur_rot = cur_rot - ( hsp / -4.5)
		cur_rot = cur_rot - ( hsp / -4.5)
	} else if (hsp > 0){
		cur_rot = cur_rot + ( hsp / 4.5)
		cur_rot = cur_rot + ( hsp / 4.5)
	} else if (hsp == 0){
		if (hitbox_spr_dir == 1){
			cur_rot = cur_rot + 1
		} else if (hitbox_spr_dir == -1){
			cur_rot = cur_rot - 1
		}
	}
	if (free){
		vsp = vsp + 0.35
		if (vsp < -11){
			vsp = -11
		}
		if (vsp > 9){
			vsp = 9
		}
	}
	if (!free){
		if (state_timer > 12 && bounce_lockout == 0){
			y -= 4
			bounce_lockout = 2;
			sound_play(player_id.sfx_ability_star_bounce);
			spawn_base_dust(x, y + 24, "land", 0);
			spawn_base_dust(x + 20, y + 24, "dash", -1);
			//spawn_base_dust(x, y + 24, "n_wavedash", 0);
			spawn_base_dust(x - 20, y + 24, "dash", 1);
			vsp = -6
		} else if (state_timer > 12 && bounce_lockout > 0){
			player_id.copy_essence_hit = false
			player_id.essences_in_use--;
			player_id.essence_got_parried = false
			sound_play(player_id.sfx_ability_star_break);
			spawn_hit_fx( x, y, player_id.pillow_hit_fx_sml );
			if (player_id.essences_in_use != player_id.essences_max_limit){
				player_id.move_cooldown[AT_DSPECIAL] = 120;
			}
			cur_hitbox.destroyed = true;
			instance_destroy();
			exit;
		}
	}
	//bouncing
	if (bounce_lockout != 0){
		bounce_lockout--;
	}
	
	if (should_bounce){
		
		
		
	}
	//hitting wall
	if (hit_wall == true && (collision_rectangle( x + 40, y, x - 40, y - 40, asset_get("par_block"), true, true ))){
		hit_wall = false
		if (hsp > 0){
			spawn_base_dust(x, y, "walljump", 1);
		}
		hsp = -5 * spr_dir
		sound_play(player_id.sfx_ability_star_bounce);
		x = x - (8 * spr_dir)
		spr_dir *= -1
	}
	
	//cur_hitbox = create_hitbox(AT_DSPECIAL, 1, x, y - 24);
	
	//in here for if someone else hits the katamari
	cur_hitbox.player = hit_by;
	
	//parry stun stuffs
	if (cur_hitbox.player == player){
		cur_hitbox.projectile_parry_stun = true;
		copy_essence_belongs_to_sleep_kirby = true;
	} else {
		cur_hitbox.projectile_parry_stun = false;
		copy_essence_belongs_to_sleep_kirby = false;
	}
	
	cur_hitbox.can_tech = 1;
	
	//destroy hitbox
	if (should_destroy_hitbox && hitbox_active){
		should_destroy_hitbox = false;
		hitbox_active = false;
		cur_hitbox.hitbox_timer = 0;
		cur_hitbox = noone;
	}
	//Making sure that the star dies.
	if (player_id.copy_essence_hit == true || player_id.essence_got_parried == true || state_timer == 240){
		player_id.copy_essence_hit = false
		player_id.essences_in_use--;
		player_id.essence_got_parried = false
		sound_play(player_id.sfx_ability_star_break);
		spawn_hit_fx( x, y, player_id.pillow_hit_fx_sml );
		if (player_id.essences_in_use != player_id.essences_max_limit){
			player_id.move_cooldown[AT_DSPECIAL] = 120;
		}
		cur_hitbox.destroyed = true;
		instance_destroy();
		exit;
	}
	
	if (x != clamp(x, blastzone_l, blastzone_r) || y > blastzone_b || y < blastzone_t){//>
		player_id.copy_essence_hit = false
		player_id.essences_in_use--;
		player_id.essence_got_parried = false
		sound_play(player_id.sfx_ability_star_break);
		//spawn_hit_fx( x, y - 32, 144 );
		if (player_id.essences_in_use != player_id.essences_max_limit){
			player_id.move_cooldown[AT_DSPECIAL] = 120;
		}
		cur_hitbox.destroyed = true;
		instance_destroy();
		exit;
	}
	
	if (state_timer == 220
	|| state_timer == 224
	|| state_timer == 226
	|| state_timer == 228
	|| state_timer == 230
	|| state_timer == 232
	|| state_timer == 234
	|| state_timer == 236
	|| state_timer == 238){
		ability_show = false;
	} else {
		ability_show = true;
	}
}

if (state == 6){
	//Making sure that the star dies.
	player_id.copy_essence_hit = false
	player_id.essences_in_use--;
	player_id.essence_got_parried = false
	sound_play(player_id.sfx_ability_star_break);
	spawn_hit_fx( x, y - 32, 144 );
	if (player_id.essences_in_use != player_id.essences_max_limit){
		player_id.move_cooldown[AT_DSPECIAL] = 120;
	}
	instance_destroy();
	exit;
}

if (oh_crap_did_i_get_absorbed_by_bubble == true){
	oh_crap_did_i_get_absorbed_by_bubble = false
	/*
	spawn_hit_fx( x, y - 32, 144 );
	player_id.copy_essence_hit = false
	player_id.essences_in_use--;
	player_id.essence_got_parried = false
	state_timer = 0
	instance_destroy();
	exit;
	*/
	
	setState(3);
}

if (state == 5){
	setState(2);
}

//more states can go here

if (x != clamp(x, blastzone_l, blastzone_r) || y > blastzone_b || y < blastzone_t){
		spawn_hit_fx( x, y - 32, 304 );
		sound_play(player_id.sfx_ability_star_break);
		player_id.essences_in_use--;
		instance_destroy();
		exit;
	}

//Sprite and animation handling

//Increment image_index based on the animation type assigned, in init, to the state. The example 2 are just different anim speeds and frame counts, but you can put any logic you want here
if !hitstop{
    switch(anim_type[state]){
        case 0:
            var frames = 5; //# of frames in animation
            var frame_dur = 4; //duration of each frame
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
        case 1:
            var frames = 5;
            var frame_dur = 4;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
		case 2:
            var frames = 5;
            var frame_dur = 4;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
		case 3:
            var frames = 5;
            var frame_dur = 4;
            image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
            break;
    }
}

//If not already at the sprite it should be, switch to the new sprite
if (sprite_index != sprite[state]){
    sprite_index = sprite[state];
}

//Make time progress
if !hitstop{
    state_timer++;
}

exist_timer++;

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;

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