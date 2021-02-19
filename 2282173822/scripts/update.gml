user_event(14);
attacking = phone_attacking;
if attacking window_end = phone_window_end;
playtest = phone_playtest;
practice = phone_practice;
inited = phone_inited;
ditto = phone_ditto;
blastzone_l = phone_blastzone_l;
blastzone_r = phone_blastzone_r;
blastzone_t = phone_blastzone_t;
blastzone_b = phone_blastzone_b;



/*

RUNE IDEAS
- Old Molotov (hitbox_timer constantly refreshed; bounces; spawns explosion)
- Old Gun (no endlag, transcendent, full screen)
- Soak Specials (stun) (permanent soaked visual on opponent?)
- midair strong input starts lightning state

*/



if phone_cheats[cheat_no_cd]{
	phone_arrow_cooldown = 0;
	move_cooldown[AT_NSPECIAL] = 0;
	move_cooldown[AT_DSPECIAL] = 0;
	can_board_cloud = true;
}



//hfx logic

with asset_get("hit_fx_obj") if ("trum_manip_id" in self && trum_manip_id == other){
	vsp += 0.5;
	y += vsp;
	if "hsp" in self x += hsp;
}



if snail{
	
	if vsp < -5 && state_timer % 10 == 1 && !phone.phone_settings[phone.setting_fast_graphics]{
		var hfx_x = x + random_func(0, 40, true) - 20;
		var hfx_y = y - random_func(0, 20, true);
		
		var hfx = spawn_hit_fx(hfx_x, hfx_y, vfx_rain_drop);
		hfx.trum_manip_id = self;
		hfx.vsp = 3;
	}
	
	var boarded = false;
	var cloud_id = noone;
	if can_board_cloud && vsp > -14 && !hitpause && !(phone_attacking && attack == AT_FSPECIAL && (window == 2 && window_timer < 4 || window == 1)) && !(phone_attacking && attack == AT_NSPECIAL_2){
		with(obj_article1) if (player_id == other && state < 2 && !boarded && place_meeting(x,y,other) && exist_timer > 30){
			boarded = true;
			cloud_id = self;
			other.can_board_cloud = false;
		}
	}
	
	if (hitpause && !super_armor && !phone_attacking || state == PS_WALL_JUMP){
		snail = false;
	}
	else if (!free && !phone_attacking) || boarded{
		// if boarded cloud_id.should_die = true;
		if boarded{
			lightning = lightning_max;
			cloud_id.state = 4;
			cloud_id.state_timer = 0;
		}
		snail = false;
		attack_end();
		set_attack(AT_EXTRA_1);
		destroy_hitboxes();
		hurtboxID.sprite_index = hurtbox_spr;
	}
	else{
		max_djumps = 0;
		has_airdodge = false;
		// super_armor = (vsp < -8 || hitpause);
		spr_dir = snail_spr_dir;
	}
}

if !snail{
	max_djumps = 1;
	if snail_airdodge_saved{
		has_airdodge = true;
		snail_airdodge_saved = false;
	}
}

if !free || state_cat == SC_HITSTUN || state == PS_WALL_JUMP{
	can_board_cloud = true;
}



if snail || lightning strong_cooldown = 0;



var orig = cloud_hud_target;

//Tick timers
if lightning{
	lightning--;
}
if flash_timer > -20 flash_timer--;

//Default color during not lightning
if !lightning{
	cloud_col_target = cloud_color;
	cloud_hud_target = cloud_color;
}
if lightning{
	if !flash_timer cloud_col_target = lightning_cloud_color;
	cloud_hud_target = lightning_cloud_color;
}

//Set flash timer
if lightning && (!prev_lightning || get_gameplay_time() % 20 == random_func(0, 20, true) && flash_timer == -20 || state_timer == 1 && flash_timer < 0){
	flash_timer = flash_timer_max;
	sound_play(sfx_ssbu_shock, 0, noone, 0.5, 1.7 + (random_func(1, 3, true) * 0.1));
}
if (phone_attacking && attack == clamp(attack, AT_FSTRONG_2, AT_USTRONG_2) && lightning < lightning_max){
	if image_index < 4{
		flash_timer = flash_timer_max;
		cloud_hud_target = cloud_color_middle;
	}
	else if image_index < 8{
		flash_timer = flash_timer_max - 3;
		if image_index < 6 cloud_hud_target = lightning_color;
		else if image_index < 7 cloud_hud_target = cloud_color_middle;
	}
}
if (phone_attacking && attack == AT_DSPECIAL_2 && lightning < lightning_max){
	if image_index < 3{
		flash_timer = flash_timer_max;
		cloud_hud_target = cloud_color_middle;
	}
	else{
		flash_timer = flash_timer_max - 3;
		if image_index < 5 cloud_hud_target = lightning_color;
		else cloud_hud_target = cloud_color_middle;
	}
}

//Respond to flash timer
if flash_timer{
	if (flash_timer == flash_timer_max || flash_timer == 3){ //half intensity
		cloud_col_target = cloud_color_middle;
	}
	else if (flash_timer == flash_timer_max - 3){
		cloud_col_target = lightning_color;
	}
}

//SFX
if lightning && !prev_lightning sound_play(sfx_ssbu_screw_attack);
if !lightning && prev_lightning	sound_play(sfx_ssbu_exit);

//Don't update while the cloud is disappearing
if (hud_handler.state == 3) cloud_hud_target = orig;

with asset_get("obj_article1") if player_id == other{
	if (state == 5){
		if state_timer >= 6 other.cloud_hud_target = other.lightning_color;
		else  other.cloud_hud_target = other.cloud_color_middle;
	}
}

//Push new cloud color
if !(array_equals(true_cloud_color, cloud_col_target) && array_equals(true_hud_color, cloud_hud_target)) init_shader();



//HUD handler

with hud_handler{
	
	switch(state){
		case 0: //Closed
			meter_width = 0;
			if !other.snail && other.state != PS_DEAD && (!dead || state_timer > 30){
				state = 1;
				state_timer = 0;
				dead = false;
			}
			break;
		case 1: //Opening
			var s_t_max = 10;
			image_index = lerp(0, 2, state_timer / s_t_max);
			meter_width = ease_backOut(0, 1, state_timer, s_t_max, 4);
			if (state_timer >= s_t_max){
				state = 2;
				state_timer = 0;
			}
			break;
		case 2: //Open
			image_index = round(state_timer / 6) % 7 + 2;
			meter_width = 1;
			if (state_timer == 20) strong_flashing_except = false;
			if other.snail{
				state = 3;
				state_timer = 0;
			}
			if array_equals(other.true_hud_color, other.lightning_color) && !strong_flashing_except{
				state = 1;
				state_timer = 0;
				strong_flashing_except = true;
			}
			break;
		case 3: //Closing
			var s_t_max = 30;
			image_index = lerp(10, 16, state_timer / s_t_max);
			meter_width = max(ease_backIn(1, 0, state_timer, 10, 4), 0);
			if (state_timer >= s_t_max){
				state = 0;
				state_timer = 0;
			}
			break;
	}
	
	state_timer++;
}



//DAttack super jump

if (state == PS_FIRST_JUMP || state == PS_ATTACK_AIR){
	if (prev_state == PS_ATTACK_GROUND && attack == AT_DATTACK && state_timer == 1){
		if attack_down{
			vsp = -djump_speed;
			hsp = air_max_speed * 1.5 * (right_down - left_down);
		}
		else{
			vsp = -jump_speed * 1.35;
			hsp = air_max_speed * (right_down - left_down);
		}
		sound_play(asset_get("sfx_ell_arc_taunt_end"));
	    spr_dir *= -1;
	    has_airdodge = false;
	    dattack_jump_airdodge_saved = true;
	}
}

if (state != PS_FIRST_JUMP || vsp > 0) && dattack_jump_airdodge_saved{
	has_airdodge = true;
	dattack_jump_airdodge_saved = false;
}

if (state == PS_FIRST_JUMP && state_timer < 6 && (vsp < -jump_speed || abs(hsp) > air_max_speed * 1.3)){
	strong_flashing = true;
}



with codec_handler{
	
	switch(state){
		case 0: // Closed
			scale = 0;
			page = 0;
			mouth_flap = 0;
			breather = 0;
			break;
		case 1: // Opening
			var s_t_max = 6;
			scale = ease_quartOut(3, 10, state_timer, s_t_max) / 10;
			
			if (state_timer == 1){
				with player_id sound_play(sfx_pho_open1);
				stored_text = "";
				if "player_object" in file file.player_object.trummel_id = player_id;
			}
			
			if (state_timer == s_t_max) setState(2);
			break;
		case 2: // Page writing
			scale = 1;
			
			if (state_timer == 0){
				mouth_flap = false;
			}
			
			if (state_timer == 1){
				with player_id sound_play(sfx_cdc_chatter_skip);
				if isGimmick(GIM_CLONE) with player_id sound_play(asset_get("sfx_forsburn_split"));
			}
			
			var chatter_time = 2;
			var startup_time = 8;
			
			var next_two = string_char_at(file.pages[page].text, string_length(stored_text)) + string_char_at(file.pages[page].text, string_length(stored_text) + 1);
			var next_three = next_two + string_char_at(file.pages[page].text, string_length(stored_text) + 2);
			var next_four = next_three + string_char_at(file.pages[page].text, string_length(stored_text) + 3);
			
			// Adding to string
			if !(state_timer % chatter_time) && state_timer > startup_time && !breather{
				stored_text += string_char_at(file.pages[page].text, string_length(stored_text) + 1);
				if !isGimmick(GIM_SHUT_UP) with player_id sound_play(sfx_cdc_chatter[clamp(random_func(0, 3, true), 0, 2)]);
				if !(state_timer % (chatter_time * 2)) mouth_flap = !mouth_flap;
			}
			else{
				next_two = "";
				next_three = "";
				next_four = "";
			}
			if breather{
				breather--;
				mouth_flap = 0;
			}
			
			// Punctuation test
			switch(next_two){
				case ". ":
				case "; ":
				case ": ":
				case "! ":
				case "? ":
				case ", ":
				case "* ":
					breather = 8;
			}
			switch(next_three){
				case " - ":
					breather = 8;
			}
			switch(next_four){
				case "....":
					breather = 8;
			}
			
			if (string_length(stored_text) >= string_length(file.pages[page].text)){
				setState(3);
				if isGimmick(GIM_CHOMP){
					with file.player_object if state == PS_IDLE set_attack(AT_FTILT);
				}
				if isGimmick(GIM_HOWL){
					with file.player_object if state == PS_IDLE set_attack(AT_DSPECIAL);
				}
			}
			break;
		case 3: // Page finished
			var s_t_max = 300;
			if (state_timer == 1 && isGimmick(GIM_DIE)) with other {
				y = 1000;
				x = room_width / 2;
			}
			breather = 0;
			mouth_flap = 0;
			if state_timer == 60 && isGimmick(GIM_LAUGH_TRACK){
				with player_id sound_play(sfx_cdc_laugh_track);
			}
			if (state_timer > s_t_max && !player_id.phone.state) || isGimmick(GIM_SKIP){
				setState(2);
				page++;
				stored_text = "";
				if (page == array_length_1d(file.pages)){
					setState(4);
					page--;
				}
			}
			break;
		case 4: // Closing
			var s_t_max = 6;
			scale = ease_quartOut(10, 3, state_timer, s_t_max) / 10;
			
			if (state_timer == 1){
				with player_id sound_play(sfx_pho_close2);
			}
			
			if (state_timer == s_t_max) setState(0);
			break;
	}
	
	active = state == clamp(state, 2, 3);
	
	state_timer++;
	
}
	  

	  
if (phone_attacking && (attack == AT_TAUNT || attack == AT_TAUNT_2)){
	if (window == 1 && window_timer == 5){
		if codec_handler.state{
			with codec_handler{
				setState(4);
			}
		}
	}
	
	
	if (window == 3 && taunt_time == 120){
		loadEnemyCodecs();
						
		if (array_length_1d(codec_handler.active_codecs)){
			with codec_handler{
				setState(1);
				file = active_codecs[0];
			}
		}
	}
}



if load_codecs{
	loadEnemyCodecs();
	load_codecs = false;
}



prev_lightning = lightning;



#define loadEnemyCodecs()

with codec_handler{
	
	active_codecs = [];
	
	var name = "";
	
	with oPlayer if id != other.player_id{
		var url2 = string_digits(string(url));
		var found = false;
		var loaded = 0;
		name = get_char_info(player, INFO_STR_NAME)
		
		// Check for Muno-side codecs
		for (var i = 0; i < array_length_1d(other.codecs) && !found; i++){
			if (other.codecs[i].url == url2) || ("muno_char_id" in self && muno_char_id != noone && other.codecs[i].url == muno_char_id * -1) && other.codecs[i].url != noone{
				found = true;
				loaded = i;
			}
		}
		
		// Load Muno-side codecs
		if found{
			with other{
				initActiveCodec(codecs[loaded], other, 1);
			}
		}
		
		// Check for external codecs
		if ("trummel_codecs" in self) for (var checked = 0; checked < array_length(trummel_codecs); checked++){
			with other{
				initActiveCodec(other.trummel_codecs[checked], other, 0);
			}
		}
	}
	
	with obj_stage_main{
		// Check for external codecs
		if ("trummel_codecs" in self) for (var checked = 0; checked < array_length(trummel_codecs); checked++){
			with other{
				initActiveCodec(other.trummel_codecs[checked], other, 0);
			}
		}
	}
	
	if array_equals(active_codecs, []) && !other.phone.state{
		array_push(active_codecs, codecs[0]);
	}
}



#define initActiveCodec(target, owner, local) // Add a codec LWO to the active codec array

array_push(active_codecs, target);
active_codecs[array_length_1d(active_codecs) - 1].player_object = owner;
var nam = "";
with owner{
	if "muno_char_name" in self nam = muno_char_name;
	else nam = get_char_info(player, INFO_STR_NAME);
}
active_codecs[array_length_1d(active_codecs) - 1].name = nam + (local ? "
	  (Local)" : "");
	 
	 

#define setState(n_s)

state = n_s;
state_timer = 0;



#define isGimmick(gimmick_num)

return file.pages[page].gimmick && (file.pages[page].gimmick % gimmick_num == 0);