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

lifetime++;

if (lifetime > 2500){
	lifetime = 0;
}

if (place_meeting(x, y, asset_get("pHitBox")) && can_get_hit) {
	with (asset_get("pHitBox")){
		//if (player != other.player_id.player){
			if (place_meeting(x, y, other) && ((type == 1) || (type == 2 && player_id == other.player_id))){
				if (player_id == other.player_id){
					if (attack == AT_DSPECIAL || attack == AT_FSPECIAL){
						//nothing
					}
					else{
						other.hitbox_hit = self;
					}
				}
				else{
					other.hitbox_hit = self;
				}
			}
		//}
	}
	if (hitbox_hit != noone){
		
		if (hit_lockout <= 0){
			
			//if (!free){
			//	y = y - 15;
			//}
			
			//if (should_rotate){
			//	cur_rot = 0;
			//}
			
			var hit_lockout_max = 12;
			
			hit_lockout = hit_lockout_max;
			
			var speed_mult = 1.25;
			var speed_mult_vert = 1.2;
			
			hitbox_angle = hitbox_hit.kb_angle;
			hitbox_owner = hitbox_hit.player_id;
			hitbox_bkb = hitbox_hit.kb_value;
			hitbox_kbs = hitbox_hit.kb_scale;
			hitbox_damage = hitbox_hit.damage;
			hitbox_sfx = hitbox_hit.sound_effect;
			var hitbox_flipper = hitbox_hit.hit_flipper;
			
			if (hitbox_owner != player_id && lose_cm_on_hit){
				if (player_id.katamari_size - round(hitbox_damage*.65 >= 1)){
					player_id.katamari_size -= round(hitbox_damage*.65);
				}
				else{
					player_id.katamari_size = 1;
				}
			}
			
			//gonna use this to set the hitbox owner to be whoever hit it
			hit_by = hitbox_hit.player;
			
			spr_dir = hitbox_owner.spr_dir*-1;
			
			if (hitbox_angle == 361){
				if (free){
					hitbox_angle = 45;
				}
				else{
					hitbox_angle = 40;
				}
			}
			
			if (testing){
				should_spawn_hitbox = true;
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
			
			
			//put player in hitstop
		    if (hitbox_hit.type == 1){

			     hitpause = true;
			     hitstop = hitbox_hit.hitpause;
			     
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


if (hitstop <= 0){
	if (hit_lockout > 0){
		hit_lockout--;
	}
	hitpause = false;
}



if (!hitbox_var){
	should_spawn_hitbox = false;
}



//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
}



//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
    if (hitbox_active){
        should_destroy_hitbox = true;
    }
    die = true;
}




//gravity stuff
if (gravity_on && !hitpause){
	if (vsp < 10 && free){
		vsp = vsp + grav_speed;
	}
}

//bouncing
if (should_bounce){
	
	if (free){
		vsp_stored = vsp;
		grounded_timer = 0;
	}
	
	if (!free && vsp_stored >= 2 && grounded_timer < 2){
		vsp = -abs(vsp_stored/2);
	}
	
	if (!free && vsp_stored < 1 && grounded_timer < 2){
		vsp = 0;
		vsp_stored = 0;
	}
	
	if (grounded_timer == 2){
		vsp_stored = 0;
	}
	
	if (!free){
		grounded_timer++;
	}
	
	if (grounded_timer >= 1000){
		grounded_timer = 1000;
	}
	
}



//friction
if (free && !hitpause){
	if (hsp <= 0){
		hsp = hsp + friction_val;
	}
	
	if (hsp >= 0){
		hsp = hsp - friction_val;
	}
}
else{
	if (hsp <= 0){
		hsp = hsp + friction_val_ground;
	}
	
	if (hsp >= 0){
		hsp = hsp - friction_val_ground;
	}
}

if (hsp < .25 && hsp > -.25){
	hsp = 0;
}


//animation
timer++;

if (timer > anim_rate_cur){
	timer = 0;
}



//pushing
if (can_be_pushed){
	with (oPlayer){
		if (player == other.player_id.player){
			if (place_meeting(x, y, other)){
				if ((state == PS_DASH || state == PS_WALK || state == PS_DASH_TURN) && !taunt_down){
					var player_hsp = hsp;
					var player_vsp = vsp;
					var player_dir = spr_dir;
					var player_x = x;
					var player_y = y;
					var player_depth = depth;
					with (other){
						exception = false;
						spr_dir = player_dir;
						x = lerp(x, player_x + 45*player_dir, .2);
						hsp = player_hsp;
						depth = player_depth - 2;
						being_pushed = true;
						roll_rate = 6;
						roll_timer_max = roll_rate*4;
					}
				}
				else if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
					if (attack == AT_FSPECIAL){
						if (window == 5){
							var player_hsp = hsp;
							var player_vsp = vsp;
							var player_dir = spr_dir;
							var player_x = x;
							var player_y = y;
							var player_depth = depth;
							with (other){
								exception = true;
								spr_dir = player_dir;
								x = lerp(x, player_x + 85*player_dir, .2);
								hsp = player_hsp/2;
								depth = player_depth - 2;
								being_pushed = true;
								roll_rate = 1;
								roll_timer_max = roll_rate*4;
							}
						}
					}
				}
			}
			else{
				other.being_pushed = false;
			}
		}
	}
}


if (being_pushed){
	push_timer++;
}
else{
	push_timer = 0;
}

if (push_timer == 1 && !exception){
	sound_play(sound_get("land"));
	roll_timer = 0;
}

if (being_pushed && ((!free || free) || exception)){
	roll_timer++
	
	if (roll_timer == roll_timer_max){
		roll_timer = 0;
	}
	
	if (roll_timer mod roll_rate == 0){
		if (player_id.hitpause == false){
			player_id.katamari_size += roll_addition; 
		}
	}
	
}

if (player_id.state == PS_HITSTUN){
	being_pushed = false;
	roll_timer = 0;
}



var rune_thingy = false;
var rune_blah = false;

with (player_id){
	if (has_rune("M")){
		rune_thingy = true;
	}
	if (has_rune("F")){
		rune_blah = true;
	}
}



//hitboxes!!!

var lowered_scaling = .8;
var lowered_damage = .75;

//spawn hitbox
if (!hitbox_active && should_spawn_hitbox){
	cur_hitbox = create_hitbox(AT_DSPECIAL, 1, floor(x), floor(y));
	
	//in here for if someone else hits the katamari
	cur_hitbox.player = hit_by;
	
	//blah blah blah
	if (hitbox_angle != 270){
		cur_hitbox.kb_angle = hitbox_angle;
	}
	else{
		cur_hitbox.kb_angle = 90;
	}
	
	if (!rune_thingy){
		cur_hitbox.kb_value = hitbox_bkb;
		cur_hitbox.kb_scale = hitbox_kbs*lowered_scaling;
		cur_hitbox.damage = round(hitbox_damage*lowered_damage);
		cur_hitbox.sound_effect = hitbox_sfx;
		
		if (rune_blah && hitbox_owner == player_id){ //rune
			cur_hitbox.extra_hitpause = 12;
		}
	}
	else{ //rune
		if (hitbox_owner == player_id){
			cur_hitbox.kb_value = hitbox_bkb;
			cur_hitbox.kb_scale = hitbox_kbs*1.2;
			cur_hitbox.damage = round(hitbox_damage*1.2);
			cur_hitbox.sound_effect = hitbox_sfx;
			
			if (rune_blah){ //rune
				cur_hitbox.extra_hitpause = 15;
			}
		}
		else{
			cur_hitbox.kb_value = hitbox_bkb;
			cur_hitbox.kb_scale = hitbox_kbs*lowered_scaling;
			cur_hitbox.damage = round(hitbox_damage*lowered_damage);
			cur_hitbox.sound_effect = hitbox_sfx;
		}
	}
	
	should_spawn_hitbox = false;
	hitbox_active = true;
}

//move hitbox
if (hitbox_active){
	can_be_pushed = false;
	
	cur_hitbox.x = x;
	cur_hitbox.y = y;
}
else{
	can_be_pushed = true;
}


//destroy hitbox
if (should_destroy_hitbox && hitbox_active){
	should_destroy_hitbox = false;
	hitbox_active = false;
	cur_hitbox.hitbox_timer = 1500;
	cur_hitbox = noone;
}



var max_hitbox_time = 40;

//idk
if (hitbox_active){
	if (cur_hitbox.hitbox_timer > max_hitbox_time){
		should_destroy_hitbox = true;
	}
	
	if (hsp == 0 && vsp == 0){
		should_destroy_hitbox = true;
	}
	
	if (cur_hitbox.hitbox_timer > max_hitbox_time){
		should_destroy_hitbox = true;
	}
}


var rune_variable = false;

with (player_id){
	if (has_rune("C")){
		var rune_variable = true;
	}
}


if (hitbox_active || being_pushed || rune_variable){
	should_absorb = true;
}
else{
	should_absorb = false;
}



//absorbing projectiles
if (should_absorb){
	var eat_all = 0;
	
		        	

	        	
	        with (asset_get("pHitBox")) {
	        	

	            //If hitbox is: not the player's, is a projectile, and is in range of 60
	            if (player != other.player_id.player && type == 2 && (point_distance(x, y, other.x + 10 * other.spr_dir, other.y - 30) < 60 || point_distance(x, y, other.x - 10 * other.spr_dir, other.y - 30) < 60)) {

	            	var hbox_dmg = damage;
	            	var hbox = self;
	            	
	                with (other) {
	                	

	                	
	                    //Absorb functionality (Damage greater than 0, not on CD, not reflectable, and either not absorbable by omission, by deliberation, or is not plasma_safe)
	                    if (other.damage > 0 && !variable_instance_exists(other.id, "proj_reflectable") && !other.plasma_safe && (!variable_instance_exists(other.id, "no_absorb") || (variable_instance_exists(other.id, "no_absorb") && other.no_absorb == 0)) ){
	                        
	                        player_id.katamari_size += hbox_dmg*absorb_ratio;
	                		sound_play(sound_get("absorb"));
	                	
	                        hbox.destroyed = true;
	                        hbox.absorbed = true;
	                        if (variable_instance_exists(hbox.id, "article_id")){
	                            if (variable_instance_exists(hbox.article_id, "absorbed")){
	                                hbox.article_id.absorbed = true;
	                            }
	                            if (variable_instance_exists(hbox.id, "destroy_article_on_absorb") && hbox.destroy_article_on_absorb == 1)  {
	                                if (!variable_instance_exists(hbox.id, "absorb_all") || hbox.absorb_all != 0){
	                                    eat_all = hbox.article_id;
	                                }
	                                instance_destroy(hbox.article_id);
	                            }
	                        }
	                        
	                    }
	                    //Reflect functionality
	                    if (hbox.damage > 0 && (variable_instance_exists(hbox.id, "proj_reflectable") && hbox.proj_reflectable == 1)){
	                    	
	                    	sound_play(sound_get("absorb"));
	                    	
	                        hbox.hsp = hbox.hsp * -1;
	                        hbox.vsp = hbox.vsp * -1;
	                        hbox.player = player;
	                        if (variable_instance_exists(other.id, "article_id")){
	                            if (variable_instance_exists(other.article_id, "absorbed")){
	                                hbox.article_id.absorbed = true;
	                            }
	                        }
	                    }
	                }
	            }
	        }
	        with (asset_get("pHitBox")){
	            if ("article_id" in self && "destroy_article_on_absorb" in self && article_id == eat_all){
	                destroyed = true;
	            }
	        }
}

//nspecial stuff
with (player_id){
	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
		if (attack == AT_NSPECIAL){
			if (window == 2){
				if (window_timer == 1){
					with (other){
						if (!triggered && player_id.should_trigger == true){
							sound_stop(sound_get("trigger"));
							sound_play(sound_get("trigger"));
							triggered = true;
							flash_timer = -1;
						}
					}
				}
			}
		}
	}
}

if (triggered){
	
	if (!hitpause && !hitstop){
		flash_timer++;
	}
	
	hitbox_var = false;
	
	if (flash_timer mod flash_mod == 0 && flash_timer != flash_max){
		spawn_hit_fx( x + (spr_dir*2), y, 111 );
	}
}



if (flash_timer == flash_max){
	//explode
	var star_hitbox = create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y));
	spawn_hit_fx( x + (spr_dir*2), y, 112 );
	sound_stop(sound_get("trigger"));
	sound_play(sound_get("boom"));
	player_id.katamari_size = 1;
	die = true;
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
	//stuff
}



//State 1: Idle

if (state == 1){
    //idk
}



//State 2: Dying

if (state == 2){
    if (state_timer == die_time){
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
    //idk
}



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("empty");
        animation_type = 0;
        break;
    case 1:
        new_sprite = sprite_get("empty");
        animation_type = 4;
        break;
    case 2:
        new_sprite = sprite_get("empty");
        animation_type = 4;
        break;
    case 3:
    case 4: //Since all of these guys are just kinda
    case 5: //in a row, without any "break;" lines to
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
    	new_sprite = sprite_get("empty")
    	animation_type = 4;
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        //do nothing lol
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        //hh
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        //h
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}


//delete if out of bounds
if (!triggered){
	if (y > room_height + 200){
		with (player_id){
			move_cooldown[AT_DSPECIAL] = 60;
		}
		player_id.katamari_size -= katamari_loss;
		shake_camera(3, 5);
		sound_stop(sound_get("contact2"));
		sound_play(sound_get("contact2"));
	    instance_destroy();
	    exit;
	}
	
	if (x < 0 - 100 || x > room_width + 100){
		with (player_id){
			move_cooldown[AT_DSPECIAL] = 60;
		}
		player_id.katamari_size -= katamari_loss;
		shake_camera(3, 5);
		sound_stop(sound_get("contact2"));
		sound_play(sound_get("contact2"));
	    instance_destroy();
	    exit;
	}
}

//destroy
if (die){
	instance_destroy();
	exit;
}


//Make time progress
state_timer++;