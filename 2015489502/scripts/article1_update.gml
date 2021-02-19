//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying
- 3 Hitted
- 4
- 5 
- 6 
- 7 
- 8 Uspecial Jumpsquat
- 9 Uspecial Jump

*/



//Ori bash code by Lexicon

with (oPlayer) if url == CH_ORI && attack == AT_DSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && !has_hit {
	//Checks Ori is using Bash
	if collision_circle(x+17*spr_dir, y-12, 68, other.id, false, true) { //Checks the article is in bash range
		switch (window) {
		
			case 2: //Transitions to bashing window
				window = 4;
				window_timer = 0;
				basher_x = x;
				basher_y = y;
				other.state = 1;
				other.state_timer = 0;
		
			case 4: //Makes sure article is grabbed and freezes its code
				//move_cooldown[AT_NSPECIAL] = 5; //If the character can unsummon the article, uncomment this
				bashed_proj = other.id;
				x = basher_x;
				y = basher_y;
				with(bashed_proj) {
					hitstop_ori = true;
					if hitstop_ori_full <= 0 hitstop_ori_full = 7;
					//Change the 3 depending on your article
					hitstop_ori_full++;
				}
			break;
		case 5:
		
			other.bashed = true;
			other.bashing_player = player;
			//other.move_cooldown[AT_NSPECIAL] = 180; //If the character can
			
			//unsummon the article, uncomment this. Change the values as you see fit
			
			// other.player = player; //Gives ownership of the article to Ori. May cause
			
			//crashes on some articles, so only use if necessary
			
			//other.state = 1; //You can manipulate your article’s variables here, like this
			
			other.bike_health = 0;
			other.should_cooldown = true;
			//instance_destroy(other);
			
			break;
		}
	}
}

player = orig_player;
player_id = orig_player_id;

hitstop_ori_full--;

if !hitstop_ori_full {
	
	//Fix phasing through plats. Thank u giik
	
	can_be_grounded = (vsp >= 0 && !free);
	
	
	
	//Die if fall offstage
	
	if (y > room_height + 100 && state != 2){
		destroyHitbox();
		setState(2);
	}
	
	
	
	//Die if HP zero
	
	if !(bike_health || state == 2 || (state == 3 && otto_dair_hit)){
		shoulddie = true;
		if (should_cooldown && !"dont_cooldown" in self){
			dont_cooldown = true;
			with player_id{
				bike_cooldown = bike_cooldown_max;
			}
		}
	}
	
	
	
	//Bounce on ground
	
	if (!free && vsp_prev > 4 && !hitstop){
		vsp = vsp_prev * -0.35;
		if (kb_dir == 1){
			kb_dir = 0;
		}
		if (instance_exists(bikes_hitbox)){
			var ring = spawn_hit_fx(x+6*spr_dir, y+10, player_id.vfx_v_dash_blast);
			ring.spr_dir = spr_dir;
		}
	}
	
	//bounce on wall
	
	if (hit_wall && abs(hsp_prev) > 4 && !hitstop){
		hsp = hsp_prev * -0.75;
		if (kb_dir == 2){
			kb_dir = 3;
			var ring = spawn_hit_fx(x-(50*spr_dir), y-20, player_id.vfx_dash_blast);
			ring.spr_dir = spr_dir * (kb_dir == 3 ? -1 : 1);
		}
		else if (kb_dir == 3){
			kb_dir = 2;
			var ring = spawn_hit_fx(x+(50*spr_dir), y-20, player_id.vfx_dash_blast);
			ring.spr_dir = spr_dir * (kb_dir == 3 ? -1 : 1);
		}
	}
	
	
	
	//Get hit
	
	if (state != 2 && !hitstop && !ball8_launch && !("enemy_killed" in self)){ //If bike not being destroyed or already in hitpause or just created
		var kb_hitstop = 0;
		var enemy_hitboxID = noone;
		
		with (asset_get("pHitBox")){
			var touching = (place_meeting(x,y,other.id) || "otto_bike_riding_flag" in self ||
				(type == 1 && player_id == other.player_id && player_id.runeO));
				
			var bike_valid = !("otto_bike_hitted" in self) && !("im_ottos_bike_hitbox" in self);
			
			var dtilt = !(attack == AT_DTILT && player_id == other.player_id && !player_id.can_dtilt_own_bike);
			
			var flinches = (kb_value || kb_scale || hitpause || hitpause_growth);
			
			var aerial = !(type == 1 && player_id == other.player_id && player_id.doing_bike_aerial);
			
			//var enemy_kill = !(other.state == 3 && !instance_exists(other.bikes_hitbox) && player == other.player_id.player && !other.bike_health);
			
		    if (touching && bike_valid && dtilt && flinches && aerial){
		    	otto_bike_hitted = true;
		    	enemy_hitboxID = id;
		    	with(other){
		    		setState(3);
		    	}
		        
		        with(player_id){
		        	if (other.type == 1){
			        	if !hitpause{
			        		old_hsp = hsp;
			        		old_vsp = vsp;
			        	}
			        	hitpause = true;
			        	hitstop = get_hitbox_value(other.attack, other.hbox_num, HG_BASE_HITPAUSE);
			        	has_hit = true;
			        }
			        kb_hitstop = get_hitbox_value(enemy_hitboxID.attack, enemy_hitboxID.hbox_num, HG_BASE_HITPAUSE) + 
			        	get_hitbox_value(enemy_hitboxID.attack, enemy_hitboxID.hbox_num, HG_EXTRA_HITPAUSE);
			        sound_play(get_hitbox_value(enemy_hitboxID.attack, enemy_hitboxID.hbox_num, HG_HIT_SFX));
			        var hit_fx_id = enemy_hitboxID.hit_effect;
			        var hit_fx_x = get_hitbox_value(enemy_hitboxID.attack, enemy_hitboxID.hbox_num, HG_VISUAL_EFFECT_X_OFFSET) * other.spr_dir;
			        var hit_fx_y = get_hitbox_value(enemy_hitboxID.attack, enemy_hitboxID.hbox_num, HG_VISUAL_EFFECT_Y_OFFSET);
			        spawn_hit_fx(enemy_hitboxID.x + hit_fx_x, enemy_hitboxID.y + hit_fx_y, hit_fx_id);
		        }
		    }
		}
		
		if (enemy_hitboxID != noone){ //Apply knockback to bike
			hitstop = kb_hitstop * ((enemy_hitboxID.effect == 11) ? 3 : 1);
			var temp_angle = get_hitbox_angle( enemy_hitboxID );
			var force = (enemy_hitboxID.kb_value + enemy_hitboxID.kb_scale * 6) * 1.4;
			
			var dohitbox = true;
			if (enemy_hitboxID.player_id != player_id){
				force /= 2;
				dohitbox = false
			}
			else{
				destroyHitbox();
	    		if !((enemy_hitboxID.attack == AT_DATTACK && enemy_hitboxID.hbox_num == 1) || (enemy_hitboxID.attack == AT_NSPECIAL && enemy_hitboxID.hbox_num == 8)){
	    			sound_play(asset_get("sfx_ori_glide_end"));
	    		}
			}
			
			gimme_a_hitbox = false;
			
			hsp = lengthdir_x( force, temp_angle ) * 1.25;
			vsp = lengthdir_y( force, temp_angle ) * (1.35 - abs(lengthdir_x(1, temp_angle)));
			
			with (enemy_hitboxID){
				if ("ottos_hitbox" in self && attack == AT_NSPECIAL && hbox_num > 4 && hbox_num != 7){
					other.hsp *= 1.5;
					other.vsp *= 1.5;
					other.ball8_launch = (hbox_num == 8);
				}
				
				with(player_id){
					if (other.type == 2 && get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR) == 0){
						other.destroyed = true;
					}
				}
			}
			
			if !player_id.runeL{
				hsp = clamp(hsp, -25, 25);
				vsp = clamp(vsp, -25, 50);
			}
			
			hsp *= (player_id.runeL ? 2 : 1);
			vsp *= (player_id.runeL ? 2 : 1);
			
			if (vsp > 5 && place_meeting(x,y+10,asset_get("par_jumpthrough"))){
		    	y += 4;
		    }
		    else if (!free && vsp > 0){
				vsp *= -0.75;
			}
			
			if (enemy_hitboxID.player_id != player_id && enemy_hitboxID.player_id.can_hit_otto_bike && enemy_hitboxID.type == 1){
				healthSubtract(true);
				enemy_hitboxID.player_id.can_hit_otto_bike = false;
			}
			
			dattack_hit_bike = (enemy_hitboxID.player_id == player_id && enemy_hitboxID.attack == AT_DATTACK && enemy_hitboxID.hbox_num == 1);
		}
		
		with enemy_hitboxID{
		    if ("ottos_hitbox" in self){ //Otto-specific interactions; work even in a ditto
		    	if (attack == AT_NSPECIAL && !("bouncing_foe" in self || "from_ustrong" in self)){
		    		hsp *= -0.7;
		    		vsp = -10;
		    		spr_dir *= -1;
		    		hitpause_timer = other.hitstop - (hbox_num == 8 ? 44 : 0);
		    		in_hitpause = true;
		    		bouncing = true;
		    		hitbox_timer = 0;
		    		sound_play(player_id.sfx_ball_hit_added);
		    		if (hbox_num == 8){
	            		sound_play(asset_get("sfx_absa_kickhit"));
	            		sound_play(asset_get("sfx_absa_concentrate"));
		    		}
		    	}
		    	if (attack == AT_NSPECIAL && "from_ustrong" in self){
	                bouncing_foe = true;
	                hsp = 0;
	                vsp = -7;
	                hitbox_timer = length - 30;
	                //y -= 40;
		    		hitpause_timer = other.hitstop - (hbox_num == 8 ? 44 : 0);
		    		in_hitpause = true;
		    		if (hbox_num == 8){
	            		sound_play(asset_get("sfx_absa_kickhit"));
	            		sound_play(asset_get("sfx_absa_concentrate"));
		    		}
		    		
		    	}
		    	if (attack == AT_DATTACK && hbox_num == 1){
		    		if !player_id.has_hit_player{
		    			player_id.has_hit_player = true;
		    			player_id.hit_player_obj = other.id;
		    		}
		    	}
		    }
		    
		    if (player_id == other.player_id){ //Hitbox only if it's your own bike.
		    	
		    	if (attack == AT_DTILT){
		    		player_id.can_dtilt_own_bike = false;
		    	}
		    	
		    	if (attack == AT_DSTRONG && hbox_num == 1 && other.free){
		    		other.vsp *= 3;
		    	}
		    	
	    		if (type == 1){
	    			player_id.has_hit_bike = true;
	    			player_id.hit_bike_obj = other.id;
	    		}
		    	
		    	if !(attack == AT_DATTACK && hbox_num == 1){
					other.gimme_a_hitbox = true; //don't want hitbox on dattack initial grab
					other.otto_dair_hit = (attack == AT_DAIR);
					if (attack == AT_DAIR){
						with(other){
							healthSubtract(false);
						}
					}
		    	}
		    	
		    	other.strong_match = (attack == AT_FSTRONG || attack == AT_USTRONG) && other.player_id.has_hit_player;
		    	other.strong_bkb = kb_value;
		    	other.strong_kbs = kb_scale;
		    	other.strong_ang = kb_angle;
		    	other.strong_spr_dir = spr_dir;
		    }
		}
	}
	
	
	
	//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2
	
	if (player_id.killbike && state != 2){
		setState(2);
	}
	
	
	
	//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)
	
	if (place_meeting(x, y, asset_get("plasma_field_obj")) && state != 2) {
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx(floor(x),floor(y),256);
		setState(2);
		state_timer = die_time;
	}
	
	
	
	//State buffering
	    
	if (buffertimer < 20 && bufferedstate){
		buffertimer++;
	}else{
		bufferedstate = 0;
		buffertimer = 0;
	}
	
	
	
	//Friction and Gravity
	
	var ground_fric = 0.9;
	var air_fric = 0.8;
	var grav_fric = 0.5;
	
	if (state == 3){
		air_fric = 0.98;
		grav_fric = 0.8;
	}
	
	if (state == 0){
		ground_fric = 0.99;
		air_fric = 0.99;
	}
	
	if (state == 9){
		grav_fric = (vsp > -2) ? 0.2 : 0.7;
	}
	
	if !hitstop{
		if free{
			hsp *= air_fric;
			if (vsp < -4 && state != 3){
				vsp += 1.2;
			}
			if (vsp < 12){
				vsp += (vsp != clamp(vsp,-1,2)) ? grav_fric : grav_fric * 0.7;
			}
		}else{
			hsp *= ground_fric;
		}
	}
	
	
	
	//State 0: Freshly spawned
	
	if (state == 0){
	    
	    //Go to idle after 20 frames
	    if (state_timer >= 20){
			setState(1);
	    }
	    
	    //Accept buffered state
	    if (bufferedstate > 0){
			setState(bufferedstate);
	        bufferedstate = 0;
	    }
	}
	
	
	
	//State 1: Idle
	
	if (state == 1){
	    
	    //Die if should die
	    if shoulddie{
			setState(2);
	    }
	    
	    //Accept buffered state
	    if (bufferedstate > 0){
			setState(bufferedstate);
	        bufferedstate = 0;
	    }
	}
	
	
	
	//State 2: Dying
	
	if (state == 2){
		destroyHitbox();
		if (state_timer == die_time / 2){
			sound_play(asset_get("sfx_ell_big_missile_fire"));
			spawn_hit_fx(x, y-20, 13);
			bike_health = max_bike_health;
		}
		
		if (state_timer == die_time){
	        player_id.killarticles = false;
	        player_id.mybike = noone;
	        instance_destroy();
	        exit;
	    }
	    
	    if (state_timer > die_time / 22){
	    	vsp = 0;
	    	hsp = 0;
	    }
	}
	
	
	
	//State 3: Hitted
	
	if (state == 3){
		if !state_timer do_pop = gimme_a_hitbox;
		
	    if (gimme_a_hitbox && state_timer == 0){ //Initialise direction
		    	
	    	if (vsp * -1 > abs(hsp) * 2){ //Determine direction (up,down,back,front)
	    		kb_dir = 0;
	    	}
	    	else if (vsp > abs(hsp) * 2){
	    		kb_dir = 1;
	    	}
	    	else if (hsp * spr_dir < 0){
	    		kb_dir = 2;
	    	}
	    	else{
	    		kb_dir = 3;
	    	}
	    	
	    	if !hitstop{ //Make hitbox
	    		bikes_hitbox = create_hitbox(player_id.AT_BIKE, 1, x, y-32);
		    	bikes_hitbox.im_ottos_bike_hitbox = true;
		    	bikes_hitbox.spr_dir = spr_dir;
		    	bikes_hitbox.article_owner = id;
		    	bikes_hitbox.hitpause_counter = 0;
		    	
		    	bike_fresh_hitbox = !otto_dair_hit; //mark this launch as "fresh"; so that if you hit multiple foes w/ one launch, it only takes health once.
		    	
		    	switch(kb_dir){
		    		case 0: //up
		    			bikes_hitbox.kb_angle = 90;
		    			break;
		    		case 1: //down
		    			bikes_hitbox.kb_angle = 270;
		    			break;
		    		case 2: //back
		    			bikes_hitbox.kb_angle = 135;
		    			break;
		    		case 3: //front
		    			bikes_hitbox.kb_angle = 45;
		    			break;
		    	}
		    	
		    	if (kb_dir < 2){
					var ring = spawn_hit_fx(x+(6*spr_dir), y+10-(kb_dir * 20), player_id.vfx_v_dash_blast);
					ring.spr_dir = spr_dir;
		    	}
		    	else{
					var ring = spawn_hit_fx(x+((kb_dir == 3 ? -10 : 10)*spr_dir), y-20, player_id.vfx_dash_blast);
					ring.spr_dir = spr_dir * (kb_dir == 3 ? -1 : 1);
		    	}
		    	
		    	player_id.bike_angle = bikes_hitbox.kb_angle;
		    	
		    	kb_strongness = point_distance(0,0,hsp,vsp) / (((kb_dir == 1) ? 2.25 : 2.25)); //Determine BKB; spike = weaker
		    	bikes_hitbox.kb_value = kb_strongness;
		    	player_id.bike_bkb = kb_strongness;
		    	if (kb_strongness > 9 || kb_dir == 1){ //Strong hit FX if strong hit or down hit
		    		bikes_hitbox.hit_effect = player_id.vfx_hit_big;
		    	}
		    	
		    	bikes_hitbox.damage = ceil(kb_strongness); //Determine DMG
		    	player_id.bike_dmg = ceil(kb_strongness);
		    	
		    	if strong_match{
			    	bikes_hitbox.kb_value = strong_bkb;
			    	bikes_hitbox.kb_scale = strong_kbs;
			    	bikes_hitbox.kb_angle = strong_ang;
			    	if (strong_spr_dir != bikes_hitbox.spr_dir){
			    		bikes_hitbox.hit_flipper = 5;
			    	}
		    	}
	    	}
	    }
	    
	    if ("bikes_hitbox" in self && instance_exists(bikes_hitbox)){ //Make hitbox follow bike
	    	bikes_hitbox.x = x + hsp * (bikes_hitbox.hitbox_timer > 1 && !hitpause);
	    	bikes_hitbox.y = y - 30 + vsp * (bikes_hitbox.hitbox_timer > 1 && !hitpause);
	    	
	    	if should_hurt{
	    		should_hurt = false;
	    		healthSubtract(false);
	    	}
	    }
	    
	    if (state_timer >= 10){
	        setState(1);
	        ball8_launch = false;
	        vsp = clamp(vsp, -30, 3);
	    	destroyHitbox();
	    }
	}
	
	
	
	//State 8: Uspecial Jumpsquat
	
	if (state == 8){
		if player_id.runeI{
			setState(3);
			gimme_a_hitbox = true;
			vsp = -20;
			hitstop = 5;
			sound_play(asset_get("sfx_ori_glide_end"));
		}
		else{
			vsp = clamp(vsp, -100, 1);
			if (state_timer == 10){
				vsp = -26;
				sound_play(player_id.jump_sound)
				setState(9);
				var ring = spawn_hit_fx(x+(6*spr_dir), y+10, player_id.vfx_v_dash_blast);
				ring.spr_dir = spr_dir;
				sound_play(player_id.sfx_rev[2]);
			}
		}
	}
	
	
	
	//State 9: Uspecial Jump
	
	if (state == 9){
		if (vsp >= 1.5){
			setState(1);
		}
	}
	
	
	
	//Sprite and animation handling
	
	//Assign each state both a sprite it should have and a way it should animate
	switch(state){
	    case 0:
	    case 1:
	    	new_sprite = player_id.spr_a_bike_idle;
	    	animation_type = 0;
	        break;
	    case 2:
	    	new_sprite = player_id.spr_a_bike_die;
	    	animation_type = 2;
	    	break;
	    case 3:
	    	if ("bikes_hitbox" in self && instance_exists(bikes_hitbox)){
				new_sprite = player_id.spr_a_bike_knockback;
	    		animation_type = 1;
			}
			else{
				new_sprite = player_id.spr_a_bike_idle;
	    		animation_type = 0;
			}
	        break;
	    case 4: //Since all of these guys are just kinda
	    case 5: //in a row, without any "break;" lines to
	    case 6: //stop their execution, they'll all default
	    case 7: //to state 9's behavior. Read up on those
	    case 8: //switch-case statements, y'all, they're handy
	    	new_sprite = player_id.spr_a_bike_jumpsquat;
	    	animation_type = 0;
	    	break;
	    case 9:
	    	new_sprite = (vsp > -12) ? player_id.spr_a_bike_idle : player_id.spr_a_bike_pop_h;
	    	animation_type = 0;
	        break;
	}
	
	if (hitstop > 1 && !("dattack_hit_bike" in self && dattack_hit_bike)){
		new_sprite = ((kb_dir < 2) ? player_id.spr_a_bike_hitpause_v : player_id.spr_a_bike_hitpause_h);
	    animation_type = 0;
	}
	
	if (state == 1 && prev_state == 3 && state_timer < 5 && do_pop){
		new_sprite = ((kb_dir < 2) ? player_id.spr_a_bike_pop_v : player_id.spr_a_bike_pop_h);
	    animation_type = 0;
	}
	
	//Increment image_index based on the animation type assigned, above, to the state
	if !hitstop{
		switch(animation_type){
	        case 0:
		        var frames = 9;
		        var frame_dur = 6;
		        image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
		        break;
		    case 1:
		    	image_index = kb_dir * 2 + (state_timer > 5);
		    	break;
		    case 2:
		        var frames = 6;
		        var frame_dur = 4;
		        image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
		        break;
		}
	}
	
	//If not already at the sprite it should be, switch to the new sprite and restart the animation
	if (sprite_index != new_sprite){
	    sprite_index = new_sprite;
	    if (new_sprite != player_id.spr_a_bike_knockback){
	    	image_index = 0;
	    }
	}
	
	
	
	//Make time progress
	if !hitstop{
		state_timer++;
	}
	
	
	
	y = floor(y);
	
	vsp_prev = vsp;
	hsp_prev = hsp;
	
	var i = 4;
	
	repeat(4){
		prev_x[i] = prev_x[i-1]
		i--;
	}
	
	prev_x[0] = x;
	prev_y[0] = y;
	
	
	
	var offset_y = ((!free && place_meeting(x, y+vsp, asset_get("par_jumpthrough"))) ? 141 : 140);
	with player_id{
		sprite_change_offset("a_bike_idle", 100, offset_y);
		sprite_change_offset("a_bike_hitpause_v", 100, offset_y);
		sprite_change_offset("a_bike_hitpause_h", 100, offset_y);
		sprite_change_offset("a_bike_pop_v", 100, offset_y);
		sprite_change_offset("a_bike_pop_h", 100, offset_y);
		sprite_change_offset("a_bike_knockback", 100, offset_y);
		sprite_change_offset("a_bike_die", 100, offset_y);
	}
}



#define destroyHitbox

if ("bikes_hitbox" in self && instance_exists(bikes_hitbox)){
	bikes_hitbox.hitbox_timer = 100;
	sound_play(asset_get("sfx_bubblepop"));
}



#define healthSubtract(cause_cooldown)

bike_health--;
sound_play(asset_get("sfx_tow_anchor_land"));
should_cooldown = cause_cooldown;
if cause_cooldown && !bike_health enemy_killed = true;



#define setState

prev_state = state;
state = argument[0];
state_timer = 0;
