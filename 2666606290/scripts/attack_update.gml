//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}




// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	
	//CROUCHDASH
	case AT_EXTRA_1:
	
	



		

	
		if tapf==2 && window==2{
			window_timer = -1;
			tapf=0;
			attack_end();
			set_state(PS_DASH_START);
			clear_button_buffer( PC_ATTACK_PRESSED );
			clear_button_buffer( PC_DOWN_STICK_PRESSED );
	        clear_button_buffer( PC_DOWN_STRONG_PRESSED );
			clear_button_buffer( PC_STRONG_PRESSED );
		}
		
		if window==2 && window_timer==11{
			attack_end();
			set_state(PS_CROUCH);
		}
		
			if strong_pressed && (!down_strong_down && !up_strong_down && !left_strong_down && !right_strong_down){
				
		        if (electrified){
		        set_hitbox_value(AT_USTRONG_2, 1, HG_EFFECT, 11);
		        elec_vfx = true;
		        }
		        else
		        set_hitbox_value(AT_USTRONG_2, 1, HG_EFFECT, 0);
				
				if (!no_drain && electrified) elec_charge -= elec_drain;{
				set_attack(AT_USTRONG_2);
				}
			}
			
			if attack_pressed{
		
				if (electrified){
		        set_hitbox_value(AT_FSTRONG_2, 1, HG_EFFECT, 11);
		        elec_vfx = true;
		        }
		        else
		        set_hitbox_value(AT_FSTRONG_2, 1, HG_EFFECT, 0);
				
				if (!no_drain && electrified) elec_charge -= elec_drain;
				set_attack(AT_FSTRONG_2);
			}
			
			if special_pressed{
				set_attack(AT_DSTRONG_2);
			}
			

		
		break;
	
	case AT_JAB:
		was_parried = false; // easy method for single-hit jabs
		if (window == 6 && window_timer == 1) && electrified{
			elec_charge -= elec_drain;
			electrified = false;
		}
	case AT_FTILT:
	case AT_DTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		break;
	case AT_UTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash", -spr_dir]);
		}
		break;
	case AT_FSTRONG:
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
		}
		break;
	case AT_USTRONG:
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;
	
	
	
	case AT_NSPECIAL:
	can_fast_fall = false;
	move_cooldown[attack] = 20;
		if (special_down){
			if (window == 3 && window_timer <= 1) && nspec_loops < 4
			{
				nspec_loops++;
				window = 2;
				window_timer = -1;
			}
		}
		
		if (instance_exists( field_obj )){
			
	         if (field_obj.player_touching){
	         	
	         can_attack = true;
	         
		        if (!joy_pad_idle) && (window == 2 || (window == 3 && window_timer > 1)){
	            hsp += lengthdir_x(0.5, joy_dir);
	            vsp += lengthdir_y(0.5, joy_dir);
	            
	            hsp = clamp(hsp, -5, 5);
	            vsp = clamp(vsp, -5, 5);
	            
	            elec_charge -= elec_passivedrain * 2;
		         }
	         }
	         else
	         {
	         	hsp = clamp(hsp, -2, 2);
	            vsp = clamp(vsp, -2, 2);
	         }
		}
		
		else{
			
				hsp = clamp(hsp, -2, 2);
	            vsp = clamp(vsp, -2, 2);
		}
		
		
	break;
	
	
	
	case AT_FSPECIAL:
		can_move = false;
		can_fast_fall = false;
		
		if (free){
		
		move_cooldown[AT_FSPECIAL] = 999;
			
		if (window == 1 && window_timer == 1){
		vsp = -2;
		hsp = hsp/2;
		}
		
		if (special_down && window == 1 && window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH)){
			spr_dir = -spr_dir;
		}
		
		}
		break;
	
	
	
	case AT_USPECIAL:
	can_wall_jump = true;
		

		break;
	
	
	
	case AT_DSPECIAL:
		can_fast_fall = false;
		can_move = false;
		
		if !(instance_exists( field_obj )){
			if (window == 2 && window_timer == 1) && elec_charge == 100{
			elec_start = true;
			field_obj = instance_create( x, y, "obj_article1" );
			
			}else if (window == 2 && elec_charge < 100){
			window = 3;
			}
			
		}
		else{
			
		if (window == 3 && elec_start)
		window = 4;
		
			
		if (window == 2 && !elec_start)
			window = 3;
		
		}
		
			
		
		break;
	
	case AT_DSTRONG:
	if (window == 3) && (window_timer == 1)
	shake_camera( 2, 3 );
	break;
	
		
	// WGF/EWGF
	
	case AT_FSTRONG_2:
		
		if (window == 1 && window_timer == 1)
		electrified = false;
		
		if ewgf{ 
			if window==1 && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ){
				window = 3;
				window_timer = 0;
			}
			
			if window == 3 && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ){
				window = 5;
				window_timer = 0;
			}
		}
		else if window==2{
			dp = 0;
			otgf = 0;
			if window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ){
				window = 4;
				window_timer = 0;
			}
		}

		else if window==4{
			dp = 0;
			otgf = 0;
			if window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ){
				window = 5;
				window_timer = get_window_value( attack, window, AG_WINDOW_LENGTH );
			}
		}
		
		
		
		if (ewgf && ewgf_real) was_parried = false;
		
		break;
		
		//Hellsweep
	case AT_DSTRONG_2:
		
		if (window==1 && window_timer==1) clear_button_buffer(PC_SPECIAL_PRESSED);
		
		if (special_pressed){
			hellsweep2 = true;
		}
		
		if strong_pressed {
			hellsweepdgf = true;
			omen = false;
		}
		
		
		if window==2 && !hellsweep2{
			if window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ){
				window = 5;
				window_timer = -1;
			}
		}else attack_end();

		if (window == 5 && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH )){
						set_state(PS_CROUCH);
		}

		if window==4{
			hellsweep2 = false;
		}
		//into Dragon Upper
		
		if hellsweepdgf && !hellsweep2 {
			if (window == 3 || window == 5){
			if electrified elec_charge -= elec_drain;
			set_attack(AT_USTRONG_2);
			}
		}
		
		break;
		
	// DU/OTGF
	
	case AT_USTRONG_2:
		if (window == 1 && window_timer == 1)
		electrified = false;
		
		if (window==1) and window_timer == 1{
			invincible = true;
			if !omen
			invince_time = 10;
			else
			invince_time = 20;
			
			if hellsweepdgf
			invincible = false;
		}		
		

		if omen{ 
			if window==1 && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ){
				window = 3;
				window_timer = 0;
			}
			
		}
		else if window==2{
			otgf = 0;
			if window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ){
				window = 3;
				window_timer = get_window_value( attack, window, AG_WINDOW_LENGTH );
			}
		}
		
		if (window==3) and window_timer == 1{
			invincible = true;
			invince_time = 4;
		}
		
		if (omen) was_parried = false;
		
		break;
		
		
		case AT_TAUNT:
		if (window_timer == 15){
		sound_play(asset_get("sfx_blow_heavy2"));
		shake_camera( 4, 6 );
		}
		break;
}

//switch end

// elec drains
if (window == 1 && window_timer == 1){
	switch(attack)
	{
	    case AT_FTILT:
	    case AT_DTILT:
	    case AT_NAIR:
	    case AT_DAIR:
	
	    case AT_FSTRONG:
	    case AT_DSTRONG:
	    case AT_USTRONG:
	    case AT_FAIR:
	         if (electrified)
	            elec_charge -= elec_drain;
	            
	            if (instance_exists( field_obj )){
	            	if (!field_obj.player_touching)
	            	electrified = false;
	            }else
	            electrified = false;
	    break;
	    
	    
	}
}



//cheats
if phone_cheats[CHEAT_TURBO] && has_hit_player{
	
	if (attack_pressed || special_pressed || strong_pressed)attack_end();
	
	if (window == 1 && window_timer < 7){
	clear_button_buffer( PC_ATTACK_PRESSED );
	clear_button_buffer( PC_SPECIAL_PRESSED );
	clear_button_buffer( PC_STRONG_PRESSED );
	}
	
	if (window_timer > 1){
	can_jump = true;
    can_attack = true;
    can_special = true;
    can_strong = true;
    can_ustrong = true;
	}
} 

// if phone_cheats[CHEAT_INSTANT]{
	
	
// 	switch (attack){
// 		case AT_FSTRONG:
// 		case AT_DSTRONG:
// 		case AT_USTRONG:
// 			if (window == 1){
				
// 			clear_button_buffer( PC_ATTACK_PRESSED );
// 			clear_button_buffer( PC_SPECIAL_PRESSED );
// 			clear_button_buffer( PC_STRONG_PRESSED );
			
			
// 			window = 2;
// 			sound_play(get_window_value(attack, window, AG_WINDOW_SFX));
// 			window_timer = get_window_value( attack, window, AG_WINDOW_LENGTH );	
// 			} 
// 		break;
		
// 		default:
// 			if (window == 1){
				
// 			clear_button_buffer( PC_ATTACK_PRESSED );
// 			clear_button_buffer( PC_SPECIAL_PRESSED );
// 			clear_button_buffer( PC_STRONG_PRESSED );
			
// 			sound_play(get_window_value(attack, window, AG_WINDOW_SFX));
// 			window_timer = get_window_value( attack, window, AG_WINDOW_LENGTH );	
// 			} 
// 		break;
		
// 	}
// } 


#define beam_clash_logic

if !beam_clash_buddy.doing_goku_beam{
	beam_clash_buddy.beam_clash_buddy = noone;
	beam_clash_buddy = noone;
}
else{
	if beam_clash_timer >= beam_clash_timer_max{
		var winner = noone;
		if beam_length > beam_clash_buddy.beam_length{
			winner = self;
		}
		if beam_length < beam_clash_buddy.beam_length{
			winner = beam_clash_buddy;
		}
		if winner == self{
			window = 5;
			window_timer = 0;
		}
		else{
			beam_juice = 0;
		}
		if winner == beam_clash_buddy{
			
		}
		else{
			beam_clash_buddy.beam_juice = 0;
		}
	}
	else{
		beam_clash_timer++;
		if special_pressed{
			clear_button_buffer(PC_SPECIAL_PRESSED);
			beam_length += 32;
			beam_clash_buddy.beam_length -= 32;
			beam_juice = min(beam_juice + 20, beam_juice_max);
			beam_clash_buddy.beam_juice = max(beam_clash_buddy.beam_juice - 10, 10);
			sound_play(sfx_dbfz_kame_charge, false, noone, 1, 1 + beam_juice * 0.001);
		}
	}
}



#define spawn_nspecial_hitbox(num)

if hitpause && num == 1 return;

attack_end();

var x1 = 72;
var y1 = -20 + lengthdir_y(32, beam_angle);

switch((abs(lengthdir_y(1, beam_angle)) > abs(lengthdir_y(1, 15))) * sign(lengthdir_y(1, beam_angle))){
	case 1: // down
		x1 = 74;
		y1 = -6;
		break;
	case -1: // up
		x1 = 60;
		y1 = -72;
		break;
}

// x1 += lengthdir_x(beam_length - 32 * !has_hit, beam_angle) * spr_dir;
// y1 += lengthdir_y(beam_length - 32 * !has_hit, beam_angle);

var cur_x = x1;
var cur_y = y1;

set_hitbox_value(attack, num, HG_WIDTH, 64 + 16 * has_hit);
set_hitbox_value(attack, num, HG_HEIGHT, 64 + 16 * has_hit);

var ld_x = lengthdir_x(32, beam_angle) * spr_dir;
var ld_y = lengthdir_y(32, beam_angle);

for (var i = 0; i * 32 < beam_length && i < 32 && cur_x == clamp(cur_x, phone_blastzone_l, phone_blastzone_r); i++){
	if i % 3 == 0 || (i+1) * 32 >= beam_length{
		if (i+1) * 32 >= beam_length{
			set_hitbox_value(attack, num, HG_WIDTH, 64 + 64 * has_hit);
			set_hitbox_value(attack, num, HG_HEIGHT, 64 + 64 * has_hit);
		}
		beam_newest_hbox = create_hitbox(attack, num, round(x + cur_x * spr_dir), round(y + cur_y));
		beam_newest_hbox.x_pos = round(cur_x * spr_dir);
		beam_newest_hbox.y_pos = round(cur_y);
	}
	cur_x += ld_x;
	cur_y += ld_y;
}



#define spawn_base_dust // written by supersonic
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

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
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;


