//Double jump turns kirb around
if (state_timer == 5 and (state == PS_DOUBLE_JUMP) and (prev_djumps != djumps)) {
    if (right_down and -spr_dir) {
        spr_dir = 1;
        prev_djump = djumps;
        
    } else if (left_down and spr_dir) {
        spr_dir = -1;
        prev_djumps = djumps;
    }
}


if attack = AT_DSPECIAL and state = PS_ATTACK_AIR or state = PS_ATTACK_GROUND  {
	charging = 1
}
else {
	charging = 0
}

abilitygiven = current_ability

if (!free) {
    prev_djumps = 0;
}

//COOLDOWNS
if (move_cooldown[AT_FSPECIAL] > 0) {
    move_cooldown[AT_FSPECIAL] -= 1;
}
if (move_cooldown[AT_DSPECIAL] > 0) {
    move_cooldown[AT_DSPECIAL] -= 1;
}
if (move_cooldown[AT_NSPECIAL_FROG] > 0) {
    move_cooldown[AT_NSPECIAL_FROG] -= 1;
}
if (move_cooldown[AT_NSPECIAL_SYLV] > 0) {
    move_cooldown[AT_NSPECIAL_SYLV] -= 1;
}
if (move_cooldown[AT_NSPECIAL_ORCA] > 0) {
    move_cooldown[AT_NSPECIAL_ORCA] -= 1;
}
if (move_cooldown[AT_NSPECIAL_BIRD] > 0) {
    move_cooldown[AT_NSPECIAL_BIRD] -= 1;
}
if (move_cooldown[AT_NSPECIAL_SHOV] > 0) {
    move_cooldown[AT_NSPECIAL_SHOV] -= 1;
}
if (move_cooldown[AT_NSPECIAL_KRAG] > 0) {
    move_cooldown[AT_NSPECIAL_KRAG] -= 1;
}
if (move_cooldown[AT_NSPECIAL_MAY] > 0) {
    move_cooldown[AT_NSPECIAL_MAY] -= 1;
}
if (move_cooldown[AT_NSPECIAL_ABSA] > 0) {
    move_cooldown[AT_NSPECIAL_ABSA] -= 1;
}
if (move_cooldown[AT_NSPECIAL_MOLL] > 0) {
    move_cooldown[AT_NSPECIAL_MOLL] -= 1;
}
if (move_cooldown[AT_NSPECIAL_ELLI] > 0) {
    move_cooldown[AT_NSPECIAL_ELLI] -= 1;
}
if (move_cooldown[AT_EXTRA_3] > 0) {
    move_cooldown[AT_EXTRA_3] -= 1;
}

if tether_cooldown > 0 {
	tether_cooldown -= 1
}

if (jetcharge == 100) and ((get_gameplay_time() mod 30) > 20) { //Fully charged
	outline_color = [ 100, 100, 255 ];
	}
else {
	if current_ability == 6 and ((get_gameplay_time() mod 30) > 20) { //Fully charged and forsburn flavoured
		outline_color = [ 230, 50, 0 ];
		}
	else {
		if (needlecharge == 3) and ((get_gameplay_time() mod 30) > 20) { //Fully charged and ranno flavoured
			outline_color = [ 182, 244, 48 ];
		}
		else {
			if has_hit_player and 11 > window_timer and attack = AT_NSPECIAL_GUAD and window = 3 {
				outline_color = [ 10, 160, 10 ];
		}
		else {
			outline_color = [ 0, 0, 0 ];
		}
	}
	}
}

//MAGIC COLOUR CODE
if get_player_color(player) = 14 {
	hue+=1 if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(240, 112, 160);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(14,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color


	color_rgb=make_color_rgb(208, 0, 80);
	//make a gamemaker color variable using kirby's default color (feet)
	//hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//kirby's feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(14,1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	}

init_shader();

if taunt_pressed and free and state_cat == SC_AIR_NEUTRAL {
attack = AT_TAUNT
set_attack(AT_TAUNT)
window = 5
window_timer = 0
}

//CLEAR GRABS
if ((attack == AT_NSPECIAL) or (attack == AT_NSPECIAL_ORI)) and (window == 0) and (grabbedid != noone) {
	grabbedid.grabbed = 0
	grabbedid.visible = true
	grabbedid.state = PS_IDLE
	grabbedid.hurtboxID.sprite_index = grabbedid.hurtbox_spr
	grabbedid = noone
}

if (attack == AT_NSPECIAL_ZET) and (window == 0) {
	if get_attack_value(AT_NSPECIAL_ZET,AG_AIR_SPRITE) != ("AT_NSPECIAL_ZETT_CHARGEUP_AIR") {
	reset_attack_value(AT_NSPECIAL_ZET,AG_SPRITE)
	reset_attack_value(AT_NSPECIAL_ZET,AG_AIR_SPRITE)
	}
}

//ABSA
if (absa_timer > 0) {
    absa_timer -=1 
}
if (absa_timer == 1) {
	sound_play(asset_get("sfx_absa_kickhit"))
	create_hitbox( AT_NSPECIAL_ABSA, 3, x, y )
}

//WRASTOR
if place_meeting(x,y,MyPuddle) and MyPuddle.state = 3 {
air_accel = .36;
air_max_speed = 7;
initial_dash_speed = 8.5;
dash_speed = 8.5;
walk_speed = 6.5;
djump_sound = asset_get("sfx_birdflap");
}
if !place_meeting(x,y,MyPuddle) and air_accel = .36  {
air_accel = .25;
air_max_speed = 4.5;
initial_dash_speed = 6;
dash_speed = 6;
walk_speed = 3.25;
djump_sound = sound_get("djump");
}

//ORCANE
if createpuddle == 1 {
	if MyPuddle != noone {
		with MyPuddle {
			state = 1
			coolindex = 0
		}
	}
	MyPuddle = instance_create( puddlex, puddley, "obj_article1" )
	createpuddle = 0
}

//SHOVEL KNIGHT
if skheal == -10 or skheal == -5 {
	take_damage( player, -1, skheal )
	skheal = 0 
}

if (tethering) {
	gravity_speed =.5;
	can_move = true;
	solid = 1;
}

if gameOver() and current_ability != 0 {
	current_ability = 0
	resetcolours = 1
}

if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 5;
    trummelcodecsprite1 = asset_get("empty_sprite");
    trummelcodecsprite2 = asset_get("empty_sprite");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "is that--";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "...";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 2
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "That's Kirby, from Planet";
    trummelcodecline[page,2] = "Popstar. He can copy his ";
    trummelcodecline[page,3] = "foes' abilities! Hm, does";
    trummelcodecline[page,4] = "he seem familiar to you?";
    page++; 

    //Page 3
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "...Nope.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Anyway, he has a pretty";
    trummelcodecline[page,2] = "versatile kit on him.";
    trummelcodecline[page,3] = "We should be cautious ";
    trummelcodecline[page,4] = "around his Jet Crackle.";
    page++; 

    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "Hey, Muno, do you think";
    trummelcodecline[page,2] = "they ever got around to";
    trummelcodecline[page,3] = "adding 'swallowed = 0' to";
    trummelcodecline[page,4] = "his tutorial?";
    page++; 

    //repeat...
}

if resetcolours {
	resetcolours = 0
	newicon = 0
	set_color_profile_slot(1, 0, 107, 215, 252);
	set_color_profile_slot(1, 1, 44, 96, 196);
	set_color_profile_slot(2, 0, 184, 46, 65);
	set_color_profile_slot(2, 1, 42, 42, 42);
	set_color_profile_slot(3, 0, 85, 240, 182);
	set_color_profile_slot(3, 1, 153, 132, 41);
	set_color_profile_slot(4, 0, 150, 150, 150);
	set_color_profile_slot(4, 1, 75, 75, 75);
	set_color_profile_slot(5, 0, 32, 11, 89);
	set_color_profile_slot(5, 1, 209, 0, 106);
	set_color_profile_slot(6, 0, 194, 133, 220);
	set_color_profile_slot(6, 1, 192, 0, 147);
	set_color_profile_slot(7, 0, 143, 70, 56);
	set_color_profile_slot(7, 1, 82, 27, 22);
	set_color_profile_slot(8, 0, 220, 220, 220);
	set_color_profile_slot(8, 1, 120, 120, 120);
	set_color_profile_slot(9, 0, 253, 117, 89);
	set_color_profile_slot(9, 1, 171, 44, 44);
	set_color_profile_slot(10, 0, 229, 195, 156);
	set_color_profile_slot(10, 1, 158, 99, 15);
	set_color_profile_slot(11, 0, 222, 72, 72);
	set_color_profile_slot(11, 1, 109, 194, 83);
	set_color_profile_slot(12, 0, 186, 203, 108);
	set_color_profile_slot(12, 1, 83, 122, 62);
}

//Idle Hat
if wearing_hat == 1 {
    if state != PS_SPAWN && state != PS_IDLE {
        wearing_hat = -1;
        var newfx = spawn_hit_fx(x, y, hit_fx_create(sprite_get("idle_xmas_hat_toss"), 30));
        newfx.depth = depth-1;
    }
} else if wearing_hat == -1 {
    if state == PS_SPAWN {
    wearing_hat = 1;
    }
}


// Ludi
//CLEAR MARK ON DEATH
for (var i = 0; i < 3; i++) {
	if (ds_list_find_value(marked_list, i).state == PS_RESPAWN) {
		ds_list_delete(marked_list, i);
		i = 0;
	}
}

#define gameOver
var stocks = [-1, -1, -1, -1];
var damage = [-1, -1, -1, -1];
with(asset_get("oPlayer")){
    stocks[get_player_team(player)-1] = max(0,stocks[get_player_team(player)-1]);
    damage[get_player_team(player)-1] = max(0,damage[get_player_team(player)-1]);
    stocks[get_player_team(player)-1] += get_player_stocks(player);
    damage[get_player_team(player)-1] += get_player_damage(player);
}
for(var i = 0; i < 4; i++){
    for(var i2 = 0; i2 < 4; i2++){
        if(stocks[i2] == -1){break;}
        if(stocks[i2] == 0 || (get_game_timer() <= 0 && stocks[i] > stocks[i2]) || (get_game_timer() <= 0 && stocks[i] == stocks[i2] && damage[i] < damage[i2])){
            stocks[i2] = 0;
            damage[i2] = 0;
        }
    }
}
var players = 0;
for(var i = 0; i < 4; i++){
    if(stocks[i] > 0){
        players++;
        if(players >= 2){
            return false;
        }
    }
}
return true;
