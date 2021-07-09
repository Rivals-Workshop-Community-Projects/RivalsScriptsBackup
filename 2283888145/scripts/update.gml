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



TRAILER MODE: Disable char_height cooldown thing



STAGE: Desert guitar ruins?



BETA: Hide echo stuff behind user events?



TODO ANIMS

Basic
- Hurts
- Tech
- Respawn plat

Attacks
- DSpecial
- Taunt
- Phone Taunt
- Hurtboxes :pensive:

Article
- Hurt?
- Thundered



DSpecial: Electrifying Beat
- Call upon thunder from the heavens to strike your air guitar.
- The top of the bolt spikes; the guitar when struck creates an electric blast.
- Cast the bolt to a remote location by throwing the air guitar.
- Bolt will ALWAYS successfully strike you (non-remote ver).
- Remote ver: Bolt starts above the guitar still, but continues downward beyond it (after causing the melee blast). Causes phone_arrow_cooldown & makes guitar instantly return.
- If a Power Chord is active, the blast becomes more powerful at the cost of consuming the active Power Chord.



Vanilla: I
Jump: IV
Speed: V
Shield: II
Buster: III
Smash: V7



ECHO
- Name: Cadence? Tempo? Demi? Aria? Clef? Mae? Ronda? Katie?
- Aesthetic Differences
--- Acoustic guitar SFX instead of electric
--- Air guitar replaced with ???
--- Sprite changes obv
- Chord Differences
--- Float	(Pink)   (Peach float + slow fall, regular fast fall)	FSpecial: slow + lasts long
--- Slide	(Lime)   (Almost 0 traction, higher hspeed)				FSpecial: guitar keeps going after hitbox ends
--- Dodge	(Orange) (Better rolls/airdodge, invul at atk start)	FSpecial: huge hitbox OR goes downward
--- Stun	(Cyan)   (Clairen stun on all hits)						FSpecial: stuns for days
--- Reverse (Brown)  (Reversed KB direction on all moves)			FSpecial: boomerangs (like cuphead roundabout)
--- Alternative to Reverse or Dodge: Steal (vampire effect on all moves)
- All 5 have the same downside: constant recoil DoT (or just more dmg taken i guess)

Updated chord list
- Float		(Pink)   (SLOW falling speed, and better air movement)	FSpecial: slow + lasts long
- Slide		(Lime)   (Almost 0 traction, buffed wavedash)			FSpecial: guitar keeps going after hitbox ends
- Dodge		(Orange) (Faster rolls/airdodge, invul at atk start)	FSpecial: huge hitbox OR goes downward
- Stun		(Cyan)   (Clairen stun on all hits)						FSpecial: stuns for days
- Reverse	(Brown)  (Reversed KB direction on all moves)			FSpecial: boomerangs (like cuphead roundabout)				WEAKER KB?


https://github.com/Menace13/RoA-Workshop-Templates/blob/master/Templates/Gimmicks/peach_float.md

or just ask Ruby abt Pomme code



Coda's air guitar is imbued with a mysterious power from another world, allowing him to use stat-altering Power Chords. His sister Tempo uses a replica of the air guitar whose Block Chords, rather than altering stats, add miscellaneous quirks to her moveset. She plays in a minor key, and her held guitar is acoustic, not electric.

Elemental Powers
- POWER CHORDS: Coda can choose between five different Power Chords with NSpecial, which grant him various buffs and per-move effects at the cost of added weaknesses. You can switch even while phone_attacking or taking damage, so think fast!
- AIR GUITAR: Coda can throw his air guitar at foes with FSpecial, and he can use USpecial to bounce off of it for mobility. A charged FSpecial causes the guitar to linger for a longer time.
- ELECTRIFYING BEAT: Coda can summon a bolt of lightning from the skies, channeling it through his air guitar for a powerful blast. Use it after a held FSpecial to remotely smite foes.



EFFECTS

Jump
+ Jump height
+ Air speed
+ Fall speed
+ Gravity
+ FSpecial curves upward
+ USpecial distance
- Weight
- Defense

Speed
+ Ground speed
+ Air speed
+ FSpecial further and faster
+ DAttack distance
- Jump height
- DMG
- KBG

Shield
+ Weight
+ Defense
+ FSpecial can't be hit
+ Parry size
- Movement
- KBG
- DMG

Make it so you can't switch Chords in parry stun?

Buster
+ DMG
+ FSpecial multihits
+ Strongs stun
- KBG
- Defense

Smash
+ KBG
+ FSpecial smaller range but KOs (explodes?)
+ DSpecial whole bolt spikes
- DMG
- Weight



ALT IDEAS
- K.K. Slider



RUNES
- USpecial twice and wraps around screen



Stage: stadium built around wrecked air armada?

Music: Fly Octo Fly / Ebb and Flow?



UI misc things to include in the tips menu
- 3 different narrators: Muno, Trum&Alto, and Otto
- Thing above all the cards
- Sort options: default, by topic, by speaker
- 3 or 4 cards at a time; click to expand
- Implement smooth scrolling with the right stick
- Article representing Alto/Muno for taunt menu?
- Show like 2 lines by default; "A: Read more..."

DUDE, heckin... smartphone themed UI

Tips
- Switch Chords at Unexpected Times (NSpecial)
- Actual chords the Power Chords are based on I IV etc
- FStrong charge hit
- Taunt controls
--- 8 directions for 8 notes in an octave
--- A, B, Jump for 3 octaves of that note
--- Shield for sharps
- Or just tap down+taunt to do the codec thing

*/



var theres_guitar = false;

with obj_article1 if player_id == other.id theres_guitar = true;

if !theres_guitar guitar = instance_create(x, y - 500, "obj_article1"); //make guitar

if phone_cheats[cheat_no_cd]{
	phone_arrow_cooldown = 0;
	can_uspecial_bounce = true;
}

if phone_arrow_cooldown{
	// phone_arrow_cooldown--;
	move_cooldown[AT_FSPECIAL] = 2;
    move_cooldown[AT_FSPECIAL_2] = 2;
    move_cooldown[AT_DSPECIAL] = 2;
    move_cooldown[AT_DSPECIAL_2] = 2;
}



//Refresh guitar bounce

if (!free || state == PS_WALL_JUMP){
	can_uspecial_bounce = true;
}



//Afterimages

if false && !phone.phone_settings[phone.setting_fast_graphics]{

	var hitbox_start = false;
	
	with pHitBox{
		if (player_id == other.id && hitbox_timer == 1 && "already_afterimage" not in self){
			already_afterimage = true;
			hitbox_start = true;
		}
	}
	
	var do_image = false;
	var force_image = false;
	
	switch(chord_active){
		case 1:
			if !echo{
				if (free && vsp < 2) || (phone_attacking && attack == AT_USPECIAL) do_image = true;
			}
			else if free do_image = true;
			break;
		case 2:
			if !echo{
				switch(state){
					case PS_DASH:
					case PS_DASH_START:
					case PS_DASH_TURN:
					case PS_DASH_STOP:
					case PS_WALK:
					case PS_WAVELAND:
						do_image = true;
						break;
					case PS_ATTACK_AIR:
					case PS_ATTACK_GROUND:
						if (attack == AT_DATTACK || attack == AT_USPECIAL) do_image = true;
						break;
				}
				if free && abs(hsp) > 4 do_image = true;
			}
			else{
				if !free && abs(hsp) do_image = true;
			}
			break;
		case 3:
			if !echo{
				if (state_cat == SC_HITSTUN && !hitpause && free) do_image = true;
			}
			else{
				switch(state){
					case PS_AIR_DODGE:
					case PS_WAVELAND:
					case PS_ROLL_FORWARD:
					case PS_ROLL_BACKWARD:
						do_image = true;
					break;
				}
			}
			break;
		case 4:
		case 5:
			switch(state){
				case PS_ATTACK_AIR:
				case PS_ATTACK_GROUND:
					do_image = true;
					break;
			}
	}
	
	if (phone_attacking && attack == AT_NSPECIAL && window == 3) do_image = (image_index == 5) && false;
	
	//if guitar.chord_state == 1 && guitar.chord_state_timer == 2 do_image = true;
	
	if afterimg_timer afterimg_timer--;
	if (hitbox_start || !afterimg_timer || (phone_attacking && attack == AT_USPECIAL && window == 2 && (window_timer == 1 || window_timer == 6 || window_timer == 11))) && do_image{
		afterimg_timer = afterimg_timer_max;
		
		for (i = afterimg_num - 1; i > 0; i--){
		    afterimg_x[i] = afterimg_x[i-1];
		    afterimg_y[i] = afterimg_y[i-1];
		    afterimg_sprite[i] = afterimg_sprite[i-1];
		    afterimg_frame[i] = afterimg_frame[i-1];
		    afterimg_angle[i] = afterimg_angle[i-1];
		    afterimg_dir[i] = afterimg_dir[i-1];
		    afterimg_col[i] = afterimg_col[i-1];
	    	afterimg_time[i] = afterimg_time[i-1];
		}
		
	    afterimg_x[0] = x;
	    afterimg_y[0] = y;
	    afterimg_sprite[0] = sprite_index;
	    afterimg_frame[0] = image_index;
	    afterimg_angle[0] = image_angle
	    afterimg_dir[0] = spr_dir;
	    afterimg_col[0] = chord_color[chord_active];
	    afterimg_time[0] = afterimg_linger;
	    
	    if (phone_attacking && attack == AT_USPECIAL && window == 2){
	    	afterimg_sprite[0] = spr_uspecial;
	    	afterimg_angle[0] = 45 * uspecial_dir + (spr_dir == -1) * 180;
	    	afterimg_y[0] -= 32;
	    }
	}
	
}
	
for (i = 0; i < afterimg_num; i++){
	if afterimg_time[i] afterimg_time[i]--;
}



with guitar{
	if can_transfer && following other.chord_active = chord;
	else other.chord_active = 0;
}
if guitar.chord shown_chord = guitar.chord;

   jump_chord = false;
  speed_chord = false;
 shield_chord = false;
 buster_chord = false;
  smash_chord = false;
  float_chord = false;
  slide_chord = false;
  dodge_chord = false;
   stun_chord = false;
reverse_chord = false;

if echo switch(chord_active){
	case 1:
		float_chord = true;
		break;
	case 2:
		slide_chord = true;
		break;
	case 3:
		dodge_chord = true;
		break;
	case 4:
		stun_chord = true;
		break;
	case 5:
		reverse_chord = true;
		break;
}

else switch(chord_active){
	case 1:
		jump_chord = true;
		break;
	case 2:
		speed_chord = true;
		break;
	case 3:
		shield_chord = true;
		break;
	case 4:
		buster_chord = true;
		break;
	case 5:
		smash_chord = true;
		break;
}



if (chord_active != prev_chord || guitar.chord != guitar.prev_chord){
	
	chord_handler_timer = 5;
}

switch(chord_handler_timer){
	case 5:
		init_shader();
		break;
	case 4:
		walk_speed =			chord_objs[chord_active].walk_speed;
		initial_dash_speed =	chord_objs[chord_active].initial_dash_speed;
		dash_speed =			chord_objs[chord_active].dash_speed;
		moonwalk_accel =		chord_objs[chord_active].moonwalk_accel;
		dash_turn_accel =		chord_objs[chord_active].dash_turn_accel;
		dash_stop_percent =		chord_objs[chord_active].dash_stop_percent;
		ground_friction =		chord_objs[chord_active].ground_friction;
		leave_ground_max =		chord_objs[chord_active].leave_ground_max;
		max_jump_hsp =			chord_objs[chord_active].max_jump_hsp;            
		air_max_speed = 		chord_objs[chord_active].air_max_speed;           
		jump_change =			chord_objs[chord_active].jump_change;               
		air_accel = 			chord_objs[chord_active].air_accel;
		air_friction =			chord_objs[chord_active].air_friction;
		max_fall =				chord_objs[chord_active].max_fall;                 
		fast_fall = 			chord_objs[chord_active].fast_fall;                
		gravity_speed = 		chord_objs[chord_active].gravity_speed;
		jump_speed =			chord_objs[chord_active].jump_speed;
		short_hop_speed =		chord_objs[chord_active].short_hop_speed;
		djump_speed =			chord_objs[chord_active].djump_speed;
		djump_accel =			chord_objs[chord_active].djump_accel;
		djump_accel_end_time =	chord_objs[chord_active].djump_accel_end_time;
		djump_sound =			chord_objs[chord_active].djump_sound;
		walljump_hsp =			chord_objs[chord_active].walljump_hsp;
		walljump_vsp =			chord_objs[chord_active].walljump_vsp;
		wave_land_adj = 		chord_objs[chord_active].wave_land_adj;
		wave_friction = 		chord_objs[chord_active].wave_friction; 
		damage_multiplier = 	chord_objs[chord_active].damage_multiplier;
		launch_multiplier = 	chord_objs[chord_active].launch_multiplier; 
		dtaken_multiplier = 	chord_objs[chord_active].dtaken_multiplier;
		dodge_active_frames = 	chord_objs[chord_active].dodge_active_frames; 
		dodge_recovery_frames = chord_objs[chord_active].dodge_recovery_frames;
		roll_forward_max =		chord_objs[chord_active].roll_forward_max;
		roll_backward_max =		chord_objs[chord_active].roll_backward_max;
		air_dodge_speed =		chord_objs[chord_active].air_dodge_speed;
		techroll_speed =		chord_objs[chord_active].techroll_speed;
		knockback_adj =			chord_objs[chord_active].knockback_adj;
		break;
	case 3:
		reset_hitbox_value(AT_FSPECIAL, 3, HG_EFFECT);
		reset_hitbox_value(AT_FSPECIAL, 3, HG_EXTRA_HITPAUSE);
		
		if guitar.stun_chord{
			set_hitbox_value(AT_FSPECIAL, 3, HG_EFFECT, 11);
			//set_hitbox_value(AT_FSPECIAL, 3, HG_EXTRA_HITPAUSE, 30);
			set_hitbox_value(AT_FSPECIAL, 3, HG_EXTRA_HITPAUSE, 50);		//community patch
		}
		break;
	case 2:
		for (i = 0; i < AT_NSPECIAL; i++){
			if get_num_hitboxes(i) for (var j = 1; j <= get_num_hitboxes(i); j++) if (get_hitbox_value(i, j, HG_HITBOX_TYPE) == 1){
				reset_hitbox_value(i, j, HG_DAMAGE);
				reset_hitbox_value(i, j, HG_KNOCKBACK_SCALING);
				reset_hitbox_value(i, j, HG_VISUAL_EFFECT);
				reset_hitbox_value(i, j, HG_EFFECT);
				reset_hitbox_value(i, j, HG_EXTRA_HITPAUSE);
				reset_hitbox_value(i, j, HG_ANGLE);
				
				set_hitbox_value(i, j, HG_DAMAGE,				round(get_hitbox_value(i, j, HG_DAMAGE) * damage_multiplier));
				set_hitbox_value(i, j, HG_KNOCKBACK_SCALING,	get_hitbox_value(i, j, HG_KNOCKBACK_SCALING) * launch_multiplier);
				
			}
		}
		break;
	case 1:
		for (i = 0; i < AT_NSPECIAL; i++){
			if get_num_hitboxes(i) for (var j = 1; j <= get_num_hitboxes(i); j++) if (get_hitbox_value(i, j, HG_HITBOX_TYPE) == 1){
				if (damage_multiplier > 1 || launch_multiplier > 1) && get_hitbox_value(i, j, HG_KNOCKBACK_SCALING) > 0{
					switch(get_hitbox_value(i, j, HG_VISUAL_EFFECT)){
						case 0:
						case 301:
							set_hitbox_value(i, j, HG_VISUAL_EFFECT, 304);
					}
				}
				if stun_chord && get_hitbox_value(i, j, HG_KNOCKBACK_SCALING) > 0{
					set_hitbox_value(i, j, HG_EFFECT, 11); //LETS FREAKING GO
					// set_hitbox_value(i, j, HG_BASE_HITPAUSE, get_hitbox_value(i, j, HG_BASE_HITPAUSE) * 2); //LETS FREAKING GO
				}
				else if reverse_chord && get_hitbox_value(i, j, HG_KNOCKBACK_SCALING) > 0{
					set_hitbox_value(i, j, HG_ANGLE, get_hitbox_value(i, j, HG_ANGLE) + 180);
					// set_hitbox_value(i, j, HG_TECHABLE, 3);
				}
			}
		}
		break;
}

if chord_handler_timer chord_handler_timer--;

if (state == PS_PARRY && shield_chord){
	if (window == 1) window_timer -= 0.5;
	if (window == 2) window_timer++;
}

if (state == PS_DASH && slide_chord){
	dash_speed += 0.2;
}

else{
	dash_speed = chord_objs[chord_active].dash_speed;
}

if (state == PS_AIR_DODGE && dodge_chord){
	if state_timer == 13{
		hsp_dodge = hsp;
		vsp_dodge = vsp;
	}
	if state_timer == 14{
		set_state(PS_IDLE_AIR);
		hurtboxID.sprite_index = hurtbox_spr;
		has_airdodge = false;
		hsp = hsp_dodge;
		vsp = vsp_dodge;
	}
}



//Chord menu: activation

var allowed_state = (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL || state == PS_DASH || state == PS_DASH_START || ((state == PS_WALL_JUMP || state == PS_WALL_TECH) && image_index > 1));

var allowed_state_2 = false; //(state == PS_AIR_DODGE && image_index > 3);

if ((allowed_state || allowed_state_2) && state != PS_RESPAWN && state != PS_JUMPSQUAT && !((state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP) && state_timer == 0) && chord_menu_state == clamp(chord_menu_state, 1, 2)){
    set_attack(AT_NSPECIAL);
}

if (special_pressed && joy_pad_idle && !chord_menu_state && !(phone_attacking && (attack == AT_TAUNT || attack == AT_FSPECIAL || attack == AT_DSPECIAL)) && phone.state != 2 && !was_parried /* && !(phone_attacking && state_timer < 10 && (attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL))*/ ){
    clear_button_buffer(PC_SPECIAL_PRESSED);
    chord_menu_state = 1;
    if reverse_chord && !hitpause && !(state_cat == SC_HITSTUN){
    	//if vsp == fast_fall guitar.chord_juice -= 60;
    	if vsp == fast_fall guitar.chord_juice -= 80;		//community patch
    	hsp *= -1;
    	vsp *= -1;
    	old_hsp *= -1;
    	old_vsp *= -1;
    }
}



//Chord menu: logic

if (chord_menu_state < 3){
    chord_linger_x = x;
    chord_linger_y = y;
}

switch(chord_menu_state){
    case 0: //Inactive
    	chord_success = 1;
        stored_dir = -1;
        chord_menu_cursor = 0;
        chord_menu_cursor_prev = 0;
        chord_menu_idle_timer = 0;
        chord_menu_chose_something = false;
        break;
    
    case 1: //Opening
        if (chord_menu_timer == chord_menu_timer_length){
            chord_menu_state++;
            chord_menu_timer = 0;
        }
        if (chord_menu_timer == 1){
            chord_menu_cursor = 0;
        }
        
        if (state_timer == 1){
        	sound_play(sfx_guitar_ready);
        }
        
        var threshold = chord_angle_range / 2;
        for (var i = 1; i <= num_chords; i++){
            if (!joy_pad_idle && abs(angle_difference(joy_dir, chord_menu_angle[i])) < threshold){
                chord_menu_cursor = i;
                chord_menu_test[i] = 1;
            }
            else chord_menu_test[i] = 0;
        }
            
        chord_menu_cursor_prev = chord_menu_cursor;
        
        if !guitar.following && distance_to_object(guitar) > 32{
        	chord_menu_state = 0;
        }
        
        break;
        
    case 2: //Active
        if special_down{
            var threshold = chord_angle_range / 2;
            for (var i = 1; i <= num_chords; i++){
                if (!joy_pad_idle && abs(angle_difference(joy_dir, chord_menu_angle[i])) < threshold){
                    chord_menu_cursor = i;
                    chord_menu_test[i] = 1;
                }
                else chord_menu_test[i] = 0;
            }
            
            if joy_pad_idle chord_menu_idle_timer++;
            else chord_menu_idle_timer = 0;
            
            if (chord_menu_idle_timer >= 10) chord_menu_cursor = 0;
            
            if (chord_menu_cursor_prev != chord_menu_cursor){
                sound_play(asset_get("mfx_hover"));
                chord_menu_cursor_timer = 0;
            }
            
            chord_menu_cursor_prev = chord_menu_cursor;
        }
        else{
            chord_menu_state++;
            chord_menu_timer = 0;
        }
        
        if (special_pressed && guitar.chord && !chord_menu_chose_something) && phone_cheats[cheat_infinite_chords]{
            guitar.chord_state_timer = -1;
            // sound_play(asset_get("mfx_confirm"));
            chordPlay(chord_notes[0], 1, 1);
            clear_button_buffer(PC_SPECIAL_PRESSED);
        }
        
        chord_menu_cursor_timer++;
        break;
        
    case 3: //Closing
        if (chord_menu_timer == 1){
            chordPick(chord_menu_cursor);
        }
        if (chord_menu_timer == chord_menu_timer_length){
            chord_menu_state = 0;
            chord_menu_timer = 0;
        }
        
        if (special_pressed && joy_pad_idle && guitar.chord && !chord_menu_chose_something) && phone_cheats[cheat_infinite_chords]{
            guitar.chord_state_timer = -1;
            // sound_play(asset_get("mfx_confirm"));
            chordPlay(chord_notes[0], 1, 1);
            clear_button_buffer(PC_SPECIAL_PRESSED);
        }
        break;
}

if chord_menu_state{
    chord_menu_timer++;
    if (guitar.state != 1){
        guitar.buffered_state = 1;
    }
    if (state_cat != SC_HITSTUN && state != PS_AIR_DODGE){
    	vsp = min(vsp, 5);
		hsp = clamp(hsp, -5, 5);
    }
}



//Chord flourish

if (chord_active && chord_active != prev_chord){
	var vfx = spawn_hit_fx(x, y, vfx_chord_flourish);
	vfx.coda_follow = true;
	vfx.coda_owner = id;
	vfx.coda_offset = !(phone_attacking && attack == AT_NSPECIAL && window == 3) * -6 * spr_dir;
}



//Play single notes on certain attacks

var play_window = 0;

if phone_attacking switch(attack){
	case AT_DTILT:
	case AT_USPECIAL:
	case AT_DSPECIAL:
	case AT_DSPECIAL_2:
		play_window = 1;
		break;
	case AT_DSTRONG:
	case AT_USTRONG:
		play_window = 2;
		break;
	case AT_UAIR:
	case AT_FSTRONG:
	case AT_FSPECIAL:
	case AT_FSPECIAL_2:
		play_window = 3;
		break;
	case AT_JAB:
		play_window = 4;
		break;
}

if play_window && window == play_window && window_timer == window_end - 1{
	chordPlay(chord_notes[chord_active], 0, 1);
}
















with (hit_fx_obj) if ("coda_follow" in self && coda_owner == other){
    x = other.x;
    if ("coda_offset" in self) x += coda_offset;
    y = other.y;
}



//Chords: update prev chord

prev_chord = chord_active;



#define chordPick(choice)

if choice && !guitar.chord_cooldown[choice] && choice != guitar.chord{
    if !guitar.chord guitar.chord_state_timer = -1;
    guitar.chord = choice;
    with guitar chord_juice = chord_juice_max;
    // sound_play(asset_get("mfx_confirm"));
    chordPlay(chord_notes[choice], true, true);
    chord_menu_chose_something = true;
    /*var chord_fx = spawn_hit_fx(round(x + lengthdir_x(chord_menu_distance, chord_menu_angle[choice])), round(y + lengthdir_y(chord_menu_distance, chord_menu_angle[choice]) - char_height / 2), vfx_chord_flash);
    chord_fx.i_am_chord_menu = true;
    chord_fx.spr_dir = 1;
    chord_fx.image_blend = chord_color[choice];*/
    chord_success = true;
    
    var valid_window = get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !was_parried;
    
    if (attack == AT_USPECIAL && !(uspecial_cancel && free && window == 3)) valid_window = false;
    
    if (attack == AT_NSPECIAL && window > 2) valid_window = true;
    
    if (attacking && valid_window && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) * (!has_hit && get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) ? 1.5 : 1) - 20){
    	attack_end();
    	set_attack(AT_NSPECIAL);
    	window = 3;
    }
    
    if (state == PS_LANDING_LAG){
    	set_attack(AT_NSPECIAL);
    	window = 3;
    }
}
else{
    sound_play(asset_get("mfx_back"));
    chord_success = false;
}



#define chordPlay(notes, all_notes, reset)

if !is_array(notes) notes = [notes];

var len = array_length_1d(notes);

var random = clamp(random_func(20, len, true), 0, len - 1);

if reset{
	note_oct = -1;
	note_sca = 1;
	note_key = 0;
	note_sfx = sfx_guitar_note;
}

for (i = 0; i < len; i++){
	if (i == random || all_notes){
		note_not = notes[i];
		user_event(1);
	}
}






