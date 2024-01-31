// update.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/event_scripts.html#every-frame
// Code here is run every frame for your character.

if(get_match_setting(SET_PRACTICE) && !has_recolored_hitboxes){
	for(var i = 0; i <= 42; i++){
	    for(var j = 0; j <= 10; j++){
	        if get_hitbox_value(i, j, HG_SLUDGE_EFFECT) > 0 {
	            set_hitbox_value(i, j, HG_HITBOX_COLOR, sludge_hbox_color);
	        }
	    }
	}
	has_recolored_hitboxes = true;
}

prep_hitboxes();

if(get_player_color(player) == 14 && outline_color[@0] == 0 && outline_color[@1] == 0 && outline_color[@2] == 0){
	outline_color = [35, 67, 49];
}

var sludge_bubble_vfx_list = [];
var disease_bubble_vfx_list = [];

if(state != PS_ATTACK_GROUND){
	sound_stop(ustrong_charge_sound);
}

if(state != PS_RESPAWN && state != PS_DEAD){
	stored_percent = get_player_damage(player);
}

if(has_rune("O") && rune_respawn == -1 && state == PS_RESPAWN){
	visible = true;
	x = sludge_puddle_id.x;
	y = sludge_puddle_id.y;
	set_attack(AT_DSTRONG);
	set_player_damage(player, floor(stored_percent/2));
}

if(!free || state == PS_DEAD || state == PS_RESPAWN){
	screen_wrapped = false;
}

var runeJ = has_rune("J");
var runeL = has_rune("L");
var runeM = has_rune("M");

var gX_glitching = false;

with(oPlayer){
    if(self != other && get_player_team(player) != get_player_team(other.player)){
    	if(runeM && state != PS_RESPAWN && state != PS_DEAD && diseased_id == noone && fucking_dying_id == noone){
    		if(sludged_id == noone) sludged_id = other;
    		sludge_amount++;
    		sludge_decay_lockout = 9999;
    		if(sludge_amount > sludge_max){
			    sludged_id = noone;
	        	sludge_amount = 0;
	        	diseased_id = other;
	        	diseased_timer = diseased_timer_max;
    		}
    	}
    	if(runeM && diseased_id != noone && state != PS_RESPAWN && state != PS_DEAD && fucking_dying_id == noone){
    		diseased_timer = max(diseased_timer, 75);
    	}
        if(sludged_id == other){
            if(state == PS_RESPAWN || state == PS_DEAD){
                sludge_amount = 0;
                sludge_decay_lockout = 0;
                sludged_id = noone;
            }
            if(sludge_decay_lockout > 0){
                sludge_decay_lockout--;
                if(runeJ && state_cat != SC_HITSTUN && state != PS_TUMBLE){
                	var speed_dif = ease_linear(0, 5, sludge_amount, sludge_max)/10;
                	speed_dif = clamp(speed_dif, 0, .5);
                	if(abs(hsp)>1) x -= round(hsp * speed_dif);
                }
            } else if(sludge_amount >= sludge_incrament){
                sludge_amount -= sludge_incrament;
                if(runeJ && state_cat != SC_HITSTUN && state != PS_TUMBLE){
                	var speed_dif = ease_linear(0, 5, sludge_amount, sludge_max)/10;
                	speed_dif = clamp(speed_dif, 0, .5);
                	if(abs(hsp)>1) x -= round(hsp * speed_dif);
                }
            }
            if(sludge_amount >= sludge_max/2){
            	array_push(sludge_bubble_vfx_list, self);
            }
            if(sludge_amount <= 0 && sludged_id == other){
                sludge_amount = 0;
                sludged_id = noone;
            }
            if(sludge_amount >= sludge_max){
            	sludged_id = noone;
            	sludge_amount = 0;
            	sludge_decay_lockout = 0;
            	diseased_id = other;
            	diseased_timer = diseased_timer_max;
            }
        }
        if(diseased_id == other){
            if(state == PS_RESPAWN || state == PS_DEAD){
                diseased_timer = 0;
                diseased_id = noone;
            }
            if(diseased_timer == diseased_timer_max - 1){
        		sound_play(asset_get("sfx_frog_ustrong"), false, false, 1.6, .8);
        		sound_play(asset_get("sfx_frog_gong_hit"), false, false, 1.6);
        		with other sound_play(sound_get("g10glitch_2"));
        	}
        	if(other.genesis && diseased_id == other){
    			gX_glitching = true;
				if other.gX_glitch_sound == noone other.gX_glitch_sound = sound_play(asset_get("sfx_plasma_field_loop"), true, false, 200, .5);
    		}
            if(diseased_timer > 0){
            	if (runeJ && state_cat != SC_HITSTUN && state != PS_TUMBLE) && (abs(hsp)>1) x -= round(hsp/2);
                diseased_timer--;
                array_push(disease_bubble_vfx_list, self);
            }
            if(diseased_timer <= 0 && diseased_id == other){
                diseased_timer = 0;
                diseased_id = noone;
                undiseased_id = other;
                undiseased_timer = undiseased_timer_max;
                sound_play(asset_get("mfx_star"));
            }
            if(runeL){
            	diseased_timer = 0;
                diseased_id = noone;
            	fucking_dying_timer = 1;
				fucking_dying_id = other;
				orig_fucking_x = x;
				orig_fucking_y = y;
				sound_play(asset_get("sfx_frog_ustrong"), false, false, 1.6, .8);
        		sound_play(asset_get("sfx_frog_gong_hit"), false, false, 1.6);
            }
        }
        if(undiseased_id == other){
        	if(undiseased_timer > 0){
                undiseased_timer--;
            }
        	if(undiseased_timer <= 0){
                undiseased_timer = 0;
                undiseased_id = noone;
            }
        }
        if(fucking_dying_id == other && other.kill_goof){
        	if(fucking_dying_timer > 0){
                fucking_dying_timer++;
            }
            if(fucking_dying_timer == 2){
            	// add death.ogg later
                // with(other) sound_play(sound_get("death"), false, noone, 2, 1);
            }
            if(fucking_dying_timer > 0  && fucking_dying_timer < 300){
                state = PS_HITSTUN;
                state_timer = 2;
                hitstun = 4;
                hitstun_full = 4;
                hitpause = true;
                hitstop = 2;
                hitstop_full = 2;
                spr_dir = 0;
            }
            if(fucking_dying_timer >= 300){
            	if(fucking_dying_timer == 300){
	        		with(other) {
	        			create_deathbox(round(other.x), round(other.y - other.char_height/2), 20, 20, other.player, true, 0, 2, 2);
	        			spawn_hit_fx(other.x, other.y-other.char_height/2, HFX_MOL_BOOM_FINISH);
	    				sound_play(asset_get("sfx_blow_heavy2"))
				        sound_play(asset_get("sfx_mol_huge_explode"))
	        		}
	            }
            	spr_dir = 1;
            	grabbed_invisible = true;
            	hurtboxID.dodging = true;
            	// fucking_dying_timer = 0;
            	// fucking_dying_id = noone;
            } else if(fucking_dying_timer >= 250){
            	x = orig_fucking_x;
            	y = orig_fucking_y - fucking_dying_timer + 250 - 60;
            } else if(fucking_dying_timer >= 190){
            	x = orig_fucking_x;
            	y = orig_fucking_y;
            } else if(fucking_dying_timer >= 130){
            	x = orig_fucking_x;
            	y = orig_fucking_y - 60;
            	x += 180 - random_func_2(floor(abs(x%200)), 360, true);
            	y += 180 - random_func_2(floor(abs(y%200)), 360, true);
            } else if(fucking_dying_timer >= 90){
            	move_random(1, 1);
            }
        	if(state == PS_RESPAWN || state == PS_DEAD){
                fucking_dying_timer = 0;
                fucking_dying_id = noone;
                hurtboxID.dodging = false;
            }
        } else if(fucking_dying_id == other && !other.kill_goof){
        	if(fucking_dying_timer > 0){
                fucking_dying_timer++;
            }
            if(fucking_dying_timer > 0 && fucking_dying_timer < 60){
                state = PS_HITSTUN;
                state_timer = 2;
                hitstun = 4;
                hitstun_full = 4;
                hitpause = true;
                hitstop = 2;
                hitstop_full = 2;
                spr_dir = 0;
            }
        	if(fucking_dying_timer >= 60){
        		if(fucking_dying_timer == 60){
	        		with(other) {
	        			create_deathbox(round(other.x), round(other.y - other.char_height/2), 20, 20, other.player, true, 0, 2, 2);
	        			spawn_hit_fx(other.x, other.y-other.char_height/2, vfx_sludge_large_2);
	    				sound_play(asset_get("sfx_blow_heavy2"))
				        sound_play(asset_get("sfx_mol_huge_explode"))
				        sound_play(sound_get("sfx_sludgehit_heavy"))
	        		}
        		}
        	    spr_dir = 1;
        		grabbed_invisible = true;
        		hurtboxID.dodging = true;
        		// fucking_dying_timer = 0;
          //  	fucking_dying_id = noone;
        	} else if(fucking_dying_timer >= 0){
        		if(fucking_dying_timer % 5 == 1) sound_play(asset_get("sfx_frog_ustrong"), false, noone, fucking_dying_timer/60)
            	x = orig_fucking_x;
            	y = orig_fucking_y - fucking_dying_timer;
            }
            if(state == PS_RESPAWN || state == PS_DEAD){
                fucking_dying_timer = 0;
                fucking_dying_id = noone;
                hurtboxID.dodging = false;
            }
        }
    }
}

if(genesis){
	if(!gX_glitching){
		sound_stop(gX_glitch_sound);
		gX_glitch_sound = noone
	}
}

for(var i = 0; i < array_length(sludge_bubble_vfx_list); i++){
	
	var person = sludge_bubble_vfx_list[@i];
	
    if get_gameplay_time() % ( ceil(( ( person.sludge_amount-person.sludge_max/2 ) / 50 )) -40 ) == 0 {
		var bbleoffset_x = random_func(1,person.char_wideness,true)-person.char_wideness/2;
		var bbleoffset_y = random_func(2,person.char_height,true)-person.char_height/2;
		var bble = spawn_hit_fx(floor(person.x-bbleoffset_x),floor(person.y-person.char_height/2-bbleoffset_y),vfx_sludge_bubble_2);
		bble.depth = depth - 6;
	}
	
}

for(var i = 0; i < array_length(disease_bubble_vfx_list); i++){
	
	var person = disease_bubble_vfx_list[@i];
	
    if get_gameplay_time() % 8 == (person.player - 1) * 2 {
		var bbleoffset_x = random_func(1,person.char_wideness,true)-person.char_wideness/2;
		var bbleoffset_y = random_func(2,person.char_height,true)-person.char_height/2;
		var bble = spawn_hit_fx(floor(person.x-bbleoffset_x),floor(person.y-person.char_height/2-bbleoffset_y),vfx_sludge_bubble);
		bble.depth = depth - 6;
	}
}

with(pHitBox){
	if(player_id != other && player_id.diseased_id == other && "disease_reduced" not in self){
		if(damage >= 8 && round(damage*.7) < 8 && force_flinch == 0){
			force_flinch = 2;
		} 
		damage *= .7;
		damage = round(damage);
		disease_reduced = true;
	}
}

//Put this at the very bottom of the script, with the rest of your #defines.
#define prep_hitboxes
//Applies the hitbox sprites and prepares them to be drawn (with color!)
with (pHitBox) if player_id == other {
    if ("col" not in self && "dont_color" not in self) {
        with other {
        	var hit_num = other.hbox_num;
        	var parent_hbox = get_hitbox_value(other.attack, other.hbox_num, HG_PARENT_HITBOX);
        	if parent_hbox > 0 && parent_hbox != other.hbox_num hit_num = parent_hbox;
            other.col = get_hitbox_value(other.attack, hit_num, HG_HITBOX_COLOR);
            if other.col == 0 other.col = c_red;
            other.shape = get_hitbox_value(other.attack, hit_num, HG_SHAPE)
            other.draw_colored = true;
            if other.type == 1
                other.sprite_index = __hb_hd_spr[other.shape];
            else if get_hitbox_value(other.attack, hit_num, HG_PROJECTILE_MASK) == -1
                other.mask_index = __hb_hd_spr[other.shape];
            else 
                other.draw_colored = false;
            other.draw_spr = __hb_draw_spr;
        }
    }
}
