//update.gml

window_end_time = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
last_window = get_attack_value(attack, AG_NUM_WINDOWS);

//for things that use spawn such as hallowflame
if state != PS_SPAWN has_spawned = true;

with(hit_fx_obj) if(player_id == other && sprite_index == sprite_get("rune_proj_end")) { hsp = 4 * spr_dir; depth = -6}

//nspecial
move_cooldown[AT_NSPECIAL] = max(move_cooldown[AT_NSPECIAL], 2);
var is_genociding = ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL_2)
// if "fs_charge" in self && fs_charge >= 200 move_cooldown[AT_NSPECIAL] = 0;
if (special_pressed && special_counter == 0 && !using_stored_attack && !was_parried && !is_genociding &&
    state != PS_PRATFALL && state != PS_PRATLAND && state_cat != SC_HITSTUN && state != PS_DEAD && state != PS_RESPAWN)
{
    //LOAD STORED ATTACK
    if (has_saved_state &&
        ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && //the condition checks if chara is attacking, not using the other specials OR the state timer is more than 0
        (attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_DSPECIAL || state_timer > 0) && //it bypasses the double input you normally would have gotten otherwise
        is_special_pressed(DIR_ANY) ||
        is_special_pressed(DIR_NONE)))
    {
        //visual/audio cues
        save_flash_time = 15;
        sound_play(sound_get("sfx_load"));
        spawn_hit_fx(x, y - 32, fx_savestate);
        
        if !get_match_setting(SET_RUNES) && attack == AT_DSTRONG vsp = max(vsp, dstrong_initial_vsp) // no more flying child

        if (saved_state.attack > 0)
        {
            set_attack_value(saved_state.attack, AG_CATEGORY, 2); //lets chara air tilt lol
            if (saved_state.free && saved_state.category == 1 && !free) //if the stored attack is an aerial and nspec is used on the ground (add exceptions)
            {
                free = true;
                vsp = -short_hop_speed;
                if hitpause old_vsp = -short_hop_speed;
            }

            //use attack + skip to the middle of the first window (add exceptions) + play whiff sound if the window starts after it should be playing

            //attack specific stuff
            if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_USPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL)) loaded_off_uspec = true;
            if (saved_state.attack == AT_DSTRONG)
            {
                dstrong_fall_time = dstrong_cancel_time;
                y -= 38;
            }
            if (saved_state.attack == AT_FSPECIAL)
            {
                window = saved_state.window;
                window_timer = saved_state.window_timer;
                fspec_charge = saved_state.fspec_charge;
            
            	//runes stuff
                if has_rune("L") && fspec_charge == fspec_max_charge {
		            set_num_hitboxes(AT_FSPECIAL, 2);
		            if has_rune("B") set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 0);
		        } else{
		            set_num_hitboxes(AT_FSPECIAL, 1);
		            reset_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY);
		        }
                
                //fspec values
                set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, lerp(7, 13, fspec_charge/fspec_max_charge));
                set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, lerp(7, 9, fspec_charge/fspec_max_charge));
                set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, lerp(0.7, 0.9, fspec_charge/fspec_max_charge));
                set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, lerp(8, 11, fspec_charge/fspec_max_charge));
                set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, lerp(0.6, 0.8, fspec_charge/fspec_max_charge));
                if(fspec_charge > 50){
                    set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
                } else {
                    set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
                }
                
            }
            else uses_afterimage_trail = false;
            if(saved_state.attack == AT_TAUNT_2 && lobotomy == noone) lobotomy = sound_play(sound_get("lobotomy"), true);
            
            attack_end();
            set_attack(saved_state.attack);
            hurtboxID.dodging = false;
            
            if (saved_state.strong_window == 0)
            {
                window_timer = floor(get_window_value(saved_state.attack, 1, AG_WINDOW_LENGTH)/2);
                if (!hitpause && window_timer > get_window_value(saved_state.attack, 1, AG_WINDOW_SFX_FRAME)) sound_play(get_window_value(saved_state.attack, 1, AG_WINDOW_SFX));
            }
            else
            {
                //strong_charge = saved_state.strong_charge;
                window = saved_state.strong_window + 1;
                window_timer = 0;
            }
            if hitpause old_hsp = clamp(old_hsp, -load_max_speed, load_max_speed) 
            hsp = clamp(hsp, -load_max_speed, load_max_speed);
            using_stored_attack = true;

            //stored attack is used up, reset everything
            reset_attack_value(saved_state.attack, AG_CATEGORY);
            //saved_state.strong_charge = 0;
            if !has_rune("A") saved_state.fspec_charge = 0;
            has_saved_state = has_rune("A");
            if has_rune("A") clear_button_buffer(PC_SPECIAL_PRESSED);
            super_armor = has_rune("G") && attack != AT_TAUNT_2;
        }
    }
    //SAVE STORED ATTACK
    else if (!has_saved_state && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && !get_attack_value(attack, AG_CANT_SAVE_ATTACK))
    {
        if (attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_DSPECIAL || state_timer > 0)
        {
            //visual/audio cues
            save_flash_time = 15;
            sound_play(sound_get("sfx_save"));
            spawn_hit_fx(x, y - 32, fx_savestate);
            
            if !get_match_setting(SET_RUNES) && attack == AT_DSTRONG vsp = max(vsp, dstrong_initial_vsp) // no more flying child

            saved_state.free = free;
            saved_state.attack = attack;
            saved_state.category = get_attack_value(saved_state.attack, AG_CATEGORY);
            saved_state.strong_window = get_attack_value(saved_state.attack, AG_STRONG_CHARGE_WINDOW);
            //saved_state.strong_charge = strong_charge;
            saved_state.fspec_charge = fspec_charge;
            saved_state.window = window;
            saved_state.window_timer = window_timer;
            /*
                //saved_state.hsp = hsp;
                //saved_state.vsp = vsp;
                //saved_state.spr_dir = spr_dir;
            */

            //specific resets/state transition
            uses_afterimage_trail = false;
            if (saved_state.attack = AT_FSPECIAL) hsp /= 3;
            if (saved_state.attack != AT_USPECIAL) set_state(free ? PS_IDLE_AIR : PS_IDLE);
            else
            {
                if (vsp > -5) vsp = -5;
                set_state(PS_PRATFALL);
            }

            //prevents attacks from coming out when recorded
            clear_button_buffer(PC_ATTACK_PRESSED);
            clear_button_buffer(PC_LEFT_STRONG_PRESSED);
            clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
            clear_button_buffer(PC_UP_STRONG_PRESSED);
            clear_button_buffer(PC_DOWN_STRONG_PRESSED);
            clear_button_buffer(PC_LEFT_STICK_PRESSED);
            clear_button_buffer(PC_RIGHT_STICK_PRESSED);
            clear_button_buffer(PC_UP_STICK_PRESSED);
            clear_button_buffer(PC_DOWN_STICK_PRESSED);
            has_saved_state = true;
        }
    }
    if (!has_rune("K") || (has_rune("K") && has_saved_state)) clear_button_buffer(PC_SPECIAL_PRESSED);
}

if (using_stored_attack && loaded_off_uspec && !has_hit_player && window == last_window && window_timer == window_end_time-1 && free) //cue schrodinger's pratfall
{
    set_state(PS_PRATFALL);
    loaded_off_uspec = false;
}
if (using_stored_attack && loaded_off_uspec && (state == PS_LANDING_LAG || state == PS_LAND) && !has_hit_player) //cue schrodinger's pratland
{
    set_state(PS_PRATLAND);
    loaded_off_uspec = false;
}
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR || attack != saved_state.attack) using_stored_attack = false;

//save move flash
if (save_flash_time > 0) save_flash_time--;

//walljump jump buffer reset cuz there's only wall frames
if (state == PS_WALL_JUMP && state_timer == 0) clear_button_buffer(PC_JUMP_PRESSED);

//after image fix
if(state == PS_WALL_JUMP) uses_afterimage_trail = false;

//rune M stronger load attacks
var runeM = has_rune("M")
with(pHitBox){
	if(runeM && player_id == other && attack == other.attack && other.using_stored_attack){
		if(hitbox_timer == 0){
			damage *= 2;
			kb_value *= 1.5;
			kb_scale *= 1.5;
		}
	}
}

//down taunt song cancel
var other_exists = false;
var lobot = true;
with(oPlayer){
	if(self != other){
		other_exists = true;
		if(get_player_stocks(player) > 0){
			lobot = false;
		}
	}
}
with(oTestPlayer){
	if(self != other){
		other_exists = true;
		lobot = false;
	}
}
if(lobotomy != noone && !lobotomy_victory){
	if(lobot && other_exists && !lobotomy_victory){
		lobotomy_victory = true;
		sound_stop(lobotomy);
	}
    if cur_skin == 1 set_synced_var(player, 420) else set_synced_var(player, 69);
    set_ui_element(UI_WIN_PORTRAIT, sprite_get("real_portrait"));
    set_victory_theme(sound_get("lobotomy_victory"))
} else if(!lobotomy_victory){
    set_synced_var(player, cur_skin);
    set_ui_element(UI_WIN_PORTRAIT, get_synced_var(player) == 1 ? sprite_get("f_portrait") : get_char_info(player, INFO_PORTRAIT));
    set_victory_theme(sound_get("charavictory"));
}
var cur_time = get_gameplay_time();
rainbow_color = make_colour_hsv(5*((cur_time)%52), 225, 225);
if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && lobotomy != noone){
	sound_stop(lobotomy);
	lobotomy = noone;
	lobotomy_timer = 0;
}

//cutscene vfx update
// update afterimage array
var newArray = 0;
for (var i = 0; i < array_length_1d(murder_vfx_array); ++i)
{
    var obj = murder_vfx_array[i];
    if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
}
murder_vfx_array = newArray;

//cutscene hitboxes
with(pHitBox){
	if(player_id == other && attack == AT_FSPECIAL_2){
		if(hitbox_timer == 0 && hbox_num == 1) kb_angle = random_func_2(get_gameplay_time()%200, 360, true);
		for(var i = 0; i < 20; i++){
			can_hit[i] = false;
		}
		if instance_exists(player_id.murder_mode_target) can_hit[player_id.murder_mode_target.player] = !has_hit;
	}
}

//genocide death code
if(genocided && instance_exists(murder_mode_target)){
	create_deathbox(murder_mode_target.x, murder_mode_target.y, 1000, 1000, murder_mode_target.player, true, 0, 2, 2);
	if (murder_mode_target.state == PS_RESPAWN || murder_mode_target.state == PS_DEAD) {
		murder_mode_target = noone;
		genocided = false;
	}
}

with(oPlayer){
    if(self != other && !hitpause){
        genocide_hsp_store = hsp;
        genocide_vsp_store = vsp;
    }
}

//Rune N
var runeN = has_rune("N")
with(oPlayer){
	if(self != other && hit_player_obj == other){
		if runeN && !hitpause && (state == PS_HITSTUN && (state_timer == floor(hitstun) || state_timer == floor(hitstun_full)) || (state == PS_HITSTUN_LAND && state_timer >= 12) || state == PS_TUMBLE){
			set_state(PS_PRATFALL)
			was_parried = true;
			parry_lag = 20;
		}
	}
}

//Rune O
if has_rune("O") && instance_exists(artc_savepoint) && (state == PS_HITSTUN || state == PS_HITSTUN_LAND || state == PS_FLASHED) && !hitpause {
	move_cooldown[AT_DSPECIAL] = 0;
	artc_savepoint.enemy_warp_timer = artc_savepoint.enemy_warp_timer_max;
	artc_savepoint.saved_player = self;
	set_attack(AT_DSPECIAL);
	clear_button_buffer(PC_SPECIAL_PRESSED)
}

//Cringe goofy ah cheaters
if(state == PS_SPAWN && state_timer == 2){
	strong_character = false;
	with oPlayer if self != other{
		var skip = false;
		if !other.juiced_up {
			for(var i = 0; i < array_length(other.sai_urls); i++){
				if url == other.sai_urls[@i] { other.strong_character = true; skip = true; break; }
			}
			if !skip {
				for(var i = 0; i < array_length(other.felix_urls); i++){
					if url == other.felix_urls[@i] { other.strong_character = true; break; }
				}
			}
		}
	}
}

if strong_character && !juiced_up && (attack_down ||attack_pressed) && (special_down || special_pressed) && (shield_down || shield_pressed){
	juiced_up = true;
	user_event(3);
	if state != PS_SPAWN || state == PS_SPAWN && state_timer > 85 sound_play(sound_get("sfx_strong_hit"));
}

if (taunt_down || taunt_pressed) && (special_down || special_pressed) && (shield_down || shield_pressed) {
	var found = false;
	with oPlayer if self != other {
		switch url{ // from goku
		case "2273636433":
		case "1870768156":
		case "1869351026":
		case "2443363942":
		case "2159023588":
		case "1980469422":
			break;
		default:
			if ((
				check_string_for_name(player, "nald") || 
				check_string_for_name(player, "%") || 
				check_string_for_name(player, "sand") || 
				check_string_for_name(player, "psy") || 
				check_string_for_name(player, "ultra") || 
				check_string_for_name(player, "god") || 
				check_string_for_name(player, "boss") || 
				check_string_for_name(player, "ui ") || 
				check_string_for_name(player, "ssg") || 
				check_string_for_name(player, "melee") || 
				check_string_for_name(player, "accurate")
				) && (!check_string_for_name(player, "Sandslash") && !check_string_for_name(player, "Sandshrew"))
				) found = true;
			break;
		}
		for(var i = 0; i < array_length(other.felix_urls); i++){
				print(url == other.felix_urls[@i])
				print(url)
				print(other.felix_urls[@i])
			if url == other.felix_urls[@i] { found = true; break; }
		}
		if other.faq_u_timer <= 0 && found {
			other.cringer_player = get_player_name(player);
			other.cringer_character = get_char_info(player, INFO_STR_NAME);
		}
	}
	if faq_u_timer > 0 found = false;
}

if found {
	faq_u_timer = 1;
	if(cringer_player == "") cringer_player = "you funny, funny casual goofball."
}

if juiced_up && (attack != AT_FSPECIAL || (attack == AT_FSPECIAL && window != 2)) fspec_charge = fspec_max_charge - 1;

var someone_galaxied = false;
with(oPlayer) if self != other && player != other.player {
	if(state == PS_HITSTUN && activated_kill_effect && hit_player_obj == other && get_player_stocks(player) == 1){
		someone_galaxied = true;
		var my_target = self;
	}
}
if(juiced_up && someone_galaxied){
	my_target.hitpause = true;
	my_target.hitstop_full = 100;
	my_target.hitstop = 30;
	with(my_target) destroy_hitboxes();
	x = my_target.x;
	y = my_target.y;
	attack_end();
	destroy_hitboxes();
	state = PS_ATTACK_AIR;
	attack = 49;
	window = 3;
	window_timer = 0;
	hitpause = false;
	hitstop = 0;
	hitstop_full = 0;
	my_target.activated_kill_effect = false;
	set_player_damage(my_target.player, min(50, get_player_damage(my_target.player)));
}

if(faq_u_timer > 0 && self == orig_self){
	suppress_stage_music(0, 1);
	faq_u_timer++;
	with(oPlayer){
		player = other.player;
		hitpause = true;
		hitstop = 6;
		hitstop_full = 100;
		state = PS_PRATFALL;
		if !free y -= 2
	}
	switch(floor(faq_u_timer/240)){
		case 1:
		fucking_message = "Hello " + cringer_player + "."
		break;
		case 2:
		fucking_message = "Chara and I do not approve of your choice of character."
		break;
		case 3:
		fucking_message = cringer_character + "is cringe, OP as hell, annoying, or some combo of those 3."
		break;
		case 4:
		fucking_message = "Don't you ever dare pick this character against me again."
		break;
		case 5:
		fucking_message = "You will regret it..."
		break;
		case 6:
		fucking_message = "Next time, pick a character that's a bit more normal pilled."
		break;
		case 7:
		fucking_message = "Someone who actually is enjoyable to fight against."
		break;
		case 8:
		fucking_message = "So you don't waste both of our time with cheapies like that."
		break;
		case 9:
		fucking_message = "You. Have. Been. Warned."
		break;
		case 10:
		fucking_message = "Goodbye now. >;)"
		break;
	}
}

//murder_vfx_array[array_length_1d(murder_vfx_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, anim_speed:.25, rot:spr_angle, col:colr, timer:0, timerMax:20};

#define check_string_for_name(player, string)

return string_count(string, string_lower(get_char_info(player, INFO_STR_NAME)))

#define check_string_for_dev(player, string)

return string_count(string, string_lower(get_char_info(player, INFO_STR_AUTHOR)))