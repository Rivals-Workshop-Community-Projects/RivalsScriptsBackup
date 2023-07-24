//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Attack
- 2 Natural Despawn
- 3 Interrupted


BUGFIX/TODO----------------------------------------------------------------------

-fix aerial parrystun
-nothing

*/

//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
}



//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)

if(can_be_hit){
	var hbox = collision_rectangle(x-21, y-60, x+21, y, asset_get("pHitBox"), true, false);
	if(hbox != noone && hbox.player != player_id.player && hbox.hit_priority > 0 && hbox.hitstun_factor >= 0){
		
		/*//on-hit stuff
		with(hbox.player_id){
			sound_play(hbox.sound_effect);
			spawn_hit_fx(floor(other.x),floor(other.y - 35), hbox.hit_effect);
			hitpause = true;
			hitstop = hbox.hitpause;
		}
		hbox.has_hit = true;
		if(hbox.type == 2 && hbox.enemies == 0){
			hbox.destroy_fx = 1;
			hbox.destroyed = true;
		}
		hitstop = hbox.hitpause;
		shoulddie = true;*/
		if(hbox.type == 1){
			with(hbox.player_id){
				old_hsp = hsp;
				old_vsp = vsp;
				hitpause = true;
				hitstop = 3;
			}
		}
		
		//swap player with assist if it gets hit
		shoulddie = true;
		var swapx = x;
		var swapy = y;
		x = player_id.x;
		y = player_id.y;
		
		player_id.x = floor(swapx);
		player_id.y = floor(swapy);
		player_id.spr_dir = spr_dir;
		player_id.hitstop = 2;
		
		with(player_id){
			attack_end();
	        destroy_hitboxes();
	        //set_state(PS_IDLE_AIR);
	        
	        //disable roll invince and stuff. thank you frtoud
			set_state(other.free? PS_HITSTUN_LAND : PS_HITSTUN);
			can_tech = false;
			hurtboxID.dodging = false;
			hurtboxID.sprite_index = sprite_get("sb_hurtbox");
			
			var skin = (other.is_bite? "bite" : -1);
			if(skin == -1){
			    set_ui_element(UI_HUD_ICON, sprite_get("hud"));
			    set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_hurt"));
			    set_ui_element(UI_OFFSCREEN, sprite_get("offscreen"));
			} else {
			    set_ui_element(UI_HUD_ICON, sprite_get("hudb"));
			    set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_hurtb"));
			    set_ui_element(UI_OFFSCREEN, sprite_get("offscreenb"));
			}
			var obj = (object_index != oPlayer && object_index != oTestPlayer) ? player_id : id;
			with obj {
			    if (is_string(skin)) {
			        //_ssnksprites.skin_active = array_find_index(_ssnksprites.skins,skin);
			        var sskin = -1;
			        if skin in _ssnksprites.skins {
			            _ssnksprites.skin_active = variable_instance_get(_ssnksprites.skins, skin)[@3];
			        }
			        else print(`Skin ${skin} not found.`);
			    } else if (is_number(skin)) {
			        
			        if (_ssnksprites.skin_active >= array_length(_ssnksprites.skins_n)) print(`${skin} is out of bounds of the skin array. [0..${array_length(_ssnksprites.skins_n)-1}] inclusive. (-1 to disable skin.)`);
			        else _ssnksprites.skin_active = skin;
			    }
			}
		}
		
		is_bite = !is_bite;
		spr_hit = (is_bite? sprite_get("bite_ohno") : sprite_get("ohno"));
	}
}


//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y - 35), 256);
	shoulddie = true;
}



//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2

/*if (player_id.killarticles && state != 2){
    state = 2;
    state_timer = 0;
}*/
//if(hitstop > 0) hitstop--;


//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}

if(shoulddie){
    state = 3;
    state_timer = 0;
    //y -= 20;
    shoulddie = false;
}

if(white_flash > 0) white_flash--;
player_id.move_cooldown[AT_DSPECIAL] = 30;

//State 0: Freshly spawned

if (state == 0){
    
    if(state_timer = 0) hsp = init_speed * spr_dir;
    hsp *= slowdown;
    //Go to attack
    if (state_timer >= assist_startup){
    	if(stored_atk == 0){
    		//just pose if theres no stored attack
    		sound_play(asset_get("mfx_star"));
    		state = 2;
    		state_timer = 0;
    	}else{
	        state = 1;
	        state_timer = 0;
	        window = 1;
	        window_timer = 1;
	        if(stored_atk == AT_NAIR || stored_atk == AT_FAIR || stored_atk == AT_UAIR || stored_atk == AT_BAIR || stored_atk == AT_DAIR){
	            vsp = aerial_bounce;
	        }
    	}
    }
}



//State 1: Attacking

if (state == 1){
    hsp *= slowdown;
    if(abs(hsp) < 1) hsp = 0;
    if(stored_atk == AT_NAIR || stored_atk == AT_FAIR || stored_atk == AT_UAIR || stored_atk == AT_BAIR || stored_atk == AT_DAIR){
        vsp += player_id.gravity_speed;
        vsp = clamp(vsp, -8, player_id.max_fall - 1);
    }
    sprite_index = spr_atk;
    
    
    //sfx
    if(window_sfx_frame != -1 && window_timer == window_sfx_frame && hitstop == 0){
        with(player_id) sound_play(other.window_sfx);
    }
    if (stored_atk == AT_DSTRONG){
        if (window == 2 && window_timer == 4 && hitstop == 0){
            with(player_id) sound_play(sound_get("sfx_snb_record2"));
        }
        
        if (window == 4 && window_timer == 10 && hitstop == 0){
            with(player_id) sound_play(sound_get("sfx_snb_clothes"));
        }
    }
    //spawn hitbox
    with(player_id){
        var atk = other.stored_atk;
        for (var i = 1; i <= get_num_hitboxes(atk); i++){
            //check if it matches window criteria or if it has been spawned already
            if(other.dspec_hitboxes[i] == 0 && get_hitbox_value(atk, i, HG_WINDOW) == other.window &&
            get_hitbox_value(atk, i, HG_WINDOW_CREATION_FRAME) == other.window_timer){
                
                other.dspec_hitboxes[i] = 1;
                //set as projectile before spawning
                set_hitbox_value(atk, i, HG_HITBOX_TYPE, 2); 
                set_hitbox_value(atk, i, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
				set_hitbox_value(atk, i, HG_PROJECTILE_MASK, -1);
				set_hitbox_value(atk, i, HG_PROJECTILE_DESTROY_EFFECT, 1);
				set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
				set_hitbox_value(atk, i, HG_PROJECTILE_WALL_BEHAVIOR, 1);
				set_hitbox_value(atk, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
				set_hitbox_value(atk, i, HG_PROJECTILE_UNBASHABLE, 1);
				set_hitbox_value(atk, i, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
				set_hitbox_value(atk, i, HG_PROJECTILE_IS_TRANSCENDENT, 1);
				//set_hitbox_value(atk, i, HG_PROJECTILE_PARRY_STUN, 1);
				//set_hitbox_value(atk, i, HG_EXTENDED_PARRY_STUN, 1);
				
				var hbox = create_hitbox(atk, i, floor(other.x + (get_hitbox_value(atk, i, HG_HITBOX_X) * spr_dir)),
				    floor(other.y + get_hitbox_value(atk, i, HG_HITBOX_Y)));
				
				//properly set direction and speed
				hbox.owner = other;
				hbox.spr_dir = other.spr_dir;
				hbox.hsp = other.hsp;
				hbox.vsp = other.vsp;
				hbox.hitbox_timer--;	//account for spawning "late" into the frame so it would be 1f less active than normal
				//change snb hitfx
				if((hbox.attack == AT_UAIR) || (hbox.attack == AT_FSTRONG) || (hbox.attack == AT_USTRONG && hbox.hbox_num == 7) ||
				(hbox.attack == AT_DSTRONG && hbox.hbox_num == 9)){
					if(other.is_bite){
						hbox.hit_effect = vbite;
					}else{
						hbox.hit_effect = vscratch;
					}
				}
				
				set_hitbox_value(atk, i, HG_HITBOX_TYPE, 1); 
                
            }
        }
    }
    //if(hitstop == 0) window_timer++;
    //lerp to find the current anim frame
    image_index = window_frame_start + lerp(0, window_frames, max(window_timer, 0)/window_length);
    if(hitstop <= 0) window_timer++;
    
    //do jab 2 earlier
    if(stored_atk == AT_JAB && window == 3 && window_timer >= 6){
    	window_timer = window_length;
    }
    
    //dattack speed
    if(stored_atk == AT_DATTACK){
    	if(window == 1 && window_timer >= window_length){
    		hsp = 8 * spr_dir;
    	}
    	if(window < 4){
    		slowdown = 1;
    		hsp -= (0.3 * spr_dir);
    	}else{
    		slowdown = slowdown_orig;
    	}
    }
    
    //fstrong speed
    if(stored_atk == AT_FSTRONG){
    	if(window == 1 && window_timer >= window_length){
    		hsp += (2 * spr_dir);
    	}
    	if(window < 3){
    		slowdown = 1;
    		hsp -= (0.3 * spr_dir);
    	}else{
    		slowdown = slowdown_orig;
    	}
    }
    //ustrong friction
    if(stored_atk == AT_USTRONG){
    	slowdown = 0.93;
    }
    
    //loop Bite taunt once
    if(stored_atk == AT_TAUNT_2 && window_timer >= window_length && state_timer < 40){
    	window_timer = 0;
    }
    
}



//State 2: Despawn Normally

if (state == 2){
	//hsp = 0;
	//vsp = 0;
	hsp *= 0.85;
    image_xscale = 1;
    image_yscale = 1;

    if(state_timer >= 20){
        spawn_hit_fx( x, y - 35, 144 );
        player_id.assist = noone;
        instance_destroy();
        exit;
    }
}

//State 3: Interrupted

if (state == 3){
	//turn around to always look at the partner
	if(state_timer == 1){
		sound_play(asset_get("mfx_unstar"), false, noone, 2.3, 0.95);
		spr_dir = sign(player_id.x - x);
	}
	
	can_be_hit = false;
	can_swap = false;
	hsp = 0;
	vsp = 0;
    image_xscale = 2;
    image_yscale = 2;
    
    if(state_timer >= 30){
        spawn_hit_fx( x, y - 35, 144 );
        player_id.assist = noone;
        instance_destroy();
        exit;
    }
}



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)


//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        //new_sprite = spr_init;
        animation_type = 1;
        break;
    case 1:
        new_sprite = spr_atk;
        animation_type = 3;
        break;
    case 2:
        new_sprite = spr_pose;
        animation_type = 1;
        break;
    case 3:
        new_sprite = spr_hit;
        animation_type = 2;
        break;
}

if(state == 1){
	depth = -6;
}else{
	depth = -3;
}
if(white_flash > 0) depth = player_id.depth + 1;

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
        if (state_timer mod die_anim_rate == 0 && state_timer != 0){
            image_index++;
        }
        break;
    
    case 3: //Increment image_index at the rate determined the window timing variables
        if(window_timer > -1 && (window_timer >= window_length) && hitstop == 0){
            //end attack or transition to next window
            if(window == window_nums){
                sound_play(asset_get("mfx_star"));
                state = 2;
                state_timer = 0;
                hsp = 0;
				vsp = 0;
            }else{
                window++;
                window_timer = 0;
                //window variables
                with(player_id){
                    var atk = other.stored_atk;
                    var wnd = other.window;
                    if(get_window_value(atk, wnd, AG_WINDOW_HAS_WHIFFLAG) > 0){
                        other.window_length = get_window_value(atk, wnd, AG_WINDOW_LENGTH) * 1.5;                  //window length in frames
                    }else{
                        other.window_length = get_window_value(atk, wnd, AG_WINDOW_LENGTH);                  //window length in frames
                    }
                    other.window_nums = get_attack_value(atk, AG_NUM_WINDOWS);                         //windows in the attack
                    other.window_frame_start = get_window_value(atk, wnd, AG_WINDOW_ANIM_FRAME_START);   //window frame start
                    other.window_frames = get_window_value(atk, wnd, AG_WINDOW_ANIM_FRAMES);             //window frames in the window
                    
                    if(get_window_value(atk, wnd, AG_WINDOW_HAS_SFX)){
                        other.window_sfx = get_window_value(atk, wnd, AG_WINDOW_SFX);                    //window sfx
                        other.window_sfx_frame = get_window_value(atk, wnd, AG_WINDOW_SFX_FRAME);        //frame to play window sfx
                    }else{
                        other.window_sfx = -1;
                        other.window_sfx_frame = -1;
                    }
                }
            }
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}



//Make time progress
state_timer++;