//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying
- 3 Caught Player
- 4 Player Release
- 5 Mau Inside
- 6 Mau Burst
- 7 Interrupt with Grab
- 8 Grabbed by itself
*/

//Are there too many articles? If so, I should die

if (replacedcount > maxarticles && state != 2){
//
}

//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256);
	state = 2;
	state_timer = 0;
}

//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}

//got hit code -----------------------------------------------------------------------------------------------------------
//print(bubble_kb_scale)
if (place_meeting(x, y, asset_get("pHitBox")) && hitstop == 0) { //makes the article hittable when can_get_hit is true
    	with (asset_get("pHitBox")){
    			if (place_meeting(x, y, other) && hit_priority != 0 && hitpause != 0 && kb_value != 0 && id != other.last_hit && hbox_group != other.last_hit_group){
    				other.hitbox_hit = self;
    				if(type != 2){
    				player_id.hitpause = true;
                    player_id.hitstop = other.hitbox_hit.hitpause;
    				}
                    other.hitstop = other.hitbox_hit.hitpause;
    			}
    	}
    	if (hitbox_hit != noone){
    		if(state != 5){
    		hit_player_obj = hitbox_hit.player_id;
			if hit_player_obj.url = player_id.url{
			hit_player_obj.hitbubble = id;
			}
    		}
    		if(hitbox_hit.hitpause != 0 && hitbox_hit.hit_priority != 0 && hitbox_hit.kb_value != 0 && hitbox_hit.id != last_hit && hitbox_hit.hbox_group != last_hit_group){
    			with (hitbox_hit){
    				if other.grab_hit = false{
        			sound_play(sound_effect);
        			sound_play(asset_get("sfx_frog_nspecial_shove"))
        			spawn_hit_fx(floor(x), floor(y), hit_effect);
    			}
    			}
    			if(hitbox_hit.type == 1){
    			hitbox_hit.player_id.hitpause = true;
    			//hitbox_hit.player_id.hitstop_full = get_hitstop_formula(get_player_damage( frog_id.player ), hitbox_hit.damage, hitbox_hit.hitpause, hitbox_hit.hitpause_growth, hitbox_hit.extra_hitpause);
    			hitbox_hit.player_id.hitstop_full = hitbox_hit.hitpause;
    			hitbox_hit.player_id.old_hsp = hitbox_hit.player_id.hsp
    			hitbox_hit.player_id.old_vsp = hitbox_hit.player_id.vsp
    			hitbox_hit.player_id.has_hit = true;
    			//hitstop = get_hitstop_formula(get_player_damage( frog_id.player ), hitbox_hit.damage, hitbox_hit.hitpause, hitbox_hit.hitpause_growth, hitbox_hit.extra_hitpause);
    			hitstop = hitbox_hit.hitpause;
    			hitby = hitbox_hit.player_id;
    			}if(hitbox_hit.type == 2){
    			hitbox_hit.destroyed = true;	
    			}
    			
    			//I finally figured out how to make the same hitbox not able to hit the article twice
    			//along with hitbox group stuff
    			last_hit = hitbox_hit.id;
    			last_hit_group = hitbox_hit.hbox_group;
    			//print(hitbox_hit.id);
    			
    			hit_angle = hitbox_hit.kb_angle;
    			if(hit_angle == 361){
    					hit_angle = 45;
    			}
    			
    			bubble_kb = hitbox_hit.kb_value;
    			
    			if hitbox_hit.kb_scale > 0 {
    				bubble_kb_scale = true;
    			} else if hitbox_hit.kb_scale = 0 {
    				bubble_kb_scale = false;
    			}
    			
    			//state = 0;
    			//state_timer = 0;
    			
    			//knockback
    			//ily dino
    			switch(hitbox_hit.hit_flipper) {
    				case 5: //Reverse HSP (Same as 0)
					hsp = -lengthdir_x( bubble_kb, hit_angle ) * hitbox_hit.spr_dir;
					vsp = lengthdir_y( bubble_kb, hit_angle ); 
    				break;
    				case 6: //Away Player Hor
    				case 8:
 					hsp = lengthdir_x( bubble_kb, hit_angle ) * sign((x - hitbox_hit.player_id.x));
					vsp = lengthdir_y( bubble_kb, hit_angle );    				
    				break;
    				case 7: //In Player Hor
    				case 9:
 					hsp = lengthdir_x( bubble_kb, hit_angle ) * sign((x + hitbox_hit.player_id.x));
					vsp = lengthdir_y( bubble_kb, hit_angle );    				
    				break;
    				default:
					hsp = lengthdir_x( bubble_kb, hit_angle ) * hitbox_hit.spr_dir;
					vsp = lengthdir_y( bubble_kb, hit_angle );    
    				break;
    			}
    			
    			hsp *= 2;
    			if(hsp != 0){
    			vsp *= 0.5;
    			}else{
    			vsp *= 1;	
    			}
    			
    				//print(vsp);
    			hitstun = get_hitstun_formula(10, 1, 1.0, hitbox_hit.damage, hitbox_hit.kb_value, hitbox_hit.kb_scale);
    			
    			hitstop = round(hitstop);
    			hitstun = round(hitstun);
    			bubble_can_move = false;
    			
    			if(grabbed_id != noone){
    				if grab_hit = false{
    			take_damage(grabbed_id.player, -1, hitbox_hit.damage);	
    			}
    			}
    			if(state == 5){
    			take_damage(hit_player_obj.player, -1, hitbox_hit.damage);		
    			}
    			//pass_thru = false;
    			
    		}
    		}
    }
    else{
    	hitbox_hit = noone;
    }
    
    if(hitstun > 0){
    	hitstun--;
    }
    if(hitstun == 0){
    last_hit_group = -4;	
    }
    
    

//#region State 0: Spawn
if(state == 0){
	if state_timer < 10 {
        vsp = -2;
        } 
    //Go to idle after 20 frames
    if (state_timer >= 20){
        state = 1;
        state_timer = 0;
    }
}

//#region State 1: Idle
if(state == 1){
	if(hitstop == 0){
    vsp = vsp * 0.95;
    hsp = hsp * 0.95;
	}
    ignores_walls = false;
	//lifetime
    if lifetime_timer > 1000 {
    	state = 2;
    	state_timer = 0;
    }
    
    lifetime_timer++;
    
    /*
    	if(vsp > 2 && pass_thru == false){
    	if(place_meeting(floor(x)-3,floor(y)+35,asset_get("par_jumpthrough"))){
    		print("ok");
    		y += 10;
    		free = true;
    		pass_thru = true;
		}
    	}
    	*/
    
        if (hit_wall){
        	hsp = -old_hsp*0.5;
        	x += hsp;
        }
        
        if(!free){
        	vsp = -old_vsp*0.5;
        	y += vsp;
        }
        
        old_hsp = hsp;
		old_vsp = vsp;
		
		bubble_trap();
		bubble_grabbed();
		
		if(player_id.killarticles || should_die){
			state = 2;
			state_timer = 0;
		}
		
    with (pHitBox){
    if (place_meeting(x,y,other.id) and player_id.url == other.player_id.url){
		if(attack == AT_USPECIAL && (hbox_num == 1 || hbox_num == 2)){
			//enter bubble
		if(player_id.special_down = false){
			//print("entered bubble");
			other.state = 5;
			other.state_timer = 0;
			//other.grabbed_id = player_id;
			with(player_id){
				clear_button_buffer( PC_SPECIAL_PRESSED );
				set_attack(AT_USPECIAL_2);
				hurtboxID.sprite_index = get_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE);
				destroy_hitboxes();
			}
			}
		}
		
			if((attack == AT_DSPECIAL_AIR || attack == AT_DSPECIAL) && (hbox_num == 1 || hbox_num == 2)) {
				vsp = 0;
				hsp = 0;
				if !player_id.special_down {
					//enter bubble
					//print("entered bubble");
					other.state = 5;
					other.state_timer = 0;
					//other.grabbed_id = player_id;
						with(player_id){
							clear_button_buffer( PC_SPECIAL_PRESSED );
							set_attack(AT_USPECIAL_2);
							hurtboxID.sprite_index = get_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE);
							destroy_hitboxes();
						}
				} else if player_id.special_down {
					print("test")
					with(player_id){
						if attack == AT_DSPECIAL {
							attack_end();
							clear_button_buffer( PC_SPECIAL_PRESSED );
							// window = 4;
							// window_timer = 0;
							hitstop = 4;
							hurtboxID.sprite_index = sprite_get("dspecial_hurt");
							destroy_hitboxes();
						} else if attack == AT_DSPECIAL_AIR {
							attack_end();
							clear_button_buffer( PC_SPECIAL_PRESSED );
							set_attack(AT_DSPECIAL_AIR);
							window = 6;
							window_timer = 0;
							hitstop = 4;
							hurtboxID.sprite_index = sprite_get("dspecialair_hurt");
							destroy_hitboxes();							
						}
					}
				} 
			}
		
		}
	}
    
}

//#region State 2: Death
if (state == 2){
	hsp = 0;
	vsp = 0;
	if state_timer == 10 {
	sound_play(asset_get("sfx_bubblepop"));
	}
	
    if (state_timer == die_time){
        player_id.killarticles = false;
        instance_destroy();
        exit;
    }
	
}

//#region State 3: Caught Player
if (state == 3){
    
	if(grabbed_id != noone){
		grabbed_id.hitstop = 2;
		grabbed_id.hitpause = true;
		grabbed_id.invince_time = 1;
		grabbed_id.invincible = true;
		grabbed_id.x = floor(x);
		grabbed_id.y = floor(y)+35;
		grabbed_id.hsp = 0;
		grabbed_id.vsp = 0;
		grabbed_id.old_hsp = 0;
		grabbed_id.old_vsp = 0;
		if(grabbed_id.state = PS_DEAD || grabbed_id.state = PS_RESPAWN){
			grabbed_id = noone;
		}
	}
	
/*	if grabbed_id.id = player_id.id {
		if bubble_kb_scale = false {
			state = 2;
			state_timer = 0;
			grabbed_id.hsp = 0;
			grabbed_id.vsp = 0;
			grabbed_id.old_hsp = 0;
			grabbed_id.old_vsp = -6;
			grabbed_id = 0;
		}
	}
*/	
	if(bubble_can_move){
	with(grabbed_id){
    	if(!joy_pad_idle){
            other.hsp = (lengthdir_x(1, joy_dir)*2.5);
            other.vsp = (lengthdir_y(1, joy_dir)*2.5);
    	}else {
    		if(other.hitstop == 0){
			other.vsp = other.vsp * 0.975;
    		other.hsp = other.hsp * 0.975;
    		}
        }		
	}
	}else{
    vsp = vsp * 0.925;
    hsp = hsp * 0.925;
    
    if(hsp < 1 && hsp > -1){
    	if(vsp < 1 && vsp > -1){
    bubble_can_move = true;	
    	}
    }
	}
	
	if(state_timer >= trap_lifetime) || (state_timer >= 150){
    	state = 4;
    	state_timer = 0;
	}
	
        if (hit_wall){
        	hsp = -old_hsp*0.5;
        	x += hsp;
        }
        
        if(!free){
        	vsp = -old_vsp*0.5;
        	y += vsp;
        }
        
        old_hsp = hsp;
		old_vsp = vsp;

		if(player_id.killarticles || should_die){
			state = 4;
			state_timer = 0;
		}
		
		bubble_grabbed();
	
}

//#region State 4: Player Freed
if (state == 4){
	
	if(grabbed_id != noone){
		if(state_timer = 1){
		// grabbed_id.x = floor(x);
		// grabbed_id.y = floor(y)+35;
		grabbed_id.hsp = 0;
		grabbed_id.vsp = 0;
		grabbed_id.old_hsp = 0;
		grabbed_id.old_vsp = 0;
		grabbed_id.hitstop = 1;
		grabbed_id.hitpause = true;
		grabbed_id.invince_time = 0;
		grabbed_id.invincible = false;
		grabbed_id.state = PS_TUMBLE;

		if(grabbed_id.state = PS_DEAD || grabbed_id.state = PS_RESPAWN){
			grabbed_id = noone;
		}
	}
	}
	
	hsp = 0;
	vsp = 0;
	if state_timer == 2 {
	if(grabbed_id = player_id){
		player_id.move_cooldown[AT_NSPECIAL] = 120
	}
	//print(grabbed_id.vsp);
	grabbed_id = -4;
	sound_play(asset_get("sfx_bubblepop"));
	}
	
    if (state_timer == die_time){
        player_id.killarticles = false;
        instance_destroy();
        exit;
    }	
}

//#region State 5: Mau In Bubble
if (state == 5){
	
		hit_player_obj.x = floor(x);
		hit_player_obj.y = floor(y)+45;
		hit_player_obj.invince_time = 2;
		hit_player_obj.invincible = true;
		hit_player_obj.hsp = 0;
		hit_player_obj.vsp = 0;
		hit_player_obj.old_hsp = 0;
		hit_player_obj.old_vsp = 0;
	
	if(bubble_can_move){
		with(hit_player_obj){
    	if(!joy_pad_idle){
            other.hsp = (lengthdir_x(1, joy_dir)*4.5);
            other.vsp = (lengthdir_y(1, joy_dir)*4.5);
    	}else {
    		if(other.hitstop == 0){
			other.vsp = other.vsp * 0.95;
    		other.hsp = other.hsp * 0.95;
    		}
        }		
	}
	
	if(hit_player_obj.special_pressed){
	hit_player_obj.window = 3;
	hit_player_obj.window_timer = 0;
	state = 6;
	state_timer = 0;
	}
	
	}else{
    vsp = vsp * 0.95;
    hsp = hsp * 0.95;
    
    if(hsp < 1 && hsp > -1){
    	if(vsp < 1 && vsp > -1){
    bubble_can_move = true;	
    	}
    }
	}
	
	if(state_timer == 120){
	hit_player_obj.window = 3;
	hit_player_obj.window_timer = 0;
	state = 6;
	state_timer = 0;		
	}
	
}

//#region State 6: Mau Burst
if (state == 6){
	hit_player_obj.x = floor(x);
	hit_player_obj.y = floor(y)+45;
	hit_player_obj.hsp = 0;
	hit_player_obj.vsp = 0;
	hit_player_obj.old_hsp = 0;
	hit_player_obj.old_vsp = 0;
	hsp = 0;
	vsp = 0;
	
	if state_timer == 10 {
	//sound_play(asset_get("sfx_bubblepop"));
	}
	
    if (state_timer == die_time){
        player_id.killarticles = false;
        instance_destroy();
        exit;
    }	
}

//#region State 7: Grabbed Player
if (state == 7){
	lifetime_timer++;
	if(hit_player_obj.url = player_id.url && grabbed_by_mau && (hit_player_obj.attack = AT_USPECIAL || hit_player_obj.attack = AT_FSTRONG || hit_player_obj.attack = AT_FSPECIAL) && hit_player_obj.uspecstrongfx = false){
	x = hit_player_obj.x + 50* hit_player_obj.spr_dir;
	y = hit_player_obj.y - 40;
	}
	
	with(hit_player_obj){
		if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
			//uspec
		if(attack == AT_USPECIAL){
		if(window == 5 && window_timer == 9){
		other.grabbed_by_mau = false;
		other.x = x - 50 * spr_dir;
		other.y = y;
		other.state = 1;
		other.state_timer = 0;
		}
		}
		
		if(attack == AT_FSPECIAL){
		if(window == 6 && window_timer == 1){
		other.grabbed_by_mau = false;
		//other.hsp = 10*spr_dir;
		other.vsp = -2;
		other.state = 1;
		other.state_timer = 0;
			}
		}
		
		if(attack == AT_FSPECIAL_2){
			if(window == 1 && window_timer == 8){
		other.grabbed_by_mau = false;
		other.x = x + 20 * spr_dir;
		other.y = y-70;
		other.state = 1;
		other.state_timer = 0;
			}if(window == 2 && window_timer == 28){
		other.grabbed_by_mau = false;
		// other.x = x - 50 * spr_dir;
		// other.y = y-50;
		other.state = 1;
		other.state_timer = 0;
			}if(window == 3 && window_timer == 8){
		other.grabbed_by_mau = false;
		other.state = 1;
		other.state_timer = 0;
			}if(window == 4 && window_timer == 11){
		other.grabbed_by_mau = false;
		other.x = x + 50 * spr_dir;
		other.y = y-50;
		other.state = 1;
		other.state_timer = 0;
			}
		}

		if(attack == AT_FSTRONG){
		if(window = 4){
		if(other.hit_player_obj.grabbed_player_obj != noone){
		other.hit_player_obj.grabbed_player_obj.x = other.x
    	other.hit_player_obj.grabbed_player_obj.y = other.y + 29
    		if other.hit_player_obj.grabbed_player_obj.free = false{
    			other.hit_player_obj.grabbed_player_obj.y -= 5
    		}
		}
		}
		if(window == 6){
		if(window_timer == 23 && fstrongstrongfx = false){
		other.grabbed_by_mau = false;
		// other.x = x + 50 * spr_dir;
		// other.y = y- 40;
		other.state = 1;
		other.state_timer = 0;
		other.ignores_walls = true;
		}
		if (window_timer == 23){
			sound_play(asset_get("mfx_star"))
			var tfx = spawn_hit_fx(other.hit_player_obj.x + 25*spr_dir, other.hit_player_obj.y + 44, fstrong_gleam_vfx)
			tfx.depth = other.hit_player_obj.depth - 1
		}
		if (window_timer == 49){
		other.grabbed_by_mau = false;
		// other.x = x + 50 * spr_dir;
		// other.y = y- 40;
		other.state = 1;
		other.state_timer = 0;
		other.ignores_walls = true;
		}
			}
		}
		
		}else{
			other.state = 1;
			other.state_timer = 0;
		}
	}
	
}

//#region State 8: Grabbed Bubble

if(state == 8){
	hsp = 0;
	vsp = 0;
	if state_timer == 10 {
	sound_play(asset_get("sfx_bubblepop"));
    sound_play(sound_get("dstrong_kegsplode"));
	}
	
    if (state_timer == die_time + 14){
        player_id.killarticles = false;
        instance_destroy();
        exit;
    }	
}
//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
    new_sprite = sprite_get("bubcreate");
    mask_index = asset_get("empty_sprite"); 
        break;
    case 1:
    case 3:
    case 5:
    case 7:
    new_sprite = sprite_get("bubactive");
    mask_index = sprite_get("bubmask"); 
    	break;
    case 2:
    new_sprite = sprite_get("bubdestroy");
    mask_index = asset_get("empty_sprite"); 
    animation_type = 2;
        break;
    case 4:
    case 6:
    new_sprite = sprite_get("bubdestroy");
    mask_index = asset_get("empty_sprite"); 
    animation_type = 2;
        break;
    case 8:
    new_sprite = sprite_get("bubdestroyex");
    mask_index = asset_get("empty_sprite"); 
    animation_type = 2;
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}

if(grabbed_id == noone && state != 2 && state != 4 && state != 5 && state != 6 && state != 7){
if (y < 0 || y > room_height){
	sound_play(asset_get("sfx_bubblepop"));
	player_id.killarticles = false;
    instance_destroy();
    exit;
}

if (x < 0 || x > room_width){
	sound_play(asset_get("sfx_bubblepop"));
	player_id.killarticles = false;
    instance_destroy();
    exit;
}
}

//Make time progress
state_timer++;

#define bubble_trap
with (oPlayer){
	if (place_meeting(x, y, other)){
		if (id != other.player_id){
			if(state == PS_HITSTUN){
				if other.player_id.grabbed_player_obj = noone{
				if (state_timer >= 3){
				hitstop = 2;
				hitpause = true;
				other.grabbed_id = self;
				other.state = 3;
				other.state_timer = 0;
				other.hsp = hsp * .6;
				other.vsp = vsp * .6;
				other.trap_lifetime = 30 + (get_player_damage( player ) * .5);
			}
			}
			}
		} else if (id == other.player_id){
			if (other.player_id.hitpause = false){
			if(state == PS_HITSTUN && other.player_id.mau_hitstun_scale = true){
				hitstop = 2;
				hitpause = true;
				other.grabbed_id = self;
				other.state = 3;
				other.state_timer = 0;
				other.hsp = hsp * .9;
				other.vsp = vsp * .9;
				other.trap_lifetime = 40;
			}			
		}
		}
	}
}
#define bubble_grabbed

    with (pHitBox){
    if (place_meeting(x,y,other.id) and player_id.url == other.player_id.url){

		if(attack == AT_USPECIAL && (hbox_num == 1 || hbox_num == 2)){
		if(player_id.special_down){
			if(other.grabbed_id == noone){
				other.grabbed_by_mau = true;
				other.state = 7;
				other.state_timer = 0;
				other.depth = 10
			with(player_id){
			sound_play(sound_get("catch"), false, noone, 0.4, 1);
			window = 5;
			window_timer = 0;
			mau_grabbed_da_bubble = true;
			destroy_hitboxes();
			}
			
			}else{
				other.depth = -5
				other.hit_player_obj.uspecialgrabbubble = true;
				other.grabbed_id.invince_time = 0;
				other.grabbed_id.invincible = false;
				other.state = 7;
				other.state_timer = 0;
				other.hit_player_obj.window = 5
				other.hit_player_obj.window_timer = 0
				sound_play(sound_get("catch"), false, noone, 0.4, 1);
				if (!instance_exists(other.hit_player_obj.grabbed_player_obj)) { other.hit_player_obj.grabbed_player_obj = other.grabbed_id; }
				with(player_id){
				destroy_hitboxes();
				}
			}
			}
		}
		if(attack == AT_USPECIAL && hbox_num = 5){
				other.depth = -10
				if (other.grabbed_id != noone){
				// print_debug("yehhha")
				other.state = 8;
				other.state_timer = 0;
				other.grabbed_id.hitstop += ((other.hitbox_hit.hitpause) + (other.hitbox_hit.hitpause_growth*6))
				other.hit_player_obj.hsp = 0;
				other.hit_player_obj.vsp = 0;
		}
		}
		if(attack == AT_FSPECIAL){
			if(other.grabbed_id == noone){
				other.grabbed_by_mau = true;
				other.state = 7;
				other.state_timer = 0;
			with(player_id){
			sound_play(sound_get("snatch"));
			mau_grabbed_da_bubble = true;
			destroy_hitboxes();
			}
			}else{
				other.hit_player_obj.fspecialgrabbubble = true;
				other.hit_player_obj.mau_grabbed_da_bubble = true;
				other.grabbed_id.invince_time = 0;
				other.grabbed_id.invincible = false;
				other.state = 7;
				other.state_timer = 0;
				if (!instance_exists(other.hit_player_obj.grabbed_player_obj)) { other.hit_player_obj.grabbed_player_obj = other.grabbed_id; }
				with(player_id){
				destroy_hitboxes();
				}
			}
		}
		if (attack == AT_FSPECIAL_2){
			if (other.grabbed_id != noone){
				sound_play(asset_get("sfx_poison_hit_strong"), false, noone, 0.7, 1);
				other.state = 8;
				other.state_timer = 0;
				other.grabbed_id.hitstop_full = ((other.hitbox_hit.hitpause) + (other.hitbox_hit.hitpause_growth*5) + 10)
				other.hit_player_obj.fspec2hit = true;
		}else{
				if (other.grabbed_id = noone){
				other.hit_player_obj.move_cooldown[AT_FSPECIAL] = 999;
				other.hit_player_obj.has_hit = false;
		}
		}
		}
		if(attack == AT_FSTRONG && hbox_num == 1){
			if(other.grabbed_id == noone){
				other.grabbed_by_mau = true;
				other.state = 7;
				other.state_timer = 0;
			with(player_id){
			sound_play(sound_get("catch"), false, noone, 0.4, 1);
			mau_grabbed_da_bubble = true;
			destroy_hitboxes();
			}
			
			}else{
				other.hit_player_obj.fstronggrabbubble = true;
				other.hit_player_obj.invince_time = 0;
				other.hit_player_obj.invincible = false;
				other.grabbed_id.can_tech = false;
				other.hit_player_obj.grabbed_player_obj = other.grabbed_id
				other.hit_player_obj.grabbed_player_obj.x = other.x + 1*other.spr_dir
    			other.hit_player_obj.grabbed_player_obj.y = other.y + 35
				other.state = 7;
				other.state_timer = 0;
				if (!instance_exists(other.hit_player_obj.grabbed_player_obj)) { other.hit_player_obj.grabbed_player_obj = other.grabbed_id; }
				with(player_id){
				destroy_hitboxes();
				}
			}
		}		
		if(attack == AT_FSTRONG && hbox_num == 2){
				if (other.grabbed_id != noone){
				other.state = 8;
				other.state_timer = 0;
				other.grabbed_id.hitstop += ((other.hitbox_hit.hitpause) + (other.hitbox_hit.hitpause_growth*2) + 2)
		}
	}
    }
    }