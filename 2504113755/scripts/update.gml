if get_training_cpu_action() != CPU_FIGHT || trainingMode == 1 {
    user_event(14);
} else {
    if get_training_cpu_action() == CPU_STAND {
        trainingMode = 1
    }
}


if (attack == AT_TAUNT && window == 2 && window_timer == 1) {
	
			//	sssadsads = instance_create(x, y, "obj_article2");

	
	
}

	

if (get_gameplay_time() < 10 && (taunt_down || taunt_pressed) && get_player_color( player ) == 14) {
	
	nes_enabled = true
	
	
}



if (get_player_color( player ) == 25) {
hue_offset+=hue_speed;
init_shader();






}

if ((state == PS_FIRST_JUMP && image_index == 0 ) || (state == PS_WALL_JUMP && image_index == 1) || (state == PS_DOUBLE_JUMP && image_index == 0)) {
	        hud_offset = 20

	
}


//hud edits
if (abs(hud_offset) < 1)  {hud_offset = 0 }

	




#region fspec cooldown

if (!free || state == PS_WALL_JUMP || state == PS_HITSTUN) {
	
//	move_cooldown[AT_FSPECIAL] = 0
	dspecial_not_used_yet_in_air = true
	nair_used = 0
}


#endregion


move_cooldown[AT_NSPECIAL]	 = 100

/// afterimage
// afterimage


if (((attack == AT_FSPECIAL && !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) && !(blink_state_timer <= 12))) {
	
			afterImageTimer = 0

	
}



	


	
if (afterImageTimer > 0 && !hitpause) 
{
	
	
		//	for  (var i = afterImageTimer - 1; i > 0; i--){

    //	if !(attack == AT_FSPECIAL && afterImageTimer < 2) {
    	afterImage[afterImageTimer - 1]={sprite_index:sprite_index,image_index:image_index,x:x,y:y,spr_dir:spr_dir,alpha:10,window:window,window_timer:window_timer};
    afterImageTimer--;
    //	}
    
    
		//	}
    
} else {

if (attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && ((window < 13) || (window == 13 && window_timer < 4))) {



				afterImageTimer = 16

		
		
	
		
	}  else if (blink_state_timer <= blink_start_frame && blink_state_timer > (blink_start_frame - 3))
	
	{afterImageTimer = 8 }
		else if (attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window == 1 && window_timer == 3) {
		
			afterImageTimer = 1
	}
	else {afterImageTimer = 0}
	
}
	
	
	
//	afterImageTimer = torren_speedforce?16:0; //variable = condition ? <expression1 (if true)> : <expression2 (if false)>

for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > -1) afterImage[i].alpha--;




if (abs(hud_offset) < 1)  {hud_offset = 0 }


	











#region changing swords
switch(state)
{

	case PS_PARRY:
	set_skin(-1)
	
	break;
		case PS_AIR_DODGE:
	set_skin(-1)
	
	break;
} 


if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
switch(attack)
{
	case AT_JAB:
	set_skin(-1)
	
	break;
	case AT_DTILT:
	set_skin(-1)

	break;
	case AT_FTILT:
	set_skin(-1)
	
	break;
	case AT_UTILT:
	set_skin(-1)
	
	break;
	
	case AT_DATTACK:
	set_skin(-1)
	
	break;
	case AT_FSTRONG:
	set_skin("two")
	
	break;
	case AT_USTRONG:
	set_skin("two")
	
	break;
	case AT_DSTRONG:
	set_skin("two")
	
	break;
	case AT_NAIR:
	set_skin(-1)
	
	break;
	case AT_FAIR:
	set_skin("two")
	
	break;
	case AT_UAIR:
	set_skin(-1)
	
	break;
	case AT_DAIR:
	set_skin("two")
	
	break;
	case AT_BAIR:
	set_skin(-1)
	
	break;
	case AT_FSPECIAL:
	set_skin(-1)
	
	break;
		case AT_DSPECIAL:
	set_skin(-1)
	
	break;
		case AT_USPECIAL:
	set_skin(-1)
	
	break;
	
} 

}
#endregion

/*
switch(attack)
{
	case "AT_JAB":
	swords_merged = false
	
	break;
	case "AT_DTILT":
	swords_merged = false

	break;
	case "AT_FTILT":
	swords_merged = false
	
	break;
	case "PS_DASH_TURN":
	swords_merged = false
	
	break;
	
	
	
} */





/*
if ((state==PS_WALK || state == PS_WALK_TURN) && (left_down || left_pressed)) {
//	walking_backward_counter -= 1
//	if (walking_backward_counter > 0 && state==PS_WALK ||)
	
	
} else if ((state==PS_WALK || state == PS_WALK_TURN) &&  (right_down || right_pressed)) {
//	walking_backward_counter += 1

}*/

if (state != PS_WALK_TURN) {
	
	direction = spr_dir
}

if (state == PS_WALK || state == PS_WALK_TURN) {
	if ((left_down || left_pressed)) && (direction != 1) {
		if (hsp > -3.2) {
				//		sound_play(asset_get("sfx_clairen_nspecial_grab_success"))

			hsp -= 0.8
		}
		
	} else  if  (right_down || right_pressed) {
			if (hsp < 3.2) {
				//		sound_play(asset_get("sfx_clairen_nspecial_grab_success"))

			hsp += 0.8
		
	}
	
	
}
}

/*
#region FACE OPPONENT

var rival_players=0, rival;
if !noturn {
    with asset_get("oPlayer"){
        if ( player!=other.player and get_player_team(player) != get_player_team(other.player) ) /*and !clone {
            rival=id;
            ++rival_players;
        }
    }
}
if rival_players==1 and !noturn {
    if state==PS_IDLE or state==PS_CROUCH or state==PS_DASH_START or state==PS_WALK or state==PS_WALK_TURN or state==PS_JUMPSQUAT {
        if rival.x>x {
            looking=1
        } else looking=-1
    } else looking=spr_dir;
    
    if ( state==PS_IDLE or state==PS_CROUCH or (state==PS_JUMPSQUAT and prev_state!=PS_DASH_TURN))  {
        spr_dir=looking;
    }
    
} else if (state!=PS_DASH_START and state!=PS_WALK_TURN) looking=spr_dir;

#endregion*/





//has_airdodge = false
//if (left_pressed || right_pressed || left_down || right_down) {
//can_shield = false }  

#region blink


 if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && has_hit_player && attack != AT_FSPECIAL && attack != AT_DSPECIAL && attack != AT_USPECIAL && attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG) {
	
	can_blink = true

	
}  else if (state == PS_TUMBLE || state == PS_WALK || state == PS_WALK_TURN || state == PS_DASH_START || state == PS_DASH || state == PS_DASH_STOP || state == PS_WAVELAND || state == PS_IDLE || state == PS_IDLE_AIR || state == PS_CROUCH || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP || state == PS_LAND) {

	can_blink = true

 

	
} else {


can_blink = false }

if has_rune("A") {
 if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && has_hit && attack != AT_FSPECIAL && attack != AT_DSPECIAL && attack != AT_USPECIAL && attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG) {
	
	can_blink = true

	
} }



if (was_parried) {
	can_blink = false
	
}

 
//move_cooldown[AT_NSPECIAL]	 = 100
if (blink_countdown > 0) {
	blink_countdown -= 1
}


	//for ccancels out of attacks
	if (can_blink && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && joy_pad_idle && !has_cancelled && special_pressed && blink_countdown <= 0) {
	blink_state_timer = 0
	has_cancelled = true
		
	}
		






if (blink_state_timer <= (blink_start_frame + 7)) {
	

	if (blink_state_timer < blink_start_frame) {
		
	if (blink_state_timer == 0) {
		blink_hsp = 0
	blink_vsp = 0
return_airdodge = false
	}
	
	if (abs(blink_hsp) < abs(hsp)) {
		
			blink_hsp = hsp
	}
	if (abs(blink_vsp) < abs(vsp)) {
		
			blink_vsp = clamp(vsp, -10, 10)
			if state == PS_WALL_JUMP {
				
							blink_vsp = clamp(vsp, -7, 10)

				
			}
			
			
			
	}
		
		
		
			if (hitpause) {
	
		blink_hsp = old_hsp
		blink_vsp = old_vsp
	
			}
			
			
			

		if (blink_state_timer == (blink_start_frame - 1)) {
			sound_play(asset_get("sfx_clairen_nspecial_grab_success"))
				//		sound_play(asset_get("sfx_absa_singlezap1"))

			//	 

			nova_clone = instance_create(x, y, "obj_article2");
		}
		
	}
	else if (blink_state_timer >= (blink_start_frame) && blink_state_timer <= (blink_start_frame + 7)) {
		
		        destroy_hitboxes()
state_timer -= 1
		if (has_airdodge) {
			
			has_airdodge = false
			return_airdodge = true
		}
		if (blink_state_timer < (blink_start_frame + 7)) {
		hsp = blink_hsp*3
		vsp = blink_vsp*3 }
		can_move = false
	//	can_jump = false
		can_attack = false
		can_special = false
		can_shield = false
		can_wall_jump = false
		
		
	}  if (blink_state_timer == (blink_start_frame + 7)) {
		hsp = blink_hsp
		vsp = blink_vsp
			if (return_airdodge = true) {
				
				has_airdodge = true
			}
		
	}
	//only goes to teleport if NOT in hitpause
	if (hitpause && blink_state_timer < (blink_start_frame - 1)) {
	blink_state_timer = (blink_start_frame - 3) } else  {	blink_state_timer += 1 }
	
	
	blink_countdown = 50 //sorry suckas!
	
	//cancels blinking if press special
/*if (can_blink == false && blink_state_timer < 5) {
	
	blink_state_timer = 20
	blink_hsp = 0
	blink_vsp = 0
	if (blink_state_timer >= 5 && blink_state_timer < 12) {
		
		hsp = blink_hsp
		vsp = blink_vsp
			
	
	
}

	
	
}*/
	
}






#endregion






	with (hit_fx_obj) if ( player_id == other.id) {
		
	depth = -10
	}




#define set_skin(skin)
///Sets the active skin. You can supply a name or an index.
var obj = (object_index != oPlayer && object_index != oTestPlayer) ? player_id : id;
with obj {
    if (is_string(argument[0])) {
        //_ssnksprites.skin_active = array_find_index(_ssnksprites.skins,skin);
        var sskin = -1;
        for (var i = 0; i < array_length(_ssnksprites.skins);i++) {
            if _ssnksprites.skins[i][0] == skin || _ssnksprites.skins[i][0] == (_ssnksprites.skins[i][1]?"_"+skin:skin+"_") {
                sskin = i;
                break;
            }
        }
        if sskin != -1 _ssnksprites.skin_active = sskin;
        else print(`Skin ${skin} not found.`);
    } else if (is_number(argument[0])) {
        
        if (_ssnksprites.skin_active >= array_length(_ssnksprites.skins)) print(`${skin} is out of bounds of the skin array. [0..${array_length(_ssnksprites.skins)-1}] inclusive. (-1 to disable skin.)`);
        else _ssnksprites.skin_active = skin;
    }
}



