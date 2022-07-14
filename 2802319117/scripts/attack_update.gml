//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_FSPECIAL && window == 2 || attack == AT_DAIR && window == 2 || attack == AT_USPECIAL && window == 2){
can_wall_jump = true;
}
if (attack == AT_NSPECIAL){
    move_cooldown[AT_NSPECIAL] = 30;
        }
        
if (attack == AT_FSTRONG && window == 2 && window_timer == 1 && !has_hit){
    sound_play(asset_get("sfx_may_whip2"),false,noone,0.6, 1);
       }
    
if (attack == AT_FSPECIAL){
    move_cooldown[AT_FSPECIAL] = 999;
    can_fast_fall = false;
    if (window == 1 && window_timer == 1){
    	white_flash_timer = 10;
    }
}
if (attack == AT_FSPECIAL && window > 2){
	can_attack = true;
	can_jump = true;
	can_special = true;
}
if (attack == AT_DSPECIAL){
    move_cooldown[AT_DSPECIAL] = 20;
    can_fast_fall = false;
}

if (attack == AT_DAIR && window == 3){
    can_shield = true;
    can_jump = true;
}
        
if (attack == AT_DAIR && has_hit){
	move_cooldown[AT_DAIR] = 15;
	
}



if (attack == AT_USPECIAL && window == 2 && window_timer == 19 && !hitpause){
    spawn_hit_fx(x+40*spr_dir,y-80, 145)
        }
        
//throw        
switch(attack){        
        case AT_DSPECIAL:
		hud_offset = 30;
		if(window == 1) 
		{
			reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
		}
		if (window >= 4 && instance_exists(grabbed_player_obj)) 
		{
			
			//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
			if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
			else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

			else 
			{
				grabbed_player_obj.spr_dir = -spr_dir;
				grabbed_player_obj.hitstop = 2;
				grabbed_player_obj.hitpause = true;
				
				if (window_timer <= 1) {
					grabbed_player_relative_x = grabbed_player_obj.x - x;
					grabbed_player_relative_y = grabbed_player_obj.y - y;
				}
				
				//on the first window, pull the opponent into the grab.
				if (window == 4) { 
					var pull_to_x = 60 * spr_dir;
					var pull_to_y = -10;
					
					var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
					grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
					grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
					force_depth = true;
					depth = grabbed_player_obj.depth+1;
				}
				if (window == 5 && window_timer == 1) { 
					grabbed_player_obj = noone; 
					grabbed_player_relative_x = 0;
					grabbed_player_relative_y = 0;
				}
			}
		}
	break;
}

//DOWN AIR GROUND BOUNCE by Charizard6903

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