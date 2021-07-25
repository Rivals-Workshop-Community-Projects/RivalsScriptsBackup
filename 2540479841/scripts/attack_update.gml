//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//ATTACK SOUNDS

if (attack == AT_NAIR){
    if (window == 3) and (window_timer == 1){
        sound_play(sound_get("nair"));
    }
}

//Voices :D

if (attack == AT_FTILT && window == 2 && window_timer == 5){
    sound_play(ftilt_voice);
}
if (attack == AT_UTILT && window == 1 && window_timer == 1){
    sound_play(utilt_voice);
}
if (attack == AT_DTILT && window == 1 && window_timer == 3){
    sound_play(dtilt_voice);
}


if (attack == AT_FSTRONG && window == 2 && window_timer == 2){
    sound_play(fstrong_voice);
}
if (attack == AT_DSTRONG && window == 2 && window_timer == 1){
    sound_play(dstrong_voice);
}

if (attack == AT_NSPECIAL && window == 1 && window_timer == 30){
    sound_play(nspecial_voice);
}
if (attack == AT_FSPECIAL && window == 2 && window_timer == 1){
    sound_play(fspecial_voice);
}
if (attack == AT_USPECIAL && window == 1 && window_timer == 9){
	sound_play(uspecial_voice);
}

//WAFT PHYSICS

if (attack == AT_DSPECIAL){
    can_move = false;
    waft_addition = 0;
    used_up_waft = true;
    move_cooldown[AT_DSPECIAL] = 2;
    
    if (window == 1) && (waft_stage == 2){
        super_armor = true;
    }
    else{
        super_armor = false;
}
}

//DOWN AIR GROUND BOUNCE

if (attack == AT_DAIR) && (dairbounce == true) && ((window == 4)){
    spawn_base_dust(x, y, "n_wavedash", 0);
    spawn_base_dust(x, y, "dash_start", -1)
    spawn_base_dust(x, y, "dash_start", 1)
    sound_play(asset_get("sfx_blow_heavy1")); //PLAY STRONG HIT SOUND
    hitstop = 5; //
    hitstop_full = 5; //
    hitpause = true; //THERE IS HITPAUSE
    window = 4; //GOES INTO THE BOUNCING WINDOW
    window_timer = 1; //FIRST FRAME OF BOUNCING WINDOW
    dairbounce = false; //NO MORE BOUNCE
    shake_camera (7, 3);
}

if (attack == AT_DAIR){
    if window == 1 {dairbounce = true};
    if window > 1{
    	can_move = false;
    }
    if (window == 2 || window == 3 || (window == 1 && window_timer > 10)) && free == false{
    	window = 3;
    	window_timer = 1;
    }
}

//DOWN SMASH BOOM
if (attack == AT_DSTRONG){
    if (window == 2) && (window_timer == 1){
        shake_camera (9, 4);
        spawn_base_dust(x, y, "n_wavedash", 0);
        spawn_base_dust( x + 16, y, "dash_start", -1)
        spawn_base_dust( x - 16, y, "dash_start", 1)
    }
}

//UP SMASH
if (attack == AT_USTRONG){
    can_move = false;
}

//SHOULDER BASH REWORK

if (attack == AT_FSPECIAL){
    can_move = false;
    if window == 1{
        set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
        fspecial_hit = false;
    }
    if window == 2{
        //Sets values for actual attack depending on if you are aerial or grounded
        if free == true{
            shoulderbashair = true;
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -5);
        }
        if free == false{
            shoulderbashair = false;
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 0);
        	}
            //If you initiate shoulder bash in the air, you will use a still pose in the air
        if(shoulderbashair == false){
            if(window_timer == 1){
                spawn_base_dust(x+(32*spr_dir), y, "dash_start", 0);
            }
    }
    }
    if window == 3{
            if shoulderbashair == false && ((jump_pressed) == true || ((tap_jump_pressed ) == true && can_tap_jump())) == true && shoulderbashair == false{
            	window = 4;
            	window_timer = 17;
            	set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
            }
            if free = false{
            	shoulderbashair = false;
            	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
            	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 0);
            }
            }
        }
    if window == 4{
        destroy_hitboxes();
    }
    if window == 6{
        fspecial_hit = false;
        destroy_hitboxes();
    }

if (place_meeting( x+1 * spr_dir, y-1, asset_get("par_block"))) && attack == AT_FSPECIAL && (window == 3 or window == 5){
    fspecial_hit = true;
    spawn_base_dust(x+(24*spr_dir), y-32, "walljump", spr_dir*-1)
    sound_play(asset_get("sfx_blow_heavy1"));
    hitstop = 5;
    hitstop_full = 10;
    hitpause = true;
    shake_camera (7, 3);
}

move_cooldown[AT_FSPECIAL] = 6;

if fspecial_hit == true{
    set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 7);
    window = 6;
    window_timer = 1;
}

//Bull Horn Hammer Physics
if attack == AT_NSPECIAL{
    can_move = false;
    if window == 2{
        super_armor = true;
    }
    else{
        super_armor = false;
    }
}


//Training Mode Waft Advance
if (get_training_cpu_action() != CPU_FIGHT) && attack == AT_TAUNT && window == 1 && window_timer == 1{
	waft_timer = waft_timer + 3600;
}

//New Up Special Starts Here

//attack_update.gml
if (attack == AT_USPECIAL) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    	set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
    }
    if window == 4{
    	can_wall_jump = true;
    }
}

if (attack == AT_USPECIAL_2 && instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		if (window == 2) {
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + uspecial_2_hold;
			grabbed_player_obj.y = y - 8;
			
			if (window_timer == 15){
				uspecial_2_hold = 32 * spr_dir;
			}
			if (window_timer == 3){
				uspecial_2_hold = 0 * spr_dir;
			}
			if (window_timer == 7){
				uspecial_2_hold = -32 * spr_dir;
			}
			if (window_timer == 11){
				uspecial_2_hold = 0 * spr_dir;
			}
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}

if attack == AT_USPECIAL_2 && (place_meeting( x , y-1, asset_get("par_block"))){
	window_timer = 15;
	uspecial_2_hold = 32 * spr_dir;
}

if attack == AT_USPECIAL && (window >= 5){
	can_move = false;
}

//DAir cancelling

/*if attack == AT_DAIR{
	if window == 3{
		can_jump = true;
		can_shield = true;
	}
	else{
		can_jump = false;
		can_shield = false;
	}
}*/

//SupersonicNK's Base Game Dust function

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

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
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;