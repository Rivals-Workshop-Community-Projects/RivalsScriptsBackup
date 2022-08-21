//update.gml
//#region Small Gameplay Code

//Gannoncide
if(!free && ganoncide_preventor_available_flag == false && article_platform_id == noone){
	ganoncide_preventor_available_flag = true // will reset flag on landing
}

if(((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) && fspecial_recovery_enabled_flag == true) || attack != AT_FSPECIAL){
	fspecial_recovery_enabled_flag = false;
}

//Dspecial move cooldown reset
if(!free && djump_given_back_flag == true){
	djump_given_back_flag = false;
}

// Adujust height of hud indicator during Dthrow
if(attack == AT_DTHROW && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	//print("height" + string(window_timer));
	//draw_indicator = false;
	//grabbed_player_obj.draw_indicator = false;
	with(asset_get("oPlayer")){
		draw_indicator = false;
		//print("Player " + string(player) + " Indicator Draw:" + string(draw_indicator) + "/ State timer: " + string(state_timer));
	}
	/* switch(window){
		Old Code
		case 2:
			char_height = 52 + 70;
			grabbed_player_obj.char_height = grabbed_player_obj.char_height + 70;
		break;
		case 5: // Reset
			char_height = 52;
			grabbed_player_obj.char_height = grabbed_player_obj.char_height - 70;
			break;
		default:
			break;
		
	}*/
}

//Dthrow exception for plats so she does not auto land afterwards.
if(attack == AT_DTHROW && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	fall_through_timer = 20;
}
if((attack != AT_FSPECIAL && attack != AT_DSPECIAL_AIR) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	switch(fall_through_timer){
		case 0:
			fall_through = false;
			break;
		default:
			fall_through = true;
			fall_through_timer--;
			break;
	}
}
// Move Eyes VFX on boosted Grab hit
if(instance_exists(hitfx_consume_water_obj)){
	var temp_x = x;
	var temp_y = y;
	with(hitfx_consume_water_obj){
		x = temp_x;
		y = temp_y - 100;
	}
}

if(instance_exists(hitfx_boosted_grab_obj)){
	var opponent_relative_angle = point_direction(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
	var temp_x = x;
	var temp_y = y;
	var temp_spr_dir = spr_dir;
	with(hitfx_boosted_grab_obj){
		x = temp_x;
		y = temp_y - 36;
		draw_angle = opponent_relative_angle;
		switch(temp_spr_dir){
			case 1:
				draw_angle = opponent_relative_angle;
				break;
			default:
				draw_angle = opponent_relative_angle + 180;
				break;
		}
	}
}

//Fspecial Cooldown Indicator
if((move_cooldown[AT_FSPECIAL] == 59 || move_cooldown[AT_DSPECIAL] == 59) 
&& (state != PS_ATTACK_AIR || state =! PS_ATTACK_GROUND)){
    hitfx_cooldown_obj = spawn_hit_fx(x,y,hitfx_cooldown); 
    //sound_play(asset_get("sfx_ori_ustrong_charge"));
}

if(instance_exists(hitfx_cooldown_obj)){
	var temp_x = x;
	var temp_y = y;
	with(hitfx_cooldown_obj){
		x = temp_x;
		y = temp_y - 80;
	}
	hitfx_cooldown_obj.depth = depth - 1;
}

if(move_cooldown[AT_FSPECIAL] == 10 || move_cooldown[AT_DSPECIAL] == 10){
sound_play(asset_get("mfx_flashy_shing"));
white_flash_timer = 10;
}
//#endregion

//#region VFX
// Water Dust for non attack States
if(state_timer == 1){
	switch(state){
		// Spawn Behind Cases
		case PS_WAVELAND:
		case PS_DASH_START:
		case PS_DASH_TURN:
			hitfx_water_dust_obj_1 = spawn_hit_fx(x,y,hitfx_water_dust);
			break;
		// Spawn in Front Cases (not used yet)
		/*case num:
			hitfx_water_dust_obj_1 = spawn_hit_fx(x,y,hitfx_water_dust);
			var spr_dir_player = spr_dir;
			with(hitfx_water_dust_obj_1){
				spr_dir = spr_dir_player * -1;
		}*/
		// Spawn on both sides case
		case PS_JUMPSQUAT:
		case PS_DOUBLE_JUMP:
		case PS_LAND:
		case PS_PRATLAND:
			hitfx_water_dust_obj_1 = spawn_hit_fx(x,y,hitfx_water_dust);
			hitfx_water_dust_obj_2 = spawn_hit_fx(x,y,hitfx_water_dust);
			var spr_dir_player = spr_dir;
			with(hitfx_water_dust_obj_2){
				spr_dir = spr_dir_player * -1;
				}
			break;
		default:
			break;
	}
}

//#endregion

//#endregion

/*
Removing cause the after image code bothers people
//#region After Image Code
if(get_player_color(player) == 25 || get_player_color(player) == 22){ // Amateratsu
if(afterImageTimer = 0) {afterImageTimer = 6;}
//	if (afterImageTimer > 0)
	{
	    afterImage[afterImageTimer-1]={sprite_index:sprite_index,image_index:image_index,x:x,y:y,spr_dir:spr_dir,alpha:10};
	    afterImageTimer--;
	}
	for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0) afterImage[i].alpha--;
//}
//afterImageTimer++;
}
//#endregion
*/

//#endregion

//#region Other character update
with(asset_get("oPlayer")){
	
    if (id != other.id){
		//Decrement_Element_Over_Time();
		Training_Functionality();
		Opponent_Respawn();
		// Cleanse mark on Death
		if(state == PS_RESPAWN){
			status_effect_water = false;
		}
    }	
}

// Code for counting players for Results Screen / Intro
if(state == PS_SPAWN && state_timer == 1)
{
        with(oPlayer)
        {
            other.countPlayers ++;
            if(id != other.id)
                other.enemyObj = id;
        }
}

// Cleanse mark on Death if Daora is killed
	if(state == PS_RESPAWN){
			with(asset_get("oPlayer")){
				status_effect_water = false;
			}
		}
//#endregion
/* Not yet finished
//#region Dialogue Buddy Support

if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Daora"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "We don't have to fight, we could settle this over some tea.",
    "I don't want to hurt you, but I will grapple and shock you into submission.",
    "If it gets to be too much, consider tapping out and I won't shock you any more."]

//  Specific Character Interactions

//  Regular dialogue
    if(otherUrl == "2661141982" && diag != "") //Anglara
    {
        diag = "Your fighting style is very clean. But can you strike me without getting grabbed?";
        diag_index = 2; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

// Klockwurth
//  NRS/3-Part dialogue
    if(otherUrl == "2396817161") //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead. other.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Klock, I'd much prefer you stop trying to be a warrior when you aren't one. You are going to get yourself killed. Let me do the fighting.",
                "I don't care if I die. I am going to bring the fight Loxodont, one shotgun shell at a time.",
                "I will break your legs if it stops you from throwing your life away."]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 4;
                    break;
                case 1: //Second Message
                    other.diag_index = 4;
                    break;
                case 2: //Last Message
                    other.diag_index = 5;
                    break;
            }
        }
    }
}
*/
// Proto
/*
//  Regular dialogue
    if(otherUrl == "" && diag != "") //Change the url into a specific character's
    {
        diag = "Hey, I know you! I will beat you up.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    
//  NRS/3-Part dialogue
    if(otherUrl == url) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Hey, I know you! I will beat you up!",
                "So you left us for someone else, and now you've come back to beat us up?",
                "I-I had to do what was best for all of us, I wished you weren't dragged into this."]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
}

//#endregion
*/

#define Training_Functionality()
{
	if(get_training_cpu_action() != CPU_FIGHT){
		// Respawn in training
		/*
		if(get_player_damage(player) == 0){
		    status_effect_electric = 0;
		    status_effect_water = 0;
		}
		*/
		// Taunt Reset Elements
		if("other_player_id" not in self){exit;}
		if(other_player_id.attack == AT_TAUNT && other_player_id.state == PS_ATTACK_GROUND){
		    status_effect_electric = 0;
		    status_effect_water = 0;
		}
	}
}
#define Opponent_Respawn()
{
	if(state == PS_RESPAWN){
	status_effect_water = false;
	}
}

