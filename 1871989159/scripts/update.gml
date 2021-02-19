// Butts
//set_view_position(x,y-40)

if wearing_hat == 1 {
	if state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE {
		wearing_hat = -1;
		var newfx = spawn_hit_fx(x, y, fx_sprites[9]);
		newfx.depth = depth-1;
	}
} else if wearing_hat == -1 {
	if state == PS_RESPAWN or state == PS_SPAWN {
	wearing_hat = 1;
	}
}

	if (!(state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) or !(attack == AT_FSTRONG or attack == AT_USTRONG or attack == AT_DSTRONG) or hitpause) && instance_exists(bombins) { //Letting go
	bombins.hsp = -1*spr_dir
	bombins.vsp = -2;
	bombins.hand = 0;
	bombins = noone;

}
//set_color_profile_slot(4,5,random_func(0,255,true),random_func(1,255,true),random_func(2,255,true));
//set_color_profile_slot(4,2,random_func(0,255,true),random_func(1,255,true),random_func(2,255,true));




if attack == AT_NSPECIAL && (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && window < 3 {
	menualpha = min(menualpha+0.1,1)
} else {
	menualpha = max(menualpha-0.1,-1)
}
if menualpha > 0 menuimage = (menuimage+0.25) mod 4

if attack != AT_FSPECIAL or !(state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) {flarex = 0; flarey = -54;}

if get_player_color(player) == 10 {

var seccol = make_colour_hsv(random_func((floor(x)+state_timer) mod 25,360,1),180,255)
var secR = colour_get_red(seccol)
var secG = colour_get_green(seccol)
var secB = colour_get_blue(seccol)

//set_color_profile_slot(10, 0, 200+floor(secR*0.2), 200+floor(secG*0.2), 200+floor(secB*0.2)); //PURPLE FUR

//set_color_profile_slot(10, 1, floor(secR*0.2), floor(secG*0.2), floor(secB*0.2)); //TAN FUR
set_color_profile_slot(10, 2, secR, secG, secB); //RED CLOTH
set_color_profile_slot(10, 3, floor(secR*0.5), floor(secG*0.5), floor(secB*0.5)); //SHIRT
set_color_profile_slot(10, 5, secR, secG, secB); //EMBERS
//sound_play(asset_get("sfx_birdflap"));
}

if state == PS_ATTACK_AIR && state_timer == 0 && taunt_down  == aerial_strong_toggle {

	if up_strong_pressed set_attack(AT_USTRONG);
	if left_strong_pressed {set_attack(AT_FSTRONG); spr_dir = -1}
	if right_strong_pressed {set_attack(AT_FSTRONG); spr_dir = 1}
	if down_strong_pressed set_attack(AT_DSTRONG);
}
var smokesprite =	fx_sprites[0];
var newmollosmoke;
with (oPlayer) {
	
		if mollosmoke > 0 && mollosmokeplayer == other.id {
			mollosmoke--;
			if floor(mollosmoke) mod 8 == 1 {
			
				with (other) {
					newmollosmoke = spawn_hit_fx(other.bbox_left+random_func(0,other.bbox_right-other.bbox_left,1),other.bbox_top+random_func(1,other.bbox_bottom-other.bbox_top,1),smokesprite);
					newmollosmoke.depth = other.depth-1;
				}

			}
			if state == PS_DEAD or state == PS_RESPAWN mollosmoke = 0;
		}
		
		if molloflashbang > 0 && molloflashplayer == other.player {if state_cat == SC_HITSTUN && hitstop <= hitstop_full-2 {
			molloflashbang--;
			hitstop++;
		}
		} 
		else if molloflashplayer == other.player {molloflashbang -= (molloflashbang > -15)}
}


djump_speed = djumps >= 1 ? djump_speed_B : djump_speed_A;
djump_sound = djumps >= 1 ? djump_sound_B : djump_sound_A;
double_jump_time = djumps > 1 ? double_jump_time_B : double_jump_time_A;

//Trummel code
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 7;
    trummelcodecsprite1 = sprite_get("trummel");
    trummelcodecsprite2 = sprite_get("X");

    //Page 0
    trummelcodecspeaker[0] = 1;
    trummelcodecexpression[0] = 2;

    trummelcodecline[0,1] = "That's...is that a moth?";
    trummelcodecline[0,2] = "He seems angry. Not";
    trummelcodecline[0,3] = "sure what his deal is.";
	trummelcodecline[0,4] = "";

    //Page 1
    trummelcodecspeaker[1] = 3;
    trummelcodecexpression[1] = 0;

    trummelcodecline[1,1] = "'Ey, ?#!& off, ya floaty";
    trummelcodecline[1,2] = "vape cloud.";
	trummelcodecline[1,3] = "";
	trummelcodecline[1,4] = "";

    //Page 2
    trummelcodecspeaker[2] = 1;
    trummelcodecexpression[2] = 1;

    trummelcodecline[2,1] = "OH! Okay, that's Mollo!";
    trummelcodecline[2,2] = "Not the most prolific,";
    trummelcodecline[2,3] = "but he's still dangerous";
    trummelcodecline[2,4] = "with his bombs.";
	
	//Page 3
    trummelcodecspeaker[3] = 1;
    trummelcodecexpression[3] = 0;

    trummelcodecline[3,1] = "Careful when he pulls out";
    trummelcodecline[3,2] = "his flaregun. That thing";
    trummelcodecline[3,3] = "is modified to explode";
    trummelcodecline[3,4] = "bombs it hits.";
	
	//Page 4
    trummelcodecspeaker[4] = 1;
    trummelcodecexpression[4] = 3;

    trummelcodecline[4,1] = "His recovery game's";
    trummelcodecline[4,2] = "terrible, though. Just";
    trummelcodecline[4,3] = "shove him off ASAP and";
	trummelcodecline[4,4] = "we should be fine.";
	
	//Page 5
    trummelcodecspeaker[5] = 3
    trummelcodecexpression[5] = 1;

    trummelcodecline[5,1] = "...How d'ya know so much";
    trummelcodecline[5,2] = "about me? That's more";
    trummelcodecline[5,3] = "than the cop scanner's";
    trummelcodecline[5,4] = "ever figured out.";

	
	//Page 7
    trummelcodecspeaker[6] = 1
    trummelcodecexpression[6] = 1;

    trummelcodecline[6,1] = "It's just what I love";
	trummelcodecline[6,2] = "doing!";
	trummelcodecline[6,3] = "";
	trummelcodecline[6,4] = "";
	
	//Page 7
    trummelcodecspeaker[7] = 3
    trummelcodecexpression[7] = 0;

    trummelcodecline[7,1] = "We'll see 'bout that.";
	trummelcodecline[7,2] = "";
	trummelcodecline[7,3] = "";
	trummelcodecline[7,4] = "";
}
/*
sneakycollide = instance_position(x,y+4,all)
if sneakycollide != noone sneakycollide = "h! "+string(sneakycollide.object_index)