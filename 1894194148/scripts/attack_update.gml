// AR attack_update
// spaghetti

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (free && attack==AT_USTRONG && window == 1) {
	set_state(PS_IDLE_AIR);
}

if (attack==AT_FAIR && window == 1 && window_timer == 14) {
	if (get_player_color( player ) == 9){
		sound_play( sound_get( "omega_fa" ) );
	}else if (get_player_color( player ) == 7){
		sound_play( sound_get( "ea_fair" ) );
	}else{
		sound_play( sound_get( "SWB1" ) );
	}
}

if (attack==AT_FAIR && window == 2) {
	set_attack_value(AT_FAIR, AG_LANDING_LAG, 10);
}

if (attack==AT_FAIR&&window==1&&window_timer==1) {
	reset_attack_value(AT_FAIR, AG_LANDING_LAG);
}
if (attack==AT_FAIR&&window==3&&window_timer==9) {
	reset_attack_value(AT_FAIR, AG_LANDING_LAG);
}

if (attack==AT_UAIR&&window==1&&window_timer==1) {
	reset_attack_value(AT_UAIR, AG_LANDING_LAG);
}
if (attack==AT_UAIR && has_hit_player) {
	set_attack_value(AT_UAIR, AG_LANDING_LAG, 5);
}

if (attack==AT_BAIR && window == 1 && window_timer == 10) {
	sound_play( sound_get( "SWFS5" ) );
}

if (attack==AT_DSPECIAL && window == 4 && window_timer == 1) {
	sound_stop( sound_get( "scopCD" ) );
	if (get_player_color( player ) == 7){
		sound_play( sound_get( "ea_dsp" ) );
	}else{
		sound_play( sound_get( "lightning" ) );
	}
	outline_color = [ 64, 64, 0 ];
    init_shader();
    outline_color = [ 0, 0, 0 ];
	//HYPOTHETICAL THEORY CODE
		var lg_temp_y = 40;
		var max_temp_y = 320; //prenerf:350
		while ((lg_temp_y < max_temp_y) && (!position_meeting(x,y+lg_temp_y, asset_get ("par_block"))) && (!position_meeting(x,y+lg_temp_y, asset_get("par_jumpthrough")))){
			lg_temp_y++;
		}
		var ARLightn = instance_create(x-(3*(spr_dir)), y+((floor(lg_temp_y/2))-40), "obj_article2"); //y-42
		ARLightn.player_id = id;
		ARLightn.player = player;
		ARLightn.spr_dir = spr_dir;
		ARLightn.dista_y = lg_temp_y + 80;
		ARLightn.r_dista_y= lg_temp_y;
//		ARLightn.add_y = 80;
        }
		
//if (attack==AT_TAUNT && window == 1 && window_timer == 1){
//		draw_sprite_ext(sprite_get("acidraincloud"),1,x,y,1,1,0,c_white,1);
//		sound_play( sound_get( "SWB1" ) );
//}
		
if (attack==AT_DSPECIAL && window == 5 && window_timer == 1) {
	outline_color = [ 48, 48, 0 ];
    init_shader();
    outline_color = [ 0, 0, 0 ];
}

if (attack==AT_DSPECIAL && window == 5 && window_timer == 5) {
    init_shader();
}

if (attack==AT_USTRONG &&free) {
	can_fast_fall = false;
}
	
if (attack==AT_USTRONG && window > 2 && !free &&!has_hit_player && !was_parried) {
    state=PS_LANDING_LAG;
	state_timer=0;
//	hitpause=true;
//	hitstop=5;
//	hitstop_full=5;
//	old_hsp=0;
//	old_vsp=0;
}

if (attack==AT_JAB && window == 11 && !was_parried){// && window_timer == 8) {
    iasa_script();
}

if (attack==AT_DATTACK && window == 4 && window_timer == 1 && has_hit_player && !was_parried) {
	window = 5;
}
if (attack==AT_DTILT && window == 4 && has_hit_player && !was_parried) {
    iasa_script();
}
if (attack==AT_DATTACK && window == 5 && window_timer >= 10 && !shield_pressed && !was_parried) {
//if (attack==AT_DATTACK && window == 6 && !shield_pressed && !was_parried) {
    iasa_script();
	if (!has_hit_player){
		move_cooldown[AT_DATTACK]=3;
	}
}
/*if (attack==AT_FTILT && window == 5 && has_hit_player && !was_parried) {
//    can_move=true;
//    can_jump=true;
	iasa_script();
	move_cooldown[AT_FTILT]=3;
}*/
if (attack==AT_FTILT && window == 6 && window_timer >= 5 && !was_parried) {
//    can_jump=true;
//    can_move=true;
//    can_shield=true;
//    can_special=true;
	iasa_script();
	move_cooldown[AT_FTILT]=3;
}

if (attack==AT_BAIR && window == 5 && !was_parried) {
	iasa_script();
}

/*if (attack==AT_UTILT && window == 5 && !was_parried) {
//    iasa_script();
	can_jump=true;
	can_shield=true;
}*/
if (attack==AT_USPECIAL && window == 8 && !was_parried) {
	can_walljump=true;
}

if (attack == AT_EXTRA_1){
	can_fast_fall = false;
	can_move = false;
}
if (attack == AT_EXTRA_1 && has_hit && window == 3 && window_timer >= 6){
	iasa_script();
}

if ((state==PS_ATTACK_GROUND || state==PS_ATTACK_AIR) && runeM && has_hit_player && special_pressed && !was_parried) {
if (left_down) {
move_cooldown[AT_FSPECIAL] = 0;
set_attack( AT_FSPECIAL );
window=2;
window_timer=0;
spr_dir=-1;
hitpause=false;
sound_play( sound_get( "SE024" ) );
spawn_hit_fx( x, y-floor(char_height/2), 113 );
}
if (right_down) {
move_cooldown[AT_FSPECIAL] = 0;
set_attack( AT_FSPECIAL );
window=2;
window_timer=0;
spr_dir=1;
hitpause=false;
sound_play( sound_get( "SE024" ) );
spawn_hit_fx( x, y-floor(char_height/2), 113 );
}
}

if (attack==AT_DATTACK && shield_pressed && window <= 2) { //>
//	set_state( PS_PRATFALL );
	window = 5;
}

if (runeH && attack==AT_JAB && window==7) {
//	attack = AT_DATTACK;
	set_attack( AT_DATTACK );
	window = 2;
	window_timer = 0;
}

if (attack==AT_FSPECIAL && window == 2 && window_timer == 1 && !hitpause) {
	if (get_player_color( player ) != 7){
		sound_play( sound_get( "SE_00008" ) );
	}else{
		sound_play( sound_get( "ea_ss" ) );
	}
	if (!runeN){
	move_cooldown[AT_FSPECIAL] = 80;
	}
//	fspecial_happened = 1;
	if (!runeC){
	super_armor = true;
	}
//	fsp_armor_happened = 1
	can_move = false;
	can_fast_fall = false;
}

//length is 16
if (attack==AT_FSPECIAL && window == 2 && !hitpause && (window_timer == 2 || window_timer == 8 || window_timer == 15)) {
	var ARafterimage = instance_create(x, y, "obj_article3"); //y-42
	ARafterimage.player_id = id;
	ARafterimage.player = player;
	ARafterimage.spr_dir = spr_dir;
	ARafterimage.ar_a3_type = 1;
}

if (attack==AT_FSPECIAL && window == 3 && window_timer == 4) {
	super_armor = false
//	fsp_armor_happened = 0
}


/*if (attack==AT_FSPECIAL && window == 3 && window_timer == 8) {
	iasa_script();
}
*/

if (runeN && attack==AT_FSPECIAL && window==2 && window_timer>2 && !special_down) {
window=3;
window_timer=0;
move_cooldown[AT_FSPECIAL] = 16;
}

//if (attack==!AT_FSPECIAL && fsp_armor_happened == 1 ) {
//	super_armor = false
//	fsp_armor_happened == 0
//}

//if (!free && attack==!AT_FSPECIAL && fspecial_happened == 1 ) {
//	move_cooldown[AT_FSPECIAL] = 0
//}

if (!free && attack==AT_FSPECIAL && window == 1 && window_timer == 1) {
	vsp = -6;
//	y = y - 16;
}

if (attack==AT_TAUNT && window == 1 && window_timer == 1) {
	if (get_player_color( player ) == 5){
		sound_play( sound_get("ddpinch") );
	}else if (get_player_color( player ) == 6){
		sound_play( sound_get("ETCSE_00001") );
	}else if (get_player_color( player ) == 7){
		sound_play( sound_get("ea_t1") );
	}else{
		sound_play( sound_get("scoptool") );
	}
}

if (attack==AT_TAUNT_2 && window == 3 && window_timer == 4 && !can_wall_cling) {
	iasa_script();
}

if (attack==AT_TAUNT_3 && window == 7 && taunt_down) {
	window = 5;
	window_timer = 0;
}
if (attack==AT_TAUNT_3 && window == 6 && window_timer > 15 && !taunt_down) {
	window = 8;
	window_timer = 0;
}
if (attack==AT_TAUNT_3 && window == 19) {
	set_attack_value(AT_TAUNT_3, AG_NUM_WINDOWS, 9);
	window = 8;
	window_timer = 0;
}

if (attack==AT_DSPECIAL) {
	can_move = false;
	can_fast_fall = false;
	move_cooldown[AT_DSPECIAL] = 10;
}

//if (!free && attack==AT_DSPECIAL && window == 1 && window_timer == 1) {
if (!free && attack==AT_DSPECIAL && window <=3) { //>
	vsp = -10;
	sound_play( asset_get( "sfx_jumpground" ) );
}

//if (!free && attack==AT_DSPECIAL && window == 2) {
//	vsp = -5;
//	sound_play( asset_get( "sfx_jumpground" ) );
//}

//if (free && attack==AT_DSPECIAL && window == 1) {
//	vsp = (vsp / 1.1);
//	hsp = (hsp / 1.1);
//}

//NEEDS POLISH:
//how the heck do i ease thing well
if (free && attack==AT_DSPECIAL && window <= 3) { //>
	vsp = (vsp / 1.1 )//(1 + (window_timer / 10)));
	hsp = (hsp / 1.1 )//(1 + (window_timer / 10)));
}

//referencely stolen from guadua
//study, calculate and adapt
//i assume par is PlayerARticle or something? not mentioned in Available Objects though
//upon further research it seems i missed "asset_get". i am blind
//however, indeed this draws from "asset"... what does it "get"?
//i have to try things out with guadua as well
//seeing yoyogames' position_meeting page, looks like that's in the slot for "obj"
//it's calculating collision with the "gotten" asset, then... however, what IS it?
//let's reverse some more. instance_create indeed creates an article
//what's a ++?
//maybe i'll do some simple stuff for now without
//calculating whatever this means...?
//sorry, i guess. i am a coding noob

//if (attack == AT_DSPECIAL){
//    if (window == 2 && window_timer == 1){
//        var temp_x = 32;
//        var max_temp_x = 96;
//        if (left_down) max_temp_x -= 48*spr_dir;
//        if (right_down) max_temp_x += 48*spr_dir;
//        while (temp_x < max_temp_x
//        && (position_meeting(x+temp_x*spr_dir, y+2, asset_get("par_block"))
//        || position_meeting(x+temp_x*spr_dir, y+2, asset_get("par_jumpthrough")))
//        && !position_meeting(x+temp_x*spr_dir, y-2, asset_get("par_block"))){
//            temp_x++;
//        }
//        var stalk = instance_create(x+temp_x*spr_dir, y, "obj_article1");
//        stalk.player_id = id;
//        stalk.player = player;
//        stalk.spr_dir = spr_dir;
//        
//        move_cooldown[AT_DSPECIAL] = 60;
//        move_cooldown[AT_DSPECIAL_AIR] = 60;
//    }
//}

//>
//monkey see monkey do? that's who i am, i think.
//while writing, i seem to started seeing the vision, though.
//par_jumpthrough may be a platform, it detects platform?
//'course, it is placeable on platform.
//then "block" may indeed be a, block, or maybe it is for "blocked"
//oh, whatever. just gonna assume those detect
//walls and placeable floor distance
//i came to that conclusion because "while"?
//this is a cloud, so i guess i only need it to be
//outside of a wall.
//right, "if (right_down)" is an input detect,
//it can summon them whichever direction at will then
//object can be a variable...?
//oh well... i can't question what i don't know about
//ah, the tab hell of references
//welp, it crashed. guess it was due to it having no sprites yet
//huh. guess you specify the sprite in article1_init
//i can't really rely on doc too much, can i

//if (attack==AT_NSPECIAL){
//    if (window == 1 && window_timer == 1){
//		var ARCloud = instance_create(x+(54*spr_dir), y+-67, "obj_article1");
//		ARCloud.player_id = id;
//		ARCloud.player = player;
//		ARCloud.spr_dir = 1;
//	}
//}

//54 -67
if (attack==AT_NSPECIAL){
    if (window == 2 && window_timer == 4){
		if (!position_meeting(x+(55*spr_dir), y-67, asset_get("par_block"))){
		var ARCloud = instance_create(x+(54*spr_dir), y-67, "obj_article1");
		ARCloud.player_id = id;
		ARCloud.player = player;
		ARCloud.spr_dir = 1;
		ARCloud.pre_rfl = id;
			if (phone_cheats[cheat_charge]){
				ARCloud.arc_faircharge = phone_cheats[cheat_charge];
			}
		}
	}
	move_cooldown[AT_NSPECIAL] = 10;
}

if (attack==AT_NSPECIAL_AIR){
    if (window == 2 && window_timer == 4){
		if (!position_meeting(x+(55*spr_dir), y-28, asset_get("par_block"))){
		var ARCloud = instance_create(x+(55*spr_dir), y-28, "obj_article1");
		ARCloud.player_id = id;
		ARCloud.player = player;
		ARCloud.spr_dir = 1;
		ARCloud.pre_rfl = id;
			if (phone_cheats[cheat_charge]){
				ARCloud.arc_faircharge = phone_cheats[cheat_charge];
			}
		}
	}
	move_cooldown[AT_NSPECIAL_AIR] = 10;
}

//referencely stolen from guadua

if (attack == AT_DSPECIAL){
    if (window == 1 && window_timer == 6){ //&& !hitpause){
        with (asset_get("obj_article1")){
            if (player_id == other.id && state == 1){
				if (arc_faircharge <= 0){
					state = 3;
					state_timer = 0;
				}
				if (arc_faircharge == 1){
					state = 3;
					state_timer = 8; // 22
					arc_faircharge = 0;
					sound_play( sound_get( "SE024" ) );
				}
				if (arc_faircharge == 2){
					state = 3;
					state_timer = 16; // 22
					arc_faircharge = 0;
					arc_thruplat = true;
					sound_play( sound_get( "fastantici" ) );
				}
            }
        }
    }
}

//FSpecial Cancelling IF Hit
if (attack == AT_FSPECIAL){
    switch(window){
        case 1: //Startup
            if (window_timer == 1) oof_owie_ouch = false;
            break;
        case 2: //Armor
            break;
        case 3: //Endlag 1
            break;
        case 4: //Endlag 2 (canceled on successful armor)
            if oof_owie_ouch iasa_script();
            break;
    }
}
















