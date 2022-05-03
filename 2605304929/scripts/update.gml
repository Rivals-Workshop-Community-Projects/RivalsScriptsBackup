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
if(attack == AT_DTHROW && window_timer == 1 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	switch(window){
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
	}
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

//#region Color Selector
if(state == PS_SPAWN){
	if(get_player_color(player) == 30){
		var strong_stick_down = left_strong_down || right_strong_down || up_strong_down || down_strong_down || strong_down;
		color_picker_alt_index = attack_down + special_down*2 + (strong_stick_down)*4 + jump_down*8 + shield_down*16 + taunt_down*32;
		//print(state_timer)
		//print(alt_index);
		if(state_timer <= 80){Color_Select(get_player_color(player),color_picker_alt_index);}
		if(state_timer == 60){ white_flash_timer = 20;}
		if(state_timer == 100){init_shader();}
	}
}

//#endregion

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

/*
if(get_player_color(player) == 30 && (attack == AT_DTHROW || attack == AT_EXTRA_3) 
&& (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	Color_Select(get_player_color(player),color_picker_alt_index);
	init_shader();
}
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

#define Color_Select(current_alt,alt_index)
{
//attack_down + special_down*2 + strong_down*4 + jump_down*8 + shield_down*16 + taunt_down
//AT = 1 / SP = 2 / STR = 4 / JP = 8 / SD = 16 / TA = 32
//if(get_gameplay_time() == 120){

// Section 1 / Num 1 - 3 / SP / My OCs
// Section 2 / Num 4 - 7 / STR / Early Supporters
// Section 3 / Num 8 - 16 / JP / Brackets + Events
// Section 4 / Num 17 - 32 / SD / Pokemon / WS Characters
// Section 5 / Num 32 - 64 / TA / Other
	switch(alt_index){
		case 0:
			break;
		// OC Section
		case 1: // AT 
			color_select_alt_name = "Sailee"
			// Sailee
			set_color_profile_slot( current_alt, 0, 224, 205, 36 ); //fur
			set_color_profile_slot( current_alt, 1, 250, 229, 40 ); //fur tip
			set_color_profile_slot( current_alt, 2, 255, 240, 105 ); //hair
			set_color_profile_slot( current_alt, 3, 64, 68, 219 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 237, 230, 230 ); //kimono top
			set_color_profile_slot( current_alt, 5, 237, 230, 230 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 237, 230, 230 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 64, 68, 219 ); //kimono accents
			set_article_color_slot(0, 224, 205, 36 ); //fur
			set_article_color_slot(1, 250, 229, 40 ); //fur tip
			set_article_color_slot(2, 255, 240, 105 ); //hair
			set_article_color_slot(3, 64, 68, 219 ); //horns + accents
			set_article_color_slot(4, 237, 230, 230 ); //kimono top
			set_article_color_slot(5, 237, 230, 230 ); //kimono wave
			set_article_color_slot(6, 237, 230, 230 ); //kimono bottom
			set_article_color_slot(7, 64, 68, 219 ); //kimono accents
			break;
			
		case 2: // SP
			
		case 3: // AT + SP
			color_select_alt_name = "Tzukiyo"
			// Tzukiyo
			set_color_profile_slot( current_alt, 0, 242, 242, 242 ); //fur
			set_color_profile_slot( current_alt, 1, 242, 242, 242 ); //fur tip
			set_color_profile_slot( current_alt, 2, 64, 64, 64 ); //hair
			set_color_profile_slot( current_alt, 3, 242, 242, 242 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 242, 242, 242 ); //kimono top
			set_color_profile_slot( current_alt, 5, 64, 64, 64 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 64, 64, 64 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 64, 64, 64 ); //kimono accents
			set_article_color_slot( 0, 242, 242, 242 ); //fur
			set_article_color_slot( 1, 242, 242, 242 ); //fur tip
			set_article_color_slot( 2, 64, 64, 64 ); //hair
			set_article_color_slot( 3, 242, 242, 242 ); //horns + accents
			set_article_color_slot( 4, 242, 242, 242 ); //kimono top
			set_article_color_slot( 5, 64, 64, 64 ); //kimono wave
			set_article_color_slot( 6, 64, 64, 64 ); //kimono bottom
			set_article_color_slot( 7, 64, 64, 64 ); //kimono accents
			break;
			
		// Early Supporters Section
		case 4: // STR 

			break;
			
		case 5: // STR + ATK
			color_select_alt_name = "Tak"
			// Swordie Skunk
			set_color_profile_slot( current_alt, 0, 77, 77, 77 ); //fur
			set_color_profile_slot( current_alt, 1, 252, 252, 255 ); //fur tip
			set_color_profile_slot( current_alt, 2, 132, 79, 176 ); //hair
			set_color_profile_slot( current_alt, 3, 252, 252, 255 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 230, 69, 69 ); //kimono top
			set_color_profile_slot( current_alt, 5, 252, 252, 255 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 77, 77, 77 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 252, 252, 255 ); //kimono accents
			set_article_color_slot( 0, 77, 77, 77 ); //fur
			set_article_color_slot( 1, 252, 252, 255 ); //fur tip
			set_article_color_slot( 2, 132, 79, 176 ); //hair
			set_article_color_slot( 3, 252, 252, 255 ); //horns + accents
			set_article_color_slot( 4, 230, 69, 69 ); //kimono top
			set_article_color_slot( 5, 252, 252, 255 ); //kimono wave
			set_article_color_slot( 6, 77, 77, 77 ); //kimono bottom
			set_article_color_slot( 7, 252, 252, 255 ); //kimono accents
			break;
			
		case 6: // STR + SP
			color_select_alt_name = "U-sa"
			// U-Sa
			set_color_profile_slot( current_alt, 0, 54, 69, 101 ); //fur
			set_color_profile_slot( current_alt, 1, 54, 69, 101 ); //fur tip
			set_color_profile_slot( current_alt, 2, 54, 69, 101 ); //hair
			set_color_profile_slot( current_alt, 3, 102, 200, 255 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 67, 58, 85 ); //kimono top
			set_color_profile_slot( current_alt, 5, 172, 150, 218 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 85, 58, 80 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 111, 91, 151 ); //kimono accents
			set_article_color_slot( 0, 54, 69, 101 ); //fur
			set_article_color_slot( 1, 54, 69, 101 ); //fur tip
			set_article_color_slot( 2, 54, 69, 101 ); //hair
			set_article_color_slot( 3, 102, 200, 255 ); //horns + accents
			set_article_color_slot( 4, 67, 58, 85 ); //kimono top
			set_article_color_slot( 5, 172, 150, 218 ); //kimono wave
			set_article_color_slot( 6, 85, 58, 80 ); //kimono bottom
			set_article_color_slot( 7, 111, 91, 151 ); //kimono accents
			break;
			
		case 7: // STR + SP + ATK 
			color_select_alt_name = "Unbackedcon"
			// Unbackedcon
			set_color_profile_slot( current_alt, 0, 77, 87, 159 ); //fur
			set_color_profile_slot( current_alt, 1, 230, 230, 230 ); //fur tip
			set_color_profile_slot( current_alt, 2, 229, 189, 29 ); //hair
			set_color_profile_slot( current_alt, 3, 36, 194, 26 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 74, 74, 74 ); //kimono top
			set_color_profile_slot( current_alt, 5, 41, 229, 30 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 51, 51, 51 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 201, 201, 201 ); //kimono accents
			set_article_color_slot( 0, 77, 87, 159 ); //fur
			set_article_color_slot( 1, 230, 230, 230 ); //fur tip
			set_article_color_slot( 2, 229, 189, 29 ); //hair
			set_article_color_slot( 3, 36, 194, 26 ); //horns + accents
			set_article_color_slot( 4, 74, 74, 74 ); //kimono top
			set_article_color_slot( 5, 41, 229, 30 ); //kimono wave
			set_article_color_slot( 6, 51, 51, 51 ); //kimono bottom
			set_article_color_slot( 7, 201, 201, 201 ); //kimono accents
			break;
			
		//Brackets + Events
		case 8: // JP8
			color_select_alt_name = "Forbidden Training Lounge"
			// FTL
			set_color_profile_slot( current_alt, 0, 70, 70, 70 ); //fur
			set_color_profile_slot( current_alt, 1, 222, 222, 222 ); //fur tip
			set_color_profile_slot( current_alt, 2, 105, 105, 105 ); //hair
			set_color_profile_slot( current_alt, 3, 0, 224, 217 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 130, 130, 130 ); //kimono top
			set_color_profile_slot( current_alt, 5, 0, 220, 220 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 255, 230, 40 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 0, 220, 220 ); //kimono accents
			set_article_color_slot( 0, 70, 70, 70 ); //fur
			set_article_color_slot( 1, 222, 222, 222 ); //fur tip
			set_article_color_slot( 2, 105, 105, 105 ); //hair
			set_article_color_slot( 3, 0, 224, 217 ); //horns + accents
			set_article_color_slot( 4, 130, 130, 130 ); //kimono top
			set_article_color_slot( 5, 0, 220, 220 ); //kimono wave
			set_article_color_slot( 6, 255, 230, 40 ); //kimono bottom
			set_article_color_slot( 7, 0, 220, 220 ); //kimono accents
			break;

		case 9: //  JP8 + ATK1
			color_select_alt_name = "Blueberry Bout"
			// Blueberry Bout
			set_color_profile_slot( current_alt, 0, 238, 106, 149 ); //fur
			set_color_profile_slot( current_alt, 1, 83, 153, 182 ); //fur tip
			set_color_profile_slot( current_alt, 2, 102, 70, 112 ); //hair
			set_color_profile_slot( current_alt, 3, 115, 214, 147 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 83, 153, 182 ); //kimono top
			set_color_profile_slot( current_alt, 5, 115, 214, 147 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 57, 57, 107 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 115, 214, 147 ); //kimono accents
			set_article_color_slot( 0, 238, 106, 149 ); //fur
			set_article_color_slot( 1, 83, 153, 182 ); //fur tip
			set_article_color_slot( 2, 102, 70, 112 ); //hair
			set_article_color_slot( 3, 115, 214, 147 ); //horns + accents
			set_article_color_slot( 4, 83, 153, 182 ); //kimono top
			set_article_color_slot( 5, 115, 214, 147 ); //kimono wave
			set_article_color_slot( 6, 57, 57, 107 ); //kimono bottom
			set_article_color_slot( 7, 115, 214, 147 ); //kimono accents
			break;
			
		case 10:// JP8 + SP2
			color_select_alt_name = "Workshop Elite"
			// Paste Colors Here
			set_color_profile_slot( current_alt, 0, 232, 236, 231 ); //fur
			set_color_profile_slot( current_alt, 1, 232, 236, 231 ); //fur tip
			set_color_profile_slot( current_alt, 2, 255, 137, 0 ); //hair
			set_color_profile_slot( current_alt, 3, 249, 242, 93 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 89, 87, 90 ); //kimono top
			set_color_profile_slot( current_alt, 5, 255, 234, 5 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 89, 87, 90 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 255, 234, 5 ); //kimono accents
			set_article_color_slot( 0, 232, 236, 231 ); //fur
			set_article_color_slot( 1, 232, 236, 231 ); //fur tip
			set_article_color_slot( 2, 255, 137, 0 ); //hair
			set_article_color_slot( 3, 249, 242, 93 ); //horns + accents
			set_article_color_slot( 4, 89, 87, 90 ); //kimono top
			set_article_color_slot( 5, 255, 234, 5 ); //kimono wave
			set_article_color_slot( 6, 89, 87, 90 ); //kimono bottom
			set_article_color_slot( 7, 255, 234, 5 ); //kimono accents
			break;
			
		case 11: // JP8 + SP2 + ATK1
			color_select_alt_name = "Call of the Abyss"
			// COTA
			set_color_profile_slot( current_alt, 0, 199, 52, 199 ); //fur
			set_color_profile_slot( current_alt, 1, 56, 14, 100 ); //fur tip
			set_color_profile_slot( current_alt, 2, 125, 5, 147 ); //hair
			set_color_profile_slot( current_alt, 3, 222, 215, 215 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 56, 14, 100 ); //kimono top
			set_color_profile_slot( current_alt, 5, 171, 162, 60 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 36, 8, 63 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 171, 162, 58 ); //kimono accents
			set_article_color_slot( 0, 199, 52, 199 ); //fur
			set_article_color_slot( 1, 56, 14, 100 ); //fur tip
			set_article_color_slot( 2, 125, 5, 147 ); //hair
			set_article_color_slot( 3, 222, 215, 215 ); //horns + accents
			set_article_color_slot( 4, 56, 14, 100 ); //kimono top
			set_article_color_slot( 5, 171, 162, 60 ); //kimono wave
			set_article_color_slot( 6, 36, 8, 63 ); //kimono bottom
			set_article_color_slot( 7, 171, 162, 58 ); //kimono accents
			break;
			
		case 12: // JP8 + STR4
			color_select_alt_name = "Heatwave"
			// Heatwave
			set_color_profile_slot( current_alt, 0, 235, 126, 94 ); //fur
			set_color_profile_slot( current_alt, 1, 243, 183, 162 ); //fur tip
			set_color_profile_slot( current_alt, 2, 216, 107, 40 ); //hair
			set_color_profile_slot( current_alt, 3, 223, 216, 31 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 138, 24, 32 ); //kimono top
			set_color_profile_slot( current_alt, 5, 223, 216, 31 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 27, 33, 81 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 255, 255, 255 ); //kimono accents
			set_article_color_slot( 0, 235, 126, 94 ); //fur
			set_article_color_slot( 1, 243, 183, 162 ); //fur tip
			set_article_color_slot( 2, 216, 107, 40 ); //hair
			set_article_color_slot( 3, 223, 216, 31 ); //horns + accents
			set_article_color_slot( 4, 138, 24, 32 ); //kimono top
			set_article_color_slot( 5, 223, 216, 31 ); //kimono wave
			set_article_color_slot( 6, 27, 33, 81 ); //kimono bottom
			set_article_color_slot( 7, 255, 255, 255 ); //kimono accents
			break;
			
		case 13: // JP8 + STR4 + ATK1
		case 14: // JP8 + STR4 + SP2
		case 15: // JP8 + STR4 + SP2 + ATK1
			break;
			
		// Pokemon Section / WS Characters
		case 16:  // SD16
			color_select_alt_name = "Drifblim"
			// Drifblim
			set_color_profile_slot( current_alt, 0, 127, 93, 143 ); //fur
			set_color_profile_slot( current_alt, 1, 186, 163, 204 ); //fur tip
			set_color_profile_slot( current_alt, 2, 233, 234, 245 ); //hair
			set_color_profile_slot( current_alt, 3, 217, 80, 105 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 127, 93, 143 ); //kimono top
			set_color_profile_slot( current_alt, 5, 217, 80, 105 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 155, 129, 179 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 240, 189, 48 ); //kimono accents
			set_article_color_slot( 0, 127, 93, 143 ); //fur
			set_article_color_slot( 1, 186, 163, 204 ); //fur tip
			set_article_color_slot( 2, 233, 234, 245 ); //hair
			set_article_color_slot( 3, 217, 80, 105 ); //horns + accents
			set_article_color_slot( 4, 127, 93, 143 ); //kimono top
			set_article_color_slot( 5, 217, 80, 105 ); //kimono wave
			set_article_color_slot( 6, 155, 129, 179 ); //kimono bottom
			set_article_color_slot( 7, 240, 189, 48 ); //kimono accents
			break;

		case 17: // SD16 + ATK1
			color_select_alt_name = "Delphox"
			// Delphox
			set_color_profile_slot( current_alt, 0, 96, 96, 96 ); //fur
			set_color_profile_slot( current_alt, 1, 244, 247, 250 ); //fur tip
			set_color_profile_slot( current_alt, 2, 221, 80, 46 ); //hair
			set_color_profile_slot( current_alt, 3, 130, 93, 49 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 241, 223, 125 ); //kimono top
			set_color_profile_slot( current_alt, 5, 244, 247, 250 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 169, 74, 56 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 225, 138, 95 ); //kimono accents
			set_article_color_slot( 0, 96, 96, 96 ); //fur
			set_article_color_slot( 1, 244, 247, 250 ); //fur tip
			set_article_color_slot( 2, 221, 80, 46 ); //hair
			set_article_color_slot( 3, 130, 93, 49 ); //horns + accents
			set_article_color_slot( 4, 241, 223, 125 ); //kimono top
			set_article_color_slot( 5, 244, 247, 250 ); //kimono wave
			set_article_color_slot( 6, 169, 74, 56 ); //kimono bottom
			set_article_color_slot( 7, 225, 138, 95 ); //kimono accents
			break;
			
		case 18: // SD16 + SP2
			color_select_alt_name = "Zoroark"
			// Zoroark
			set_color_profile_slot( current_alt, 0, 88, 90, 103 ); //fur
			set_color_profile_slot( current_alt, 1, 88, 90, 103 ); //fur tip
			set_color_profile_slot( current_alt, 2, 191, 50, 52 ); //hair
			set_color_profile_slot( current_alt, 3, 87, 217, 201 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 58, 53, 74 ); //kimono top
			set_color_profile_slot( current_alt, 5, 87, 217, 201 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 88, 90, 103 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 191, 50, 50 ); //kimono accents
			set_article_color_slot( 0, 88, 90, 103 ); //fur
			set_article_color_slot( 1, 88, 90, 103 ); //fur tip
			set_article_color_slot( 2, 191, 50, 52 ); //hair
			set_article_color_slot( 3, 87, 217, 201 ); //horns + accents
			set_article_color_slot( 4, 58, 53, 74 ); //kimono top
			set_article_color_slot( 5, 87, 217, 201 ); //kimono wave
			set_article_color_slot( 6, 88, 90, 103 ); //kimono bottom
			set_article_color_slot( 7, 191, 50, 50 ); //kimono accents
			break;
			
		case 19: // SD16 + SP2 + ATK1
			color_select_alt_name = "Raging Bagon"
			// Raging Bagon
			set_color_profile_slot( current_alt, 0, 54, 175, 255 ); //fur
			set_color_profile_slot( current_alt, 1, 163, 211, 255 ); //fur tip
			set_color_profile_slot( current_alt, 2, 195, 0, 255 ); //hair
			set_color_profile_slot( current_alt, 3, 186, 52, 52 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 35, 126, 176 ); //kimono top
			set_color_profile_slot( current_alt, 5, 0, 61, 122 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 191, 59, 59 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 120, 29, 148 ); //kimono accents
			set_article_color_slot( 0, 54, 175, 255 ); //fur
			set_article_color_slot( 1, 163, 211, 255 ); //fur tip
			set_article_color_slot( 2, 195, 0, 255 ); //hair
			set_article_color_slot( 3, 186, 52, 52 ); //horns + accents
			set_article_color_slot( 4, 35, 126, 176 ); //kimono top
			set_article_color_slot( 5, 0, 61, 122 ); //kimono wave
			set_article_color_slot( 6, 191, 59, 59 ); //kimono bottom
			set_article_color_slot( 7, 120, 29, 148 ); //kimono accents
			break;
			
		case 20: // SD16 + STR4
			color_select_alt_name = "Dazzling"
			// Dazzling
			set_color_profile_slot( current_alt, 0, 132, 81, 47 ); //fur
			set_color_profile_slot( current_alt, 1, 212, 212, 212 ); //fur tip
			set_color_profile_slot( current_alt, 2, 211, 31, 81 ); //hair
			set_color_profile_slot( current_alt, 3, 26, 122, 62 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 199, 1, 18 ); //kimono top
			set_color_profile_slot( current_alt, 5, 240, 242, 244 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 65, 54, 80 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 240, 242, 244 ); //kimono accents
			set_article_color_slot( 0, 132, 81, 47 ); //fur
			set_article_color_slot( 1, 212, 212, 212 ); //fur tip
			set_article_color_slot( 2, 211, 31, 81 ); //hair
			set_article_color_slot( 3, 26, 122, 62 ); //horns + accents
			set_article_color_slot( 4, 199, 1, 18 ); //kimono top
			set_article_color_slot( 5, 240, 242, 244 ); //kimono wave
			set_article_color_slot( 6, 65, 54, 80 ); //kimono bottom
			set_article_color_slot( 7, 240, 242, 244 ); //kimono accents
			break;
		case 21: // SD16 + STR4 + ATK1
		case 22: // SD16 + STR4 + SP2
		case 23: // SD16 + STR4 + SP2 + ATK 1
		case 24: // SD16 + JP8
			color_select_alt_name = "Flake"
			// Flake
			set_color_profile_slot( current_alt, 0, 130, 86, 187 ); //fur
			set_color_profile_slot( current_alt, 1, 238, 235, 194 ); //fur tip
			set_color_profile_slot( current_alt, 2, 165, 205, 234 ); //hair
			set_color_profile_slot( current_alt, 3, 255, 255, 255 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 92, 108, 166 ); //kimono top
			set_color_profile_slot( current_alt, 5, 165, 205, 234 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 92, 108, 166 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 165, 205, 234 ); //kimono accents
			set_article_color_slot( 0, 130, 86, 187 ); //fur
			set_article_color_slot( 1, 238, 235, 194 ); //fur tip
			set_article_color_slot( 2, 165, 205, 234 ); //hair
			set_article_color_slot( 3, 255, 255, 255 ); //horns + accents
			set_article_color_slot( 4, 92, 108, 166 ); //kimono top
			set_article_color_slot( 5, 165, 205, 234 ); //kimono wave
			set_article_color_slot( 6, 92, 108, 166 ); //kimono bottom
			set_article_color_slot( 7, 165, 205, 234 ); //kimono accents
			break;
			
		case 25: // SD16 + JP8 + ATK1
			color_select_alt_name = "R-00"
			// R-00
			set_color_profile_slot( current_alt, 0, 111, 103, 126 ); //fur
			set_color_profile_slot( current_alt, 1, 62, 61, 92 ); //fur tip
			set_color_profile_slot( current_alt, 2, 111, 103, 126 ); //hair
			set_color_profile_slot( current_alt, 3, 254, 255, 0 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 111, 103, 126 ); //kimono top
			set_color_profile_slot( current_alt, 5, 254, 255, 0 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 153, 142, 173 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 204, 190, 232 ); //kimono accents
			set_article_color_slot( 0, 111, 103, 126 ); //fur
			set_article_color_slot( 1, 62, 61, 92 ); //fur tip
			set_article_color_slot( 2, 111, 103, 126 ); //hair
			set_article_color_slot( 3, 254, 255, 0 ); //horns + accents
			set_article_color_slot( 4, 111, 103, 126 ); //kimono top
			set_article_color_slot( 5, 254, 255, 0 ); //kimono wave
			set_article_color_slot( 6, 153, 142, 173 ); //kimono bottom
			set_article_color_slot( 7, 204, 190, 232 ); //kimono accents
			break;
			
		case 26: // SD16 + JP8 + SP2
			color_select_alt_name = "Shiny Emboar"
			// Shiny Emboar
			set_color_profile_slot( current_alt, 0, 255, 146, 51 ); //fur
			set_color_profile_slot( current_alt, 1, 185, 227, 242 ); //fur tip
			set_color_profile_slot( current_alt, 2, 170, 194, 242 ); //hair
			set_color_profile_slot( current_alt, 3, 229, 230, 235 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 76, 72, 76 ); //kimono top
			set_color_profile_slot( current_alt, 5, 86, 185, 243 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 27, 137, 222 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 76, 72, 76 ); //kimono accents
			set_article_color_slot( 0, 255, 146, 51 ); //fur
			set_article_color_slot( 1, 185, 227, 242 ); //fur tip
			set_article_color_slot( 2, 170, 194, 242 ); //hair
			set_article_color_slot( 3, 229, 230, 235 ); //horns + accents
			set_article_color_slot( 4, 76, 72, 76 ); //kimono top
			set_article_color_slot( 5, 86, 185, 243 ); //kimono wave
			set_article_color_slot( 6, 27, 137, 222 ); //kimono bottom
			set_article_color_slot( 7, 76, 72, 76 ); //kimono accents
			break;
			
		case 27: // SD16 + JP8 + SP2 + ATK1
		color_select_alt_name = "Maractus"
			// Maractus
			set_color_profile_slot( current_alt, 0, 136, 200, 123 ); //fur
			set_color_profile_slot( current_alt, 1, 59, 121, 119 ); //fur tip
			set_color_profile_slot( current_alt, 2, 222, 144, 186 ); //hair
			set_color_profile_slot( current_alt, 3, 243, 214, 75 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 133, 198, 120 ); //kimono top
			set_color_profile_slot( current_alt, 5, 243, 214, 75 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 59, 120, 118 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 243, 214, 75 ); //kimono accents
			set_article_color_slot( 0, 136, 200, 123 ); //fur
			set_article_color_slot( 1, 59, 121, 119 ); //fur tip
			set_article_color_slot( 2, 222, 144, 186 ); //hair
			set_article_color_slot( 3, 243, 214, 75 ); //horns + accents
			set_article_color_slot( 4, 133, 198, 120 ); //kimono top
			set_article_color_slot( 5, 243, 214, 75 ); //kimono wave
			set_article_color_slot( 6, 59, 120, 118 ); //kimono bottom
			set_article_color_slot( 7, 243, 214, 75 ); //kimono accents
			break;
			
		case 28: // SD16 + JP8 + STR4
			color_select_alt_name = "Slime"
			// Funny Slime
			set_color_profile_slot( current_alt, 0, 251, 139, 55 ); //fur
			set_color_profile_slot( current_alt, 1, 251, 242, 236 ); //fur tip
			set_color_profile_slot( current_alt, 2, 251, 139, 55 ); //hair
			set_color_profile_slot( current_alt, 3, 71, 180, 73 ); //horns + accents
			set_color_profile_slot( current_alt, 4, 71, 180, 73 ); //kimono top
			set_color_profile_slot( current_alt, 5, 251, 139, 55 ); //kimono wave
			set_color_profile_slot( current_alt, 6, 160, 225, 185 ); //kimono bottom
			set_color_profile_slot( current_alt, 7, 71, 180, 73 ); //kimono accents
			set_article_color_slot( 0, 251, 139, 55 ); //fur
			set_article_color_slot( 1, 251, 242, 236 ); //fur tip
			set_article_color_slot( 2, 251, 139, 55 ); //hair
			set_article_color_slot( 3, 71, 180, 73 ); //horns + accents
			set_article_color_slot( 4, 71, 180, 73 ); //kimono top
			set_article_color_slot( 5, 251, 139, 55 ); //kimono wave
			set_article_color_slot( 6, 160, 225, 185 ); //kimono bottom
			set_article_color_slot( 7, 71, 180, 73 ); //kimono accents
			break;
			
		case 29: // SD16 + JP8 + STR4 + ATK1
			color_select_alt_name = "Ikazuchi"
		// Ikazuchi
			set_color_profile_slot( 30, 0, 236, 185, 154 ); //fur
			set_color_profile_slot( 30, 1, 254, 249, 243 ); //fur tip
			set_color_profile_slot( 30, 2, 7, 1, 3 ); //hair
			set_color_profile_slot( 30, 3, 255, 255, 255 ); //horns + accents
			set_color_profile_slot( 30, 4, 135, 181, 215 ); //kimono top
			set_color_profile_slot( 30, 5, 209, 216, 234 ); //kimono wave
			set_color_profile_slot( 30, 6, 237, 96, 97 ); //kimono bottom
			set_color_profile_slot( 30, 7, 220, 238, 242 ); //kimono accents
			set_article_color_slot( 0, 236, 185, 154 ); //fur
			set_article_color_slot( 1, 254, 249, 243 ); //fur tip
			set_article_color_slot( 2, 7, 1, 3 ); //hair
			set_article_color_slot( 3, 255, 255, 255 ); //horns + accents
			set_article_color_slot( 4, 135, 181, 215 ); //kimono top
			set_article_color_slot( 5, 209, 216, 234 ); //kimono wave
			set_article_color_slot( 6, 237, 96, 97 ); //kimono bottom
			set_article_color_slot( 7, 220, 238, 242 ); //kimono accents
		case 30: // SD16 + JP8 + STR4 + SP2
		case 31: // SD16 + JP8 + STR4 + SP2 + ATK1
		case 32: // TNT32
			break;
		/*
		case #: //Inputs
			color_select_alt_name = ""
			// Paste Colors Here
			
			break;
		*/
		default:
			break;
	}
}

