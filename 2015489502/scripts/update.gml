var attacking = (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND);



if (get_training_cpu_action() != CPU_FIGHT && !playtest && !("is_ai" in self)) {
	practice = true;
}



//NSpecial lose charge

if lose_charge_timer{
	lose_charge_timer--;
	lose_charge_vsp += 0.5;
	lose_charge_y += lose_charge_vsp;
}



if introtimer{
	switch(konami){
		case 0:
		case 1:
			if up_pressed{
				konami++;
			}
			break;
		case 2:
		case 3:
			if down_pressed{
				konami++;
			}
			break;
		case 4:
		case 6:
			if left_pressed{
				konami++;
			}
			break;
		case 5:
		case 7:
			if right_pressed{
				konami++;
			}
			break;
		case 8:
			konami = 0;
			god_mode = 3;
			sound_play(asset_get("mfx_confirm"));
			spawn_hit_fx(x, y-30, vfx_hit_big);
			god_mode_updated = true;
			break;
	}
}



if (god_mode > 1){
	runeA = true; runeB = true; runeC = true; runeD = true; runeE = true; runeF = true; runeG = true; runeH = true; runeI = true; runeJ = true; runeK = true; runeL = true; runeM = true; runeN = true; runeO = true;
}
else if !abyssEnabled{
	runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false;
}



if (runesUpdated || god_mode_updated){
	god_mode_updated = false;
	
	var rune_mul = 1.5;
	
	buff_ball[1] = runeA;
	buff_ball[3] = runeA;
	buff_ball[5] = runeA;
	buff_ball[2] = runeB;
	buff_ball[4] = runeB;
	buff_ball[6] = runeB;
	buff_ball[7] = runeC;
	buff_ball[8] = runeC;
	
	for(i = 1; i < 9; i++){
		reset_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_HSPEED);
		reset_hitbox_value(AT_NSPECIAL, i, HG_DAMAGE);
		reset_hitbox_value(AT_NSPECIAL, i, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_NSPECIAL, i, HG_KNOCKBACK_SCALING);
		if buff_ball[i]{
			set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_HSPEED, get_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_HSPEED) * rune_mul);
			set_hitbox_value(AT_NSPECIAL, i, HG_DAMAGE, get_hitbox_value(AT_NSPECIAL, i, HG_DAMAGE) * rune_mul);
			set_hitbox_value(AT_NSPECIAL, i, HG_BASE_KNOCKBACK, get_hitbox_value(AT_NSPECIAL, i, HG_BASE_KNOCKBACK) * rune_mul);
			set_hitbox_value(AT_NSPECIAL, i, HG_KNOCKBACK_SCALING, get_hitbox_value(AT_NSPECIAL, i, HG_KNOCKBACK_SCALING) * rune_mul);
		}
	}
	
	reset_hitbox_value(AT_DTILT, 1, HG_DAMAGE);
	reset_hitbox_value(AT_DTILT, 2, HG_DAMAGE);
	reset_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING);
	
	if runeD{
		set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, get_hitbox_value(AT_DTILT, 1, HG_DAMAGE) * rune_mul);
		set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, get_hitbox_value(AT_DTILT, 2, HG_DAMAGE) * rune_mul);
		set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, get_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK) * rune_mul);
		set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, get_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK) * rune_mul);
		set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, get_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING) * rune_mul);
		set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, get_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING) * rune_mul);
	}
	
	reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
	reset_hitbox_value(AT_BAIR, 1, HG_DAMAGE);
	reset_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING);
	
	if runeE{
		set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, get_hitbox_value(AT_FAIR, 1, HG_DAMAGE) * rune_mul);
		set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, get_hitbox_value(AT_BAIR, 1, HG_DAMAGE) * rune_mul);
		set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, get_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK) * rune_mul);
		set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, get_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK) * rune_mul);
		set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, get_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE) * rune_mul);
		set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, get_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE) * rune_mul);
		set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, get_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING) * rune_mul);
		set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, get_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING) * rune_mul);
	}
	
	reset_hitbox_value(AT_DATTACK, 2, HG_DAMAGE);
	reset_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING);
	
	if runeF{
		set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, get_hitbox_value(AT_DATTACK, 2, HG_DAMAGE) * rune_mul);
		set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, get_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK) * rune_mul);
		set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, get_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE) * rune_mul);
		set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, get_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING) * rune_mul);
	}
	
	max_uspecials = runeG ? 2 : 1;
	
	reset_attack_value(AT_DAIR, AG_CATEGORY);
	reset_attack_value(AT_DAIR, AG_HAS_LANDING_LAG);
	
	if runeJ{
		set_attack_value(AT_DAIR, AG_CATEGORY, 2);
		set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 0);
	}
	
	statUpdate();
}



if runeE{
	airdashes_used = 0;
}



with(hit_fx_obj){
	if (player_id == other.id && "move_me" in self){
    	if (attacking && other.attack == AT_NSPECIAL && other.window < 3){
    		x = other.x+40*spr_dir+other.hsp;
    		y = other.y-49+other.vsp;
    		if ("move_y" in self){
    			y = other.y-49-move_y+other.hsp;
    		}
    	}
	}
}



//if attacking hurtboxID.sprite_index = hurtbox_spr;

if !("codec_valid" in self) && ("load_codec_valid" in self){
	codec_valid = codecLoad() && (!tourney_safe || practice);
}

if !("load_codec_valid" in self){
	with(oPlayer) if (id != other.id && state_timer > 5) other.load_codec_valid = true;
}



//Godmode: cooldown

if (god_mode == 1 || god_mode == 3){
	bike_cooldown = 0;
	ball_cooldown = 0;
	fspecials_used = 0;
	uspecials_used = 0;
	airdashes_used = 0;
	fspecial_cooldown = 0;
}



//Nspecial

if ball_cooldown{
    ball_cooldown--;
}

if (!(attacking && (attack == AT_NSPECIAL || attack == AT_USTRONG || attack == AT_FSTRONG)) || ball_cooldown){
    ball_pos = 0;
    draw_nspecial_flash = false;
}

if (!(attacking && (attack == AT_NSPECIAL || attack == AT_USTRONG)) || false){
    stat_char_height[0] = fixed_char_height;
}

var ball_offset_x = 0;
var ball_offset_y = 0;

switch(ball_pos){
    case 0: //Passive
        ball_offset_x = 0;
        ball_offset_y = -char_height-(hide_hud ? 32 : 79);
        break;
    case 1: //Startup
        ball_offset_x = 30;
        ball_offset_y = -29;
        break;
    case 2: //Charge bob
        ball_offset_x = 40;
        ball_offset_y = -47;
        break;
    case 3: //Charge
        ball_offset_x = 40;
        ball_offset_y = -49;
        break;
    case 4: //Finna throw
        ball_offset_x = 40;
        ball_offset_y = -43;
        break;
    case 5: //Ustrong
    	ball_offset_x = 0;
    	ball_offset_y = -100;
    	break;
    case 6: //Fstrong
    	ball_offset_x = 44;
    	ball_offset_y = -20;
    	break;
}

ball_pos_x = ball_offset_x * spr_dir;
ball_pos_y = ball_offset_y;

df_ball_pos_x = lerp(df_ball_pos_x, ball_pos_x, 0.3);
df_ball_pos_y = lerp(df_ball_pos_y, ball_pos_y, 0.3);

if (ball_cooldown == 1){
    sound_play(sfx_cooldown_end);
}

if cooldown_shake_timer{
    switch(cooldown_shake_timer){
        case 12:
        case 8:
            cooldown_x_offset = 2;
            break;
        case 11:
        case 7:
            cooldown_x_offset = -2;
            break;
        case 10:
            cooldown_x_offset = 6;
            break;
        case 9:
            cooldown_x_offset = -6;
            break;
        default:
            cooldown_x_offset = 0;
            break;
    }
    cooldown_shake_timer--;
}
else{
    cooldown_x_offset = 0;
}



//Bike cooldown

if bike_cooldown{
	bike_cooldown--;
}

if bike_cooldown_shake_timer{
    switch(bike_cooldown_shake_timer){
        case 12:
        case 8:
            bike_cooldown_x_offset = 2;
            break;
        case 11:
        case 7:
            bike_cooldown_x_offset = -2;
            break;
        case 10:
            bike_cooldown_x_offset = 6;
            break;
        case 9:
            bike_cooldown_x_offset = -6;
            break;
        default:
            bike_cooldown_x_offset = 0;
            break;
    }
    bike_cooldown_shake_timer--;
}
else{
    bike_cooldown_x_offset = 0;
}

if (bike_cooldown == bike_cooldown_min){
    sound_play(sfx_cooldown_end);
}

if (bike && bike_cooldown){
	bike_cooldown = 0;
}



//FSpecial faster from bike

if !attacking{
	if bike{
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 11);
	}
	else{
		reset_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH);
	}
}



//Uspecial

if (state == PS_WALL_JUMP || !free){
    uspecials_used = 0;
    fspecials_used = 0;
    airdashes_used = 0;
}

if (uspecials_used >= max_uspecials){
    move_cooldown[AT_USPECIAL] = 1000;
}else{
    move_cooldown[AT_USPECIAL] = 0;
}

if ((fspecials_used >= max_fspecials || fspecial_cooldown) && !runeK){
    move_cooldown[AT_FSPECIAL] = 1000;
}else{
    move_cooldown[AT_FSPECIAL] = 0;
}

if (bike_cooldown > bike_cooldown_min){
	move_cooldown[AT_FSPECIAL] = 1000;
	move_cooldown[AT_DSPECIAL] = 1000;
}
else{
	move_cooldown[AT_DSPECIAL] = 0;
}

if fspecial_cooldown fspecial_cooldown--;

uspecial_timer++;



//Roll speed - burst at the start

if (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD){
	roll_forward_max = 5;
	roll_backward_max = 5;
	techroll_speed = 6;
	switch(image_index){
		case 0:
			hsp = 0;
			break;
		case 1:
			hsp = ((state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) ? -13 : -16) * spr_dir;
			break;
		case 2:
		case 3:
			break;
		case 4:
		case 5:
			hsp *= 0.5;
	}
}



//Bike air physics

if (bike && (state == PS_DOUBLE_JUMP) && state_timer < 2 && (left_down ^^ right_down)){
    if (hsp - abs(hsp) * (right_down - left_down) == 0){
        spr_dir = (right_down - left_down)
    }
}

if (bike && state == PS_FIRST_JUMP && state_timer == 1 && vsp == -short_hop_speed){ //Make it so wheels don't clip
    y -= 4;
}



//Bike turnaround and dash stop

if (state == PS_WALK_TURN && bike){
    hsp = walk_speed * spr_dir;
}

if ((state == PS_DASH_STOP || state == PS_DASH_TURN) && bike){
    hsp *= 0.8;
    if (attack_pressed){
        set_attack(AT_JAB);
    }
}



//Mount and dismount bike

if bike{
    switch(state){
        case PS_PARRY_START:
            set_state(PS_DASH_START);
            clear_button_buffer(PC_SHIELD_PRESSED);
        case PS_WALL_JUMP:
        case PS_PRATFALL:
        case PS_PRATLAND:
            dismount = true;
            break;
        case PS_CROUCH:
            if (prev_state == PS_IDLE){
                state_timer = prev_state_timer + 1;
            }
            state = PS_IDLE;
            break;
        case PS_AIR_DODGE:
            if (state_timer == 22){
                state = PS_IDLE_AIR;
                vsp = -short_hop_speed;
                hsp = jump_change * (right_down - left_down);
                y -= abs(stat_char_height[0] - stat_char_height[1]);
                dismount = true;
                bikeairdodge = true;
            }//lack of break intentional.
        case PS_DASH_START:
        case PS_DASH_TURN:
        case PS_FIRST_JUMP:
        case PS_DOUBLE_JUMP:
            if (state_timer == 0){
                sound_play(sfx_rev[random_func(1,3,true)]);
                //rev_timer = 10; //don't spam noise
            }
            break;
    }
}

if rev_timer{
    rev_timer--;
}

if mount{
    if !bike{
        bike = true;
        statUpdate();
        sound_play(jump_sound);
        //sound_play(sfx_honk);
        killbike = true;
        bobbleLoad();
    }
    mount = false;
}
else{
    killbike = false;
}

if dismount{
    if bike{
        bike = false;
        statUpdate();
        sound_play(jump_sound);
        mybike = instance_create(x, y, "obj_article1");
        if !attacking{
        	hurtboxID.sprite_index = stat_hurtbox_spr[bike]
        }
        bobble_id.otto_bobble_used = false;
        bobble_id.otto_bobble_id = noone;
    }
    dismount = false;
}

//Double check stats

if (dash_speed != stat_dash_speed[bike]){
    statUpdate();
}



//For players hitting bike

with(asset_get("oPlayer")){
    if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && !hitpause && state_timer == 0){
        can_hit_otto_bike = true;
    }
}



//For dattack

if dattack_pre_draw_timer{
    dattack_pre_draw_timer--;
}



//Bike smoke

var smoke_rate = round(12 - abs(hsp) / 2);
smoke_rate = clamp(smoke_rate, 1, 100);

if (bike && get_gameplay_time() mod smoke_rate == 0){
	var fx_x = floor(x) - (32 - random_func(1, 8, true)) * spr_dir;
	var fx_y = floor(y) - 34 + random_func(2, 8, true);
	var smoke = spawn_hit_fx(fx_x, fx_y, vfx_smoke[1]);
}

with(mybike){ //make the game not off itself when i try to spawn articles from my article
	
	//Low HP indicator / regular smoke
	
	var smoke_rate = round(12 - abs(hsp) / 2);
	smoke_rate = clamp(smoke_rate, 1, 100);
	if (sprite_index == player_id.spr_a_bike_knockback){
		smoke_rate = 2;
	}
	
	if (get_gameplay_time() mod smoke_rate == 0 && !hitstop){
		if (sprite_index == player_id.spr_a_bike_knockback){ //Yellow trail instead during KB
			var fx_x = floor(x) - (16 - random_func(1, 32, true)) * spr_dir;
			var fx_y = floor(y) - 20 + random_func(2, 13, true);
			with player_id{
				var glowy = instance_create(fx_x, fx_y, "obj_article2");
				glowy.vsp = mybike.vsp * 0.3;
				glowy.hsp = mybike.hsp * 0.3;
			}
		}
		else{ //Regular smoke
			var fx_x = floor(x) - (32 - random_func(1, 8, true)) * spr_dir;
			var fx_y = floor(y) - 34 + random_func(2, 8, true);
			var smoke = spawn_hit_fx(fx_x, fx_y, player_id.vfx_smoke[1]);
			smoke.spr_dir = spr_dir;
	
			if (bike_health == 1 && get_gameplay_time() mod 6 == 0){ //Low HP
				var fx_x = floor(x) - 20 + random_func(1, 40, true);
				var fx_y = floor(y) - 50 + random_func(2, 20, true);
				var smoke = spawn_hit_fx(fx_x, fx_y, player_id.vfx_smoke[1]);
				smoke.spr_dir = (random_func(5, 2, true) ? 1 : -1);
			}
		}
	}
}

if (attacking && !hitpause){
	switch(attack){
		case AT_FAIR:
		case AT_BAIR:
		case AT_DAIR:
		case AT_DTILT:
		case AT_USPECIAL:
		case AT_FSPECIAL:
			if (state_timer mod 4 == 0 && (window == 2 || (window == 3 && attack == AT_DAIR) || attack == AT_USPECIAL)){
				glowySpawn(attack == AT_USPECIAL);
			}
	}
}

switch(state){
	case PS_AIR_DODGE:
	case PS_WAVELAND:
	case PS_ROLL_BACKWARD:
	case PS_ROLL_FORWARD:
	case PS_TECH_BACKWARD:
	case PS_TECH_FORWARD:
		if (state_timer mod 4 == 0){
			glowySpawn(false);
		}
}

if (state == PS_AIR_DODGE && state_timer == 1 && !joy_pad_idle){
	airdodge_effect_timer = airdodge_effect_max;
	airdodge_effect_angle = joy_dir;
	airdodge_x = x;
	airdodge_y = y - 30;
}

if airdodge_effect_timer{
	airdodge_effect_timer--;
}

if (state == PS_WAVELAND && state_timer == 1 && !airdodge_effect_timer && hsp != 0){
	var ring = spawn_hit_fx(x+10*spr_dir*sign(hsp), y-30, vfx_dash_blast);
    ring.spr_dir = sign(hsp);
}

with(pHitBox){
    if (get_gameplay_time() mod 5 == 0 && attack == AT_NSPECIAL && player_id == other.id && (abs(hsp) > 3 || abs(vsp) > 7) && (sprite_index == other.spr_ball) ){
	    var fx_x = floor(x) - (6 + random_func(1, 8, true)) * spr_dir;
		var fx_y = floor(y) - 6 + random_func(2, 8, true);
		with player_id{
			var glowy = instance_create(fx_x, fx_y, "obj_article2");
			glowy.vsp = other.vsp * 0.3;
			glowy.hsp = other.hsp * 0.3;
			switch(other.hbox_num){
				case 3:
				case 4:
					glowy.sprite_index = sprite_get("particle_blue");
					break;
				case 5:
				case 6:
					glowy.sprite_index = sprite_get("particle_brown");
					break;
				case 7:
					glowy.sprite_index = sprite_get("particle_white");
					break;
				case 8:
					glowy.sprite_index = sprite_get("particle_black");
					break;
			}
		}
    }
}



//HUD: bike

switch(hud_state){
    case 0: //Inactive
        if bike{
            hud_state++;
            hud_timer = 0;
            hud_frame = 0;
            hud_sprite = spr_hud;
            handlebars_sprite = spr_hud_handlebars;
        }
        break;
    case 1: //Opening
        hud_timer++;
        hud_frame = round(ease_linear(0, 2, hud_timer, 12));
        bobblehead_frame = 0;
        
        speedometer_offset = (hud_frame == 1) ? -4 : 2;
        
        switch(hud_frame){
        	case 0:
        		bobblehead_body_offset = 200;
        		bobblehead_head_offset = 200;
        		break;
        	case 1:
        		bobblehead_body_offset = -2;
        		bobblehead_head_offset = -4;
        		break;
        	case 2:
        		bobblehead_body_offset = 0;
        		bobblehead_head_offset = 2;
        		break;
        }
        
        if (hud_timer == 13){
            hud_state++;
            hud_timer = 0;
        bobblehead_body_offset = 0;
        bobblehead_head_offset = 0;
        }
        break;
    case 2: //Active
        hud_timer++;
        
        speedometer_offset = 0;
        
        hud_frame = 3;
        if (hud_timer == 12){
            hud_timer = 0;
            hud_sprite = spr_hud;
            handlebars_sprite = spr_hud_handlebars;
	        bobblehead_body_offset = 0;
	        bobblehead_head_offset = 0;
            bobblehead_frame++;
        }
        if (hud_timer == 6){
            hud_sprite = spr_hud_shake;
            handlebars_sprite = spr_hud_handlebars_shake;
            bobblehead_frame++;
	        //bobblehead_body_offset = 2;
	        bobblehead_head_offset = 2;
        }
        if !bike{
            hud_state++;
            hud_timer = 0;
            hud_sprite = spr_hud;
            handlebars_sprite = spr_hud_handlebars;
        }
        break;
    case 3: //Closing
        hud_timer++;
        hud_frame = round(ease_linear(4, 6, hud_timer, 12));
        
        speedometer_offset = (hud_frame == 4) ? 0 : -2;
        
        switch(hud_frame){
        	case 4:
        		bobblehead_body_offset = -2;
        		bobblehead_head_offset = 0;
        		break;
        	case 5:
        		bobblehead_body_offset = 0;
        		bobblehead_head_offset = -2;
        		break;
        	case 6:
        		bobblehead_body_offset = 200;
        		bobblehead_head_offset = 200;
        		break;
        }
        
        if (hud_timer == 13){
            hud_state = 0;
        }
        break;
}

if !(attacking && attack == AT_DSPECIAL){
	if (hud_state == clamp(hud_state, 1, 2)){
	    speedometer_angle = lerp(speedometer_angle, abs(round(ease_linear(0, 270, round(hsp), 11) - 2 +
	    random_func(1, round(ease_linear(3, 60, round(hsp), 20)), true))), 0.4);
	}
	else{
	    speedometer_angle = lerp(speedometer_angle, 0, 0.4);
	}
}

badly_damaged = (get_player_damage(player) >= 100);



//HUD: taunt menu

switch(taunt_menu_state){
    case 0: //Inactive
        break;
    case 1: //Opening
        taunt_menu_timer++;
        taunt_menu_scale = ease_quartOut(3, 10, taunt_menu_timer, 6) / 10;
        if (taunt_menu_timer == 6){
            taunt_menu_state = 2;
            taunt_menu_timer = 0;
        }
        break;
    case 2: //Active
        taunt_menu_timer++;
        taunt_menu_scale = 1;
        break;
    case 3: //Closing
        taunt_menu_timer++;
        if (taunt_menu_timer == 6){
            taunt_menu_state = 0;
            taunt_menu_timer = 0;
        }
        taunt_menu_scale = ease_quartIn(10, -5, taunt_menu_timer, 6) / 10;
        taunt_menu_scale = clamp(taunt_menu_scale, 0, 11);
        break;
    case 4: //Selected
        taunt_menu_timer++;
        if (taunt_menu_timer == 24){
            taunt_menu_state = 0;
            taunt_menu_timer = 0;
        }
        taunt_menu_scale = ease_quartIn(10, -5, taunt_menu_timer, 6) / 10;
        taunt_menu_scale = clamp(taunt_menu_scale, 0, 11);
        break;
}

taunt_menu_active = (taunt_menu_state == 2);

if taunt_menu_active{
	if (up_down || down_down){
		held_timer++;
	}
	else{
		held_timer = 0;
	}
	
	if ((up_pressed || (up_down && held_timer > 24 && held_timer mod 5 == 0)) && !codec_forced){
		taunt_menu_selected--;
		sound_play(sfx_hud_move);
		taunt_menu_timer = 0;
	}
	if ((down_pressed || (down_down && held_timer > 24 && held_timer mod 5 == 0)) && !codec_forced){
		taunt_menu_selected++;
		sound_play(sfx_hud_move);
		taunt_menu_timer = 0;
	}
	
	if ((shield_pressed || special_pressed || taunt_pressed || free || state_cat == SC_HITSTUN) && !codec_forced){
		taunt_menu_state = 3;
		taunt_menu_timer = 0;
		sound_play(sfx_hud_close2);
	}
	
	if codec_forced{
		taunt_menu_selected = 5;
	}
	
	switch(taunt_menu_selected){
		case -1:
			taunt_menu_selected = (codec_valid ? 5 : 4);
			break;
		case 5:
			if !codec_valid taunt_menu_selected = 0;
			break;
		case 6:
			taunt_menu_selected = 0;
			break;
	}
	
	if (attack_pressed || codec_forced){
		tauntSelect(taunt_menu_selected);
		taunt_menu_state = ((taunt_menu_selected == clamp(taunt_menu_selected,3,4)) ? 2 : 4);
		taunt_menu_timer = 0;
		sound_play(taunt_menu_selected == clamp(taunt_menu_selected,3,4) ? sfx_hud_select2 : sfx_hud_select1);
		taunt_menu_linger_offset = x;
		clear_button_buffer(PC_ATTACK_PRESSED);
	}
}



//HUD: framedata display

switch(frame_data_guide_state){
    case 0: //Inactive
        break;
    case 1: //Opening
        frame_data_guide_timer++;
        frame_data_guide_frame = floor(ease_linear(0, 9, frame_data_guide_timer, 50));
        if (frame_data_guide_timer == 50){
            frame_data_guide_state = 2;
            frame_data_guide_timer = 0;
        }
        break;
    case 2: //Active
        frame_data_guide_timer++;
        frame_data_guide_frame = 9;
        break;
    case 3: //Closing
        frame_data_guide_timer++;
        frame_data_guide_frame = floor(ease_linear(10, 17, frame_data_guide_timer, 50));
        if (frame_data_guide_timer == 50){
            frame_data_guide_state = 0;
            frame_data_guide_timer = 0;
        }
        break;
}



//HUD: framedata menu

var menu_goal = false;

switch(frame_data_menu_state){
    case 0: //Inactive
    	menu_goal = true;
        break;
    case 1: //Opening
        frame_data_menu_timer++;
        if (frame_data_menu_timer == 6){
            frame_data_menu_state = 2;
            frame_data_menu_timer = 0;
			loadFrameData(frame_data_atk_name);
        }
        break;
    case 2: //Active
        frame_data_menu_timer++;
        break;
    case 3: //Closing
        frame_data_menu_timer++;
        if (frame_data_menu_timer == 6){
            frame_data_menu_state = 0;
            frame_data_menu_timer = 0;
        }
    	menu_goal = true;
        break;
    case 4: //Selected
        frame_data_menu_timer++;
        if (frame_data_menu_timer == 24){
            frame_data_menu_state = 0;
            frame_data_menu_timer = 0;
        }
    	menu_goal = true;
        break;
}

var menu_goal_int = (menu_goal ? 200 : 0);

if (frame_data_menu_offset != menu_goal_int){
	frame_data_menu_offset = round(lerp(frame_data_menu_offset, menu_goal_int, 0.5));
}

frame_data_menu_active = (frame_data_menu_state == 2);

if frame_data_menu_active{
	/*
	
	if left_pressed{
		frame_data_menu_selected--;
		sound_play(asset_get("mfx_option"));
		frame_data_menu_timer = 0;
	}
	
	if right_pressed{
		frame_data_menu_selected++;
		sound_play(asset_get("mfx_option"));
		frame_data_menu_timer = 0;
	}
	
	*/
	
	if (shield_pressed || attack_pressed || taunt_pressed || free || state_cat == SC_HITSTUN){
		frame_data_menu_state = 3;
		frame_data_menu_timer = 0;
		sound_play(sfx_hud_close1);
	}
	
	if special_pressed{
		frame_data_menu_state = 3;
		frame_data_menu_timer = 0;
		sound_play(sfx_hud_close2);
		
		frame_data_guide_state = 3;
		frame_data_guide_timer = 0;
	}
	
	if (frame_data_menu_selected == 1){
		if (up_down || down_down){
			held_timer++;
		}
		else{
			held_timer = 0;
		}
		if ((up_pressed ^^ down_pressed) || (held_timer > 24 && held_timer mod 5 == 0)){
			frame_data_atk_name += (down_down - up_down);
			sound_play(sfx_hud_move);
			frame_data_menu_timer = 0;
			
			if (frame_data_atk_name > num_of_attacks){
				frame_data_atk_name = 0;
			}
			if (frame_data_atk_name < 0){
				frame_data_atk_name = num_of_attacks;
			}
			
			if (frame_data_atk_index[frame_data_atk_name] == 999){
				bike_dmg = 0;
				bike_bkb = 0;
				bike_angle = 0;
			}
			
			if (frame_data_atk_index[frame_data_atk_name] == AT_DSPECIAL){
				dspecial_dmg = 0;
				dspecial_bkb = 0;
				dspecial_kbs = 0;
				dspecial_charge = 0;
			}
			
			loadFrameData(frame_data_atk_name);
		}
	}else{
		held_timer = 0;
	}
}

if ((frame_data_atk_index[frame_data_atk_name] == AT_NSPECIAL || frame_data_atk_index[frame_data_atk_name] == 999 || frame_data_atk_index[frame_data_atk_name] == AT_DSPECIAL || frame_data_atk_index[frame_data_atk_name] == AT_FSPECIAL) && frame_data_guide_state == 2){
	loadFrameData(frame_data_atk_name);
}

//Offset bike HUD while using dspecial during frame data guide

var bike_hud_goal = (attacking && attack == AT_DSPECIAL && frame_data_guide_state == 2 && frame_data_atk_index[frame_data_atk_name] == AT_DSPECIAL) * -86;

if (whole_bike_hud_offset != bike_hud_goal){
	whole_bike_hud_offset = round(lerp(whole_bike_hud_offset, bike_hud_goal, 0.5));
}



if ("rouxls_bgm" in self){
	if (text_gimmicks[text_file, text_page] != 6 || !textbox_state){
		sound_stop(rouxls_bgm);
	}
}



//HUD: textbox

if (textbox_state == 2){
	if (textbox_timer == 0){
		final_text = "";
		text_char = 1;
		breath_pause = 0;
		mouth_flap = false;
		post_text_timer = 0;
	}
	if ((textbox_timer mod 2 == 0 || text_gimmicks[text_file, text_page] == 16) && textbox_timer > ((text_gimmicks[text_file, text_page] == 17) ? 30 : 8)){
		if !(textbox_timer mod 4) mouth_flap = !mouth_flap;
		
		var next_char = string_char_at(text_contents[text_file, text_page], text_char);
		var next_chars = next_char + string_char_at(text_contents[text_file, text_page], text_char + 1);
		var take_breath = false;
		
		switch(next_chars){
			case ". ":
			case "; ":
			case ": ":
			case "! ":
			case "? ":
			case ", ":
			case "* ":
				if (text_gimmicks[text_file, text_page] != 16) take_breath = true;
				break;
		}
		
		var prev_four = "";
		var prev_three = "";
		
		for(i = 3; i > -1; i--){
			if (text_char >= i){
				prev_four += string_char_at(text_contents[text_file, text_page], text_char - i);
				if (i < 3){
					prev_three += string_char_at(text_contents[text_file, text_page], text_char - i);
				}
			}
		}
		
		switch(prev_four){
			case "....":
				take_breath = true;
				break;
		}
		
		switch(prev_three){
			case " - ":
				take_breath = true;
		}
		
		switch(text_gimmicks[text_file, text_page]){
			case 1: //laugh track after codec end
				if (post_text_timer == 20){
					sound_play(sound_get("laugh_track"));
				}
				break;
			case 2: //enemy taunt after codec end
				if !(post_text_timer % 30){
					with codec_id{
						set_attack(AT_TAUNT);
					}
				}
				break;
			case 4: //ditto start
				if (post_text_timer == 10 && !codec_forced){
					if practice{
						codec_forced = 1;
						codec_id.codec_forced = 2;
					}else{
						dont_force = true;
					}
					with codec_id{
						if codec_forced{
							set_attack(AT_TAUNT);
						}
						else if !("dont_force" in self){
							taunt_menu_selected = 5;
							tauntSelect(5);
						}
					}
				}
			case 3: //ditto continue
				if (textbox_timer == 10 && codec_forced == 1){
					with codec_id{
						if codec_forced{
							set_attack(AT_TAUNT);
						}
					}
				}
				break;
			case 5: //cut off after codec end
				if (post_text_timer == 1){
					var temp_page = text_page;
					text_page++;
					textbox_timer = -1;
			    	
			    	if (text_page != clamp(text_page, 0, text_page_count[text_file])){
				    	textbox_state = 3;
						sound_play(sfx_hud_close2);
						text_page = temp_page;
			    	}else{
			    		sound_play(sfx_hud_chatter_skip);
			    	}
			    	final_text = "";
				}
				break;
			case 6: //Rouxls music start
				if (textbox_timer == 10){
					rouxls_bgm = sound_play(sfx_guest_rouxls_kaard, true);
				}
				break;
			case 7: //Dance
				if bike dismount = true;
				if ((state == PS_IDLE || state == PS_WALK) && state_timer > 2){
					spr_dir *= -1;
					hsp = 0;
					set_state(PS_WALK);
				}
				break;
			case 8: //Display 300 for page ct
				break;
			case 9: //AHime insta-slice
				if (post_text_timer == 1){
					codec_id.instant_slice = true;
					codec_id.otto_trigger_slice = true;
					codec_id.otto_id = id;
				}
				if (post_text_timer == 30){
					var temp_page = text_page;
					text_page++;
					textbox_timer = -1;
			    	
			    	if (text_page != clamp(text_page, 0, text_page_count[text_file])){
				    	textbox_state = 3;
						sound_play(sfx_hud_close2);
						text_page = temp_page;
			    	}else{
			    		sound_play(sfx_hud_chatter_skip);
			    	}
			    	final_text = "";
				}
				break;
			case 10: //AHime fstrong slice
				if (post_text_timer == 1){
					codec_id.otto_trigger_slice = true;
					codec_id.otto_id = id;
				}
				if (post_text_timer == 7){
					set_state(PS_PARRY);
				}
				if (post_text_timer == 100){
					set_player_damage(player, 0);
					var temp_page = text_page;
					text_page++;
					textbox_timer = -1;
			    	
			    	if (text_page != clamp(text_page, 0, text_page_count[text_file])){
				    	textbox_state = 3;
						sound_play(sfx_hud_close2);
						text_page = temp_page;
			    	}else{
			    		sound_play(sfx_hud_chatter_skip);
			    	}
			    	final_text = "";
				}
				break;
			case 11: //Portrait wiggle
				break;
			case 12: //Paddler flipper flop
				if (next_char == "," && !breath_pause){
					with codec_id set_state(PS_ROLL_FORWARD);
				}
				break;
			case 13: //Paddler figure fighter
				if ((next_char == "!" && !breath_pause) || post_text_timer == 10){
					with codec_id set_attack(AT_JAB);
				}
				break;
			case 14: //Paddler ringside
				switch(post_text_timer){
					case 1:
						with codec_id set_attack(AT_TAUNT);
						break;
					case 44:
						var temp_page = text_page;
						text_page++;
						textbox_timer = -1;
				    	
				    	if (text_page != clamp(text_page, 0, text_page_count[text_file])){
					    	textbox_state = 3;
							sound_play(sfx_hud_close2);
							text_page = temp_page;
				    	}else{
				    		sound_play(sfx_hud_chatter_skip);
				    	}
				    	final_text = "";
				    	break;
				}
				break;
			case 15: //Shy Guy sound
				if (textbox_timer == 10){
					sound_play(sfx_guest_shy_guy);
				}
				break;
			case 16: //Wizard text wrap
				break;
			case 17: //G&W 2D reveal
				break;
		}
		
		if (prev_four == "....") mouth_flap = false;
		
		if (take_breath && breath_pause < 8){
			if !breath_pause final_text += next_char;
			breath_pause++;
			mouth_flap = false;
		}
		else{
			if (text_char <= string_length(text_contents[text_file, text_page])){
				sound_play(sfx_hud_chatter[clamp(random_func(0, 3, true), 0, 2)]);
				text_char++;
			}
			else{
				mouth_flap = false;
				post_text_timer++;
			}
			if !breath_pause final_text += next_char;
			breath_pause = 0;
		}
	}
}

switch(textbox_state){
    case 0: //Inactive
        break;
    case 1: //Opening
        textbox_timer++;
        textbox_scale = ease_quartOut(3, 10, textbox_timer, 6) / 10;
        if (textbox_timer == 6){
            textbox_state = 2;
            textbox_timer = 0;
        }
        break;
    case 2: //Active
        textbox_timer++;
        textbox_scale = 1;
        if ((!practice || "thief" in self) && post_text_timer >= 100 && !codec_forced){
        	var temp_page = text_page;
    		text_page++;
	    	textbox_timer = 0;
	    	
	    	if (text_page != clamp(text_page, 0, text_page_count[text_file])){
		    	textbox_state = 3;
		    	textbox_timer = 0;
				sound_play(sfx_hud_close2);
				text_page = temp_page;
	    	}else{
	    		sound_play(sfx_hud_chatter_skip);
	    	}
	    	final_text = "";
        }
        break;
    case 3: //Closing
        textbox_timer++;
        if (textbox_timer == 6){
            textbox_state = 0;
            textbox_timer = 0;
        }
        textbox_scale = ease_quartIn(10, -5, textbox_timer, 6) / 10;
        textbox_scale = clamp(textbox_scale, 0, 11);
        break;
}

//Dash taunt

switch state{
    case PS_DASH:
    case PS_DASH_START:
    case PS_DASH_TURN:
    case PS_DASH_STOP:
        if taunt_pressed{
            set_attack(AT_TAUNT);
        }
}



if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecsprite1 = sprite_get("idle");
    trummelcodecsprite2 = sprite_get("idle");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "according";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "No.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "to";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "I swear to god";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "all";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "STOP.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "...";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "I think he's done now.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Ah, finally. Trum, if you";
    trummelcodecline[page,2] = "pull that with another";
    trummelcodecline[page,3] = "character, I'm not giving";
    trummelcodecline[page,4] = "you fighting tips.";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Anyway. This guy's Otto,";
    trummelcodecline[page,2] = "the ''Billiard Biker''.";
    trummelcodecline[page,3] = "His thing is knocking his";
    trummelcodecline[page,4] = "stuff around.";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "His bike is just another";
    trummelcodecline[page,2] = "billiard ball to him,";
    trummelcodecline[page,3] = "apparently. Try and hit";
    trummelcodecline[page,4] = "it before he does.";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "The 7- and 8-Balls are";
    trummelcodecline[page,2] = "seriously deadly if he";
    trummelcodecline[page,3] = "lands them, so don't-";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "known laws of aviation";
    trummelcodecline[page,2] = "there is no way a bee";
    trummelcodecline[page,3] = "should be able to fly its";
    trummelcodecline[page,4] = "wings are too small to get its fat little body off the ground the bee of course flies anyway because bees don't care what humans think is impossible yellow yellow yellow yellow yellow yellow yellow yellow yellow yellow yellow yellow hi nerd who peeks at codec code";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "NOPE. We're done here.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    
    trummelcodecmax = page;
}

with trummelcodec_id{
	switch(codecindex){
		case 12:
			codectimer2++;
			if !(codectimer2 mod 6){
				with other sound_play(sfx_hud_chatter[clamp(random_func(0, 3, true), 0, 2)]);
			}
			if (codectimer2 > 400){
	    		codecindex++;
				currentcodecline = 1;   //Line of codec being written
				codectimer2 = 0;    //Anim timer for text scroll
				codecprint[1] = "";
				codecprint[2] = "";
				codecprint[3] = "";
				codecprint[4] = "";
				sound_play(sound_get("textpage"));
			}
			break;
		case 11:
			if (currentcodecline == 4){
	    		codecindex++;
				currentcodecline = 1;   //Line of codec being written
				codectimer2 = 0;    //Anim timer for text scroll
				codecprint[1] = "";
				codecprint[2] = "";
				codecprint[3] = "";
				codecprint[4] = "";
				sound_play(sound_get("textpage"));
			}
			break;
			
	}
}



//swallowed = 0 :)

if swallowed {
	swallowed = 0;
	beenswallowed = true;
	var ability_spr = sprite_get("copy_ability");
	var ability_hurt = sprite_get("copy_ability_hurt");
	var myicon = sprite_get("copy_icon");
	
	
	/*
	
	var transfersfx_cooldown_end = sound_get("cooldown_end");
	var transfersfx_cooldown_start = sound_get("cooldown_start");
	var transfersfx_cooldown_click = sound_get("cooldown_click");
	var transfersfx_brass_melee = sound_get("brass_melee");
	var transferspr_cooldown = sprite_get("cooldown");
	var transferspr_cooldownfill = sprite_get("cooldownfill");
	var transferspr_cooldownfillborder = sprite_get("cooldownfillborder");
	var transferspr_cooldownfail = sprite_get("cooldownfail");
	
	*/
	
	with enemykirby{
		newicon = myicon;
        
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, ability_hurt);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, other.sfx_rev[0]);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 2);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, -3);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, other.sfx_rev[2]);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, 10);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, -5);
        
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 20);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 6);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 2);
        
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 14);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 8);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED_TYPE, 2);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED, 5);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
        
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, other.id);
        
        set_num_hitboxes(AT_EXTRA_3, 1);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 20);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -20);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 50);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 12);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 45);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 11);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
		set_hitbox_value(AT_EXTRA_3, 1, HG_IGNORES_PROJECTILES, 1);
	}
}



hide_hud = (display_mode == 1);
testing = (display_mode == 2);



prev_state_timer = state_timer;



if taunt_trigger{
	tauntSelect(5);
	taunt_trigger = false;
}



//with oPlayer if attack == AT_EXTRA_3 && window == 1 && window_timer == 1 spr_dir *= -1;



#define statUpdate

//Physical size
var stat_used = (bike || runeN);

//char_height = stat_char_height[stat_used];
knockback_adj = stat_knockback_adj[stat_used];

//Ground movement
walk_speed = stat_walk_speed[stat_used];
walk_accel = stat_walk_accel[stat_used];
initial_dash_speed = stat_initial_dash_speed[stat_used];
dash_speed = stat_dash_speed[stat_used];
dash_turn_accel = stat_dash_turn_accel[stat_used];
dash_stop_time = stat_dash_stop_time[stat_used];
dash_stop_percent = stat_dash_stop_percent[bike];
ground_friction = stat_ground_friction[bike];
moonwalk_accel = stat_moonwalk_accel[stat_used];

//Air movement
leave_ground_max = stat_leave_ground_max[stat_used];
max_jump_hsp = stat_max_jump_hsp[stat_used];
air_max_speed = stat_air_max_speed[stat_used];
jump_change = stat_jump_change[stat_used];
air_accel = stat_air_accel[stat_used];
air_friction = stat_air_friction[stat_used];
max_fall = stat_max_fall[stat_used];
fast_fall = stat_fast_fall[stat_used];
gravity_speed = stat_gravity_speed[stat_used];

//Jumps
jump_speed = stat_jump_speed[stat_used];
short_hop_speed = stat_short_hop_speed[stat_used];
djump_speed = stat_djump_speed[bike];
double_jump_time = stat_double_jump_time[bike];

//Landing and wavelanding
wave_land_adj = stat_wave_land_adj[stat_used];
wave_friction = stat_wave_friction[stat_used];
air_dodge_speed = stat_air_dodge_speed[stat_used];

//Misc.
hurtbox_spr = stat_hurtbox_spr[bike];



#define tauntSelect

switch(argument[0]){
	case 0: //How to play
		textbox_state = 1;
		textbox_timer = 0;
		text_file = 0;
		text_page = 0;
		post_text_timer = 0;
		break;
	case 1: //Frame data
		frame_data_guide_state = 1;
		frame_data_guide_timer = 0;
		
		frame_data_menu_state = 1;
		frame_data_menu_selected = 1;
		break;
	case 2: //Patch notes
		textbox_state = 1;
		textbox_timer = 0;
		text_file = 1;
		text_page = 0;
		post_text_timer = 0;
		break;
	case 3: //Godmode
    	god_mode++;
    	if (god_mode > 3){
    		god_mode = 0;
    	}
    	god_mode_updated = true;
		break;
	case 4: //Hudmode
    	if !("orig_hud_alpha" in self) orig_hud_alpha = hud_alpha;
    	display_mode++;
    	if (display_mode > 3){
    		display_mode = 0;
    	}
    	hud_alpha = (display_mode == 3) ? 1 : orig_hud_alpha;
		break;
	case 5: //Codec
		textbox_state = 1;
		textbox_timer = 0;
		text_file = codecLoad();
		text_page = 0;
		post_text_timer = 0;
		break;
}



#define frameDataSelect

switch(argument[0]){
	case 0: //Minimize (option to change to "minimise")
		break;
	case 1: //Change the attack
		frame_data_guide_state++;
		frame_data_guide_timer = 0;
		break;
	case 2: //Quit
		break;
}



#define loadFrameData
/// loadFrameData(atk, ...)

//initialise
var atk = argument[0];
var at_atk = frame_data_atk_index[atk];
var attack_sprite = spr_idle[0];
var sprite_frame = 0;
var active = "N/A";
var endlag = "N/A";
var landing = "N/A";
var dmg = "N/A";
var bkb = "N/A";
var kbs = "N/A";
var angle = "N/A";
var move_name = "";

if (at_atk < 900){
	var hitbox_count = get_num_hitboxes(at_atk);
	var window_count = get_attack_value(at_atk, AG_NUM_WINDOWS);
	
	//find sprite to showcase
	attack_sprite = get_attack_value(at_atk, AG_SPRITE);
	
	//active
	for (i = 1; i < hitbox_count + 1; i++){
		
		if (i == 1){ //find frame to showcase
			sprite_frame = get_window_value(at_atk, get_hitbox_value(at_atk, 1, HG_WINDOW), AG_WINDOW_ANIM_FRAME_START);
		}
		
		active = naCheck(active);
		var first_frame = 1;
		var last_frame = 0;
		
		for (j = 1; j < get_hitbox_value(at_atk, i, HG_WINDOW); j++){
			if !(at_atk == AT_DATTACK && j == 3){
				first_frame += get_window_value(at_atk, j, AG_WINDOW_LENGTH) * ((at_atk == AT_DSPECIAL && j == 2) ? 0.5 : 1);
			}
		}
		
		first_frame += (get_hitbox_value(at_atk, i, HG_WINDOW_CREATION_FRAME));
		
		if (at_atk == AT_DSPECIAL){
			first_frame += dspecial_charge / ((god_mode == 3) * 3 + runeH + 1); 
		}
		
		last_frame = first_frame + get_hitbox_value(at_atk, i, HG_LIFETIME) - 1;
		
		active += string(first_frame);
		
		if (first_frame != last_frame && get_hitbox_value(at_atk, i, HG_HITBOX_TYPE) != 2){
			active += "-" + string(last_frame);
		}
		
		if (i != hitbox_count){
			active += ", ";
		}
	}
	
	//ending lag
	var last_atk_window = 1;
	var last_window_frames = 0;
	var endlag_int = 0;
	var check_endlag = false;
	for (i = 1; i < hitbox_count + 1; i++){
		if (get_hitbox_value(at_atk, i, HG_WINDOW) >= last_atk_window){
			check_endlag = true;
			last_atk_window = get_hitbox_value(at_atk, i, HG_WINDOW);
			var hitbox_end = get_hitbox_value(at_atk, i, HG_LIFETIME) + get_hitbox_value(at_atk, i, HG_WINDOW_CREATION_FRAME);
			if (get_hitbox_value(at_atk, i, HG_HITBOX_TYPE) == 2){
				hitbox_end = get_hitbox_value(at_atk, i, HG_WINDOW_CREATION_FRAME);
			}
			var rem_time = get_window_value(at_atk, get_hitbox_value(at_atk, i, HG_WINDOW), AG_WINDOW_LENGTH) - hitbox_end;
			if (rem_time < last_window_frames || last_window_frames == 0){
				//last_window_frames = rem_time; //creation_frame support disabled b/c of bugs that popped up w/ dstrong.
			}
		}
	}
	for (j = last_atk_window + 1; j <= window_count; j++){
		endlag_int += get_window_value(at_atk, j, AG_WINDOW_LENGTH);
	}
	if check_endlag{
		endlag_int += last_window_frames;
		endlag = naCheck(endlag);
		endlag += string(endlag_int) + " (" + string(floor(endlag_int * 1.5)) + " Whiff)";
	}
	
	//landing lag
	if (get_attack_value(at_atk, AG_HAS_LANDING_LAG) && get_attack_value(at_atk, AG_LANDING_LAG)){
		landing = naCheck(landing);
		landing += string(get_attack_value(at_atk, AG_LANDING_LAG)) + " (" + string(floor(get_attack_value(at_atk, AG_LANDING_LAG) * 1.5)) + " Whiff)";
	}
	
	//damage
	for (i = 1; i < hitbox_count + 1; i++){
		dmg = naCheck(dmg);
		dmg += string(get_hitbox_value(at_atk, i, HG_DAMAGE));
		if (i != hitbox_count){
			dmg += ", ";
		}
	}
	
	//bkb
	for (i = 1; i < hitbox_count + 1; i++){
		bkb = naCheck(bkb);
		bkb += string(get_hitbox_value(at_atk, i, HG_BASE_KNOCKBACK));
		
		if get_hitbox_value(at_atk, i, HG_FINAL_BASE_KNOCKBACK){
			bkb += "-" + string(get_hitbox_value(at_atk, i, HG_FINAL_BASE_KNOCKBACK));
		}
		
		if (i != hitbox_count){
			bkb += ", ";
		}
	}
	
	//kbs
	for (i = 1; i < hitbox_count + 1; i++){
		kbs = naCheck(kbs);
		kbs += string(get_hitbox_value(at_atk, i, HG_KNOCKBACK_SCALING));
		
		if (i != hitbox_count){
			kbs += ", ";
		}
	}
	
	//angle
	for (i = 1; i < hitbox_count + 1; i++){
		angle = naCheck(angle);
		angle += string(get_hitbox_value(at_atk, i, HG_ANGLE));
		
		if (get_hitbox_value(at_atk, i, HG_ANGLE_FLIPPER)){
			angle += " (Flip. " + string(get_hitbox_value(at_atk, i, HG_ANGLE_FLIPPER)) + ")";
		}
		
		if (i != hitbox_count){
			angle += ", ";
		}
	}
}



//reset labels

frame_data_guide_text[0,1] = "Active:";
frame_data_guide_text[0,2] = "Endlag:";
frame_data_guide_text[0,3] = "Landing Lag:";
frame_data_guide_text[2,0] = "Damage:";
frame_data_guide_text[2,1] = "Base KB:";
frame_data_guide_text[2,2] = "KB Growth:";
frame_data_guide_text[2,3] = "Angle:";



//special cases
switch(at_atk){
	case 998:
		move_name = ": Riding a Bike";
		attack_sprite = spr_idle[1];
		frame_data_guide_text[0,1] = "Walk Speed:";
		frame_data_guide_text[0,2] = "Initial Dash:";
		frame_data_guide_text[0,3] = "Dash Speed:";
		
		var a = " -> "
		
		active = string(stat_walk_speed[0]) + a + string(stat_walk_speed[1]);
		endlag = string(stat_initial_dash_speed[0]) + a + string(stat_initial_dash_speed[1]);
		landing = string(stat_dash_speed[0]) + a + string(stat_dash_speed[1]);
		
		frame_data_guide_text[2,0] = "Air Speed:";
		frame_data_guide_text[2,1] = "Air Accel:";
		frame_data_guide_text[2,2] = "Jump Speed:";
		frame_data_guide_text[2,3] = "DJump Speed:";
		
		dmg = string(stat_air_max_speed[0]) + a + string(stat_air_max_speed[1]);
		bkb = string(stat_air_accel[0]) + a + string(stat_air_accel[1]);
		kbs = string(stat_jump_speed[0]) + a + string(stat_jump_speed[1]);
		angle = string(stat_djump_speed[0]) + a + string(stat_djump_speed[1]);
		break;
	case 999:
		move_name = ": Launching a Bike";
		if bike_dmg{
			dmg = string(bike_dmg);
			bkb = string(bike_bkb);
			kbs = string(get_hitbox_value(AT_BIKE, 1, HG_KNOCKBACK_SCALING));
			angle = string(bike_angle);
		}
		else{
			dmg = "???";
			bkb = "???";
			kbs = "???";
			angle = "???";
		}
		active = "1-10";
		attack_sprite = spr_a_bike_idle;
		break;
	case AT_NSPECIAL:
		var df_ball_charge = clamp(ball_charge, 1, 100);
		move_name = ": Billiard Charge (" + string(df_ball_charge) + "-Ball)";
		active = "16-"; //hardcoded value aaaa
		endlag = string(get_window_value(at_atk, 3, AG_WINDOW_LENGTH) + get_window_value(at_atk, 4, AG_WINDOW_LENGTH) - 6);
		dmg = string(get_hitbox_value(at_atk, df_ball_charge, HG_DAMAGE));
		bkb = string(get_hitbox_value(at_atk, df_ball_charge, HG_BASE_KNOCKBACK));
		kbs = string(get_hitbox_value(at_atk, df_ball_charge, HG_KNOCKBACK_SCALING));
		angle = string(get_hitbox_value(at_atk, df_ball_charge, HG_ANGLE));
		frame_data_guide_text[0,3] = "Hitpause:";
		landing = string(get_hitbox_value(at_atk, df_ball_charge, HG_BASE_HITPAUSE) + get_hitbox_value(at_atk, df_ball_charge, HG_EXTRA_HITPAUSE)) + " (" + string(get_hitbox_value(at_atk, df_ball_charge, HG_HITPAUSE_SCALING)) + " Scaling)";
		sprite_frame = 3;
		break;
	case AT_FSPECIAL:
		move_name = ": Bike Rally";
		landing = string(get_window_value(at_atk, 3, AG_WINDOW_LENGTH));
		break;
	case AT_USPECIAL:
		move_name = ": Flight of the Bumblebee"; //or Laws of Aviation
		sprite_frame = 4;
		frame_data_guide_text[0,1] = "Rising:";
		active = string(get_window_value(at_atk, 1, AG_WINDOW_LENGTH) + 1) + "-" + string(get_window_value(at_atk, 2, AG_WINDOW_LENGTH) + get_window_value(at_atk, 1, AG_WINDOW_LENGTH));
		endlag = string(get_window_value(at_atk, 3, AG_WINDOW_LENGTH));
		break;
	case AT_DSPECIAL:
		move_name = ": Bike Bash";
		if !dspecial_dmg{
			dmg = string(dspecial_dmg_min) + "-" + string(dspecial_dmg_max) + "ish";
			bkb = string(dspecial_bkb_min) + "-" + string(dspecial_bkb_max) + "ish";
			kbs = string(dspecial_kbs_min) + "-" + string(dspecial_kbs_max) + "ish";
		}
		else{
			dmg = string(dspecial_dmg);
			bkb = string(dspecial_bkb);
			kbs = string(dspecial_kbs);
		}
		sprite_frame = 10;
		break;
	case AT_JAB:
		move_name = ": Hard Knuckle";
		break;
	case AT_FTILT:
		move_name = ": Bridge Strike";
		break;
	case AT_UTILT:
		move_name = ": Cue Upper";
		break;
	case AT_DTILT:
		move_name = ": Backspin Dash";
		break;
	case AT_DATTACK:
		move_name = ": Running the Table";
		endlag = string(get_window_value(at_atk, 7, AG_WINDOW_LENGTH) + 4) + " (" + string(get_window_value(at_atk, 3, AG_WINDOW_LENGTH)) + " Whiff)"; //hardcoded value aaaaa
		break;
	case AT_NAIR:
		move_name = ": Shot Curve";
		break;
	case AT_FAIR:
		move_name = ": Shoulder Scratch";
		break;
	case AT_BAIR:
		move_name = ": Elbow Scratch";
		break;
	case AT_UAIR:
		move_name = ": Head Spot";
		break;
	case AT_DAIR:
		move_name = ": Slate Stinger";
		break;
	case AT_FSTRONG:
		move_name = ": Racker";
		break;
	case AT_USTRONG:
		move_name = ": Angle Shot";
		break;
	case AT_DSTRONG:
		move_name = ": Buzzing the Bassline";
		break;
}



//export to draw_hud

frame_data_guide_text[0,0] = frame_data_atk_label[atk] + move_name;
frame_data_guide_text[1,1] = active;
frame_data_guide_text[1,2] = endlag;
frame_data_guide_text[1,3] = landing;
frame_data_guide_text[3,0] = dmg;
frame_data_guide_text[3,1] = bkb;
frame_data_guide_text[3,2] = kbs;
frame_data_guide_text[3,3] = angle;
frame_data_guide_char_sprite = attack_sprite;
frame_data_guide_char_frame = sprite_frame;
frame_data_guide_move_alias = move_name;



#define naCheck

if (argument[0] == "N/A"){
	return "";
}
else{
	return argument[0];
}



#define bobbleLoad

var bobble_index = 0;

var bobblehead_file = spr_hud_bobblehead;
var bobblebody_file = spr_hud_bobblebody;

with(asset_get("oPlayer")){
	if (id != other.id){
		if "otto_bobblehead_sprite" in self{ //workshop char w/ it set up
			bobblehead_file = otto_bobblehead_sprite;
			if "otto_bobblehead_body_sprite" in self{
				bobblebody_file = otto_bobblehead_body_sprite;
			}
		}
		
		else if (url != ""){
			if (real(url) < 20){ //vanilla char
				bobble_index = real(url) - 1;
			}
			else if (real(url) == 1865940669){ //sandbert
				bobble_index = 15;
			}
			else if (real(url) == 1866016173){ //guadua
				bobble_index = 16;
			}
		
			else{ //dummy
				bobble_index = 17;
			}
		}
		
		else{ //dummy
			bobble_index = 17;
		}
		other.bobble_id = id;
	}
}

if bobble_index{
	bobblehead_file = spr_hud_bobbleguest[bobble_index];
}

bobblehead_sprite = bobblehead_file;
bobblebody_sprite = bobblebody_file;

with(bobble_id){
	otto_bobble_used = true;
	otto_bobble_id = other.id;
}



#define codecLoad

var codec_index = 0; //0 means enemy has no codec

for (var i = 0; i <= total_codecs; i++){
	with(asset_get("oPlayer")){
		if (id != other.id && url != ""){
			if (real(url) == other.text_codecs_url[i] || real(url) == other.text_second_url[i]){
				codec_index = i;
				other.codec_id = id;
				if ("abyssHime" in self){
					codec_index += abyssHime;
				}
			}
		}
	}
}

return codec_index;



#define glowySpawn(blue)

var fx_x = floor(x) - (8 - random_func(1, 15, true)) * spr_dir;
var fx_y = floor(y) - 50 + random_func(2, 30, true);
var glowy = instance_create(fx_x, fx_y, "obj_article2");
glowy.vsp = vsp * 0.3;
glowy.hsp = hsp * 0.3;
if blue glowy.sprite_index = sprite_get("particle_blue");