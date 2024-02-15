// article1_update.gml

// Used for Sleep Kirby Copy Essence

// States
/*
	0: Spawning
	1: Ability Comes Into Play
	2: Idle
	3: Moving
	4: Dying
*/

if (state != 3){
	hud_color = get_player_hud_color(player_id.player);
	hud_y_var_thing = 56
	spawned_by_rune_o = false
} else {
	hud_color = get_player_hud_color(hitbox_owner.player);
	hud_y_var_thing = 40
}

if (!hitpause){
	state_timer++;
} else if (hitpause){
	if (starHitSomeone){
		destroyStarHitbox();
		setState(4);
	}
}

// State 0: Spawning
if (state == 0){
	sprite_index = sprite_get("essence_empty");
	image_index += 0.5;
	
	if (state_timer == 39){
		image_index = 0;
		setState(1);
		sound_play(asset_get("mfx_star"));
	}
}

// State 1: Ability Comes into Play
if (state == 1){
	sprite_index = sprite_get("essence_ability_spawn");
	image_index += 0.25;
	
	if (state_timer == 19){
		image_index = 0;
		setState(2);
	}
}

// Hit Detection

if (place_meeting(x, y, asset_get("pHitBox"))) {
	//if (player_id.essence_can_be_destroyed == true){
		//This is before the star spawns in the Copy Essence so opponents can get rid of the Essence before Sleep Kirby can even hit it.
		if (state >= 2){ //Anyone can hit the Essence and knock the star out of it at this point.
			with (asset_get("pHitBox")){
				//if (player != other.player_id.player){
					if (place_meeting(x, y, other) && ((type == 1) || (type == 2 && player_id == other.player_id))){
						if (player_id == other.player_id){
							if (attack == AT_DSPECIAL || (attack == AT_FSPECIAL)){
								//nothing
							} else if (attack == AT_NSPECIAL) {
								/*
								obj_article1.vsp = -12
								other.hitbox_hit = self;
								player_id.burst_bubble_hit = true;
								*/
								other.hitByNSpecBubble = true;
								other.bubbleX = x;
								other.bubbleY = y;
								destroy_fx = 1;
								destroyed = true;
								spawn_hit_fx(x, y - 12, other.player_id.burst_bubble_charged_vfx);
								with (other){
									if (other.spr_dir != spr_dir){
										var bubble = create_hitbox(AT_NSPECIAL, 7, bubbleX, bubbleY);
									} else {
										var bubble = create_hitbox(AT_NSPECIAL, 6, bubbleX, bubbleY);
									}
									sound_play(sound_get("sfx_charge_max"), false, noone, 0.85, 1.4);
									state = 4;
									state_timer = 0;
								}
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
	//}
	if (hitbox_hit != noone){
		if (hit_lockout <= 0){//>
			
			//if (!free){
			//	y = y - 15;
			//}
			
			//if (should_rotate){
			//	cur_rot = 0;
			//}
			
			destroyStarHitbox();
			
			if (state != 3){
				sound_play(player_id.sfx_ability_star_break, false, noone, 0.75, 1.4);
				var essenceThrowVisual = create_hitbox(AT_DSPECIAL, 3, x, y);
				//essenceThrowVisual.hsp = -2.5 * spr_dir;
				essenceThrowVisual.vsp = -10;
				y -= 26;
			}
			
			state = 3;
			state_timer = 0;
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
			
			//y = y - 12;
			
			if (hitbox_angle == 361){
				if (free){
					hitbox_angle = 45;
				} else {
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
					if (x > hitbox_owner.x){//>
						var bruh = 1; 
					}
					if (x <= hitbox_owner.x){//>
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
			
			hitby = noone;
		}
		
	}
} else {
	hitbox_hit = noone
}


if (hitstop <= 0){//>
	if (hit_lockout > 0){
		hit_lockout--;
	}
	if (hit_lockout == 0){
		hitbox_hit = noone;
	}
	hitpause = false;
}

//print(hit_lockout);

// State 2: Idle
if (state == 2){
	sprite_index = sprite_get("essence_ability");
	image_index += 0.25;
	
	// dying if left idle for too long
	if (state_timer >= 480){
		if (state_timer % 30 == 0 && state_timer != 600){
			//sprite_index = sprite_get("empty");
			sound_play(player_id.sfx_ability_star_break, false, noone, 0.75, 1.6);
			spawn_hit_fx(x, y - 26, 305);
		} else {
			//sprite_index = sprite_get("essence_ability");
		}
		
		if (state_timer == 600){
			setState(4);
			var essenceThrowVisual = create_hitbox(AT_DSPECIAL, 3, x, y);
			//essenceThrowVisual.hsp = -2.5 * spr_dir;
			essenceThrowVisual.vsp = -10;
		}
	}
	
	// spawning a hitbox on any opponent in hitstun if it passes this
	with (asset_get("oPlayer")){
	    if (place_meeting(x, y, other)){
	    	if (player != other.player_id.player && state == PS_HITSTUN){
				with(other){
					var contactHitbox = create_hitbox(AT_DSPECIAL, 1, x, y);
					contactHitbox.hitbox_timer = 18;
					
					state = 4;
					state_timer = 0;
				}
			}
		}
	}
}

//print(state);
//print(state_timer);

// State 3: Moving (the active frames lol)
if (state == 3){
	sprite_index = sprite_get("empty");
	image_index = 0;
	
	// spawns hitbox
	if (state_timer == 0 && cur_hitbox == noone && !hitpause){
		cur_hitbox = create_hitbox(AT_DSPECIAL, 1, x, y + 2);
	}

	// moves hitbox
	if (instance_exists(cur_hitbox) && !hitpause){
		cur_hitbox.x = x;
		cur_hitbox.y = y;
		cur_hitbox.hsp = hsp;
		cur_hitbox.vsp = vsp;
		cur_hitbox.hitbox_timer = 2;
		cur_hitbox.player = hit_by;	// sets who has current ownership of the star
		
		// if the hitbox hits someone...
		if (cur_hitbox.has_hit){
			//print("hitbox hit!");
			destroyStarHitbox();
			setState(4);
		}
	}
	
	if (state_timer > 1 && !instance_exists(cur_hitbox)){
		setState(4);
	}
	
	// physics and stuff
	if (!hitpause){
	
		// star trail vfx
		if (state_timer % 9 == 1){
			spawn_hit_fx(x, y, star_trail);
		}
	
		if (free){
			vsp = vsp + 0.35
			if (vsp < -11){
				vsp = -11
			}
			if (vsp > 9){
				vsp = 9
			}
		} else if (!free){
			//vsp *= -1;
			//print("grounded");
			spawn_base_dust(x + 2,y + 20, "dash", 1, 0);
			spawn_base_dust(x - 2,y + 20, "dash", -1, 0);
			y -= 1;
			vsp = -7.5;
			sound_play(player_id.sfx_ability_star_bounce);
		}
		hsp = clamp(hsp, -4.5, 4.5);
		
		// rotation stuff
		if (hsp < 0){//>
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
		if (hsp >= 0){
			directionImFacing = 1;
		} else {
			directionImFacing = -1;
		}
		// wall detection
		if (place_meeting(x+(4 * directionImFacing),y,(asset_get("par_block")))){
			if (directionImFacing >= 1){
				spawn_base_dust(x + 24,y + 16, "dash", 1, 90);
				spawn_base_dust(x + 24,y + 16, "dash", -1, 90);
			} else {
				spawn_base_dust(x - 24,y + 16, "dash", 1, -90);
				spawn_base_dust(x - 24,y + 16, "dash", -1, -90);
			}
			hsp *= -1;
			// fail-safe to prevent the star from being stuck in the wall.
			if (hsp == 0){
				hsp = (-10 * directionImFacing);
			}
			sound_play(player_id.sfx_ability_star_bounce, false, noone, 0.95, 1.25);
		}	
		
		// decay timer
		if (state_timer >= 240){
			if (state_timer % 2 == 0){
				drawStarSpr = false;
			} else {
				drawStarSpr = true;
			}
			
			if (state_timer == 261){
				destroyStarHitbox();
				setState(4);
			}
		}
	}
}

// sets cooldown on own player
player_id.move_cooldown[AT_DSPECIAL] = 120;

// State 4: Destroyed
if (state == 4){
	hsp = 0;
	vsp = 0;
	player_id.currEssence = noone;
	destroyStarHitbox();
	if (!hitByNSpecBubble){
		sound_play(player_id.sfx_ability_star_break);
		spawn_hit_fx( x, y - 32, player_id.pillow_hit_fx_sml );
	}
	instance_destroy();
	exit;
}

// blastzone kill
if (x != clamp(x, blastzone_l, blastzone_r) || y > blastzone_b || y < blastzone_t){//>
	setState(4);
}

//--------------------------------------------

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;

//--------------------------------------------


#define destroyStarHitbox()

if (instance_exists(cur_hitbox)){
	cur_hitbox.destroyed = true;
	cur_hitbox = noone;
}

//--------------------------------------------

//spawn_base_dust(x+(0*spr_dir),y, "dust name", spr_dir, angle);

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;

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
    
    //
    //bar-kun additions (note: idk how fg_sprite work)
    //
    case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
    case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
    case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
    case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
    case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
    case "doublejump_small": 
    case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = angle;
return newdust;