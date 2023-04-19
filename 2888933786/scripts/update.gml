//if trummelcodecneeded{
//    trummelcodec = 17;
//    trummelcodecmax = 1;
//    trummelcodecsprite1 = sprite_get("X");
//    trummelcodecsprite2 = sprite_get("X");
//    var page = 0;
//
    //Page 0
//    trummelcodecspeaker[page] = 0;
//    trummelcodecexpression[page] = 0;
//
//    trummelcodecline[page,1] = "X";
//    trummelcodecline[page,2] = "X";
//    trummelcodecline[page,3] = "X";
//    trummelcodecline[page,4] = "X";
//    page++;

    //Page 1
//    trummelcodecspeaker[page] = 0;
//    trummelcodecexpression[page] = 1;

//    trummelcodecline[page,1] = "X";
//    trummelcodecline[page,2] = "X";
//    trummelcodecline[page,3] = "X";
//    trummelcodecline[page,4] = "X";
//    page++;

    //repeat...
//}

if (attack == AT_FSPECIAL_2){
	if (window == 3 && window_timer == 0){
		with (asset_get("oPlayer")){
			blue_time = 0;
		}
	}
}

if(get_player_color(player) == 10){
    rouxls = true;
}

/*if ((state == PS_DASH && state_timer % 180 == 0) or (state == PS_DASH && state_timer == 1) ){
	sound_stop(sound_get("sfx_dash"));
	sound_play(sound_get("sfx_dash"));
}
*/

if (state == PS_ATTACK_GROUND && attack == AT_UTILT){
	char_height = 114;
}
else{
	char_height = 114;
}



if  (music) {
	suppress_stage_music( 0.1, 10 );
}

if (state == PS_SPAWN) {
	match_start += -1;
	if (match_start > 0) && (times_pressed >= pressed_required){
		/*no = true;
		sound_play(sound_get("sfx_sanstalk"));
		deed_is_done = true;
		*/
		music = true;
	}
}

if (match_start > 0) {
	if (special_pressed) {
		clear_button_buffer(PC_SPECIAL_PRESSED);
		times_pressed++;
	}
}

if (attack == AT_TAUNT && down_down == true){
attack = AT_FSTRONG_2;
}

if (attack == AT_TAUNT && up_down == true){
attack = AT_USTRONG_2;
}

if (attack == AT_TAUNT && right_down == true){
attack = AT_TAUNT_2;
}

if (attack == AT_TAUNT && left_down == true){
attack = AT_TAUNT_2;
}

if (music) {
	switch (get_gameplay_time()) {
		case 200:
			sound_play(sound_get("fart"));
			break;
		default:
			break;
	}
}

if (spino) {
	switch (get_gameplay_time()) {
		case 50:
			sound_play(sound_get("sorna"));
			break;
		default:
			break;
	}
}

if(get_player_color(player) == 13){
    spino = true;
}

if (trolled) {

	set_victory_theme(sound_get("troll")); // LOST WORLD
	
	set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 1);

	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 1);
    set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 1);
	
	set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_WHIFFLAG, 0);
	
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_DSTRONG, 9, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_DSTRONG, 10, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_DSTRONG, 11, AG_WINDOW_LENGTH, 1);

	set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 300);
	
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 1);
	
	set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_NAIR, 2, AG_WINDOW_SFX_FRAME, 1);
	set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 1);
	
	set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 8);
	set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 0);
	set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
	set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -6);
	
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 5);
	
	set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 1);
	
	set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 1);
	
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 1);
	
	set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 2);
	
	set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 1);
	
	set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 1);
	
	set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_IS_TRANSCENDENT, true);
	set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);
	set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_IS_TRANSCENDENT, true);
	set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_IS_TRANSCENDENT, true);

	set_hitbox_value(AT_DSTRONG_2, 8, HG_PROJECTILE_SPRITE, sprite_get("dumb_ape"));

	hurtbox_spr = sprite_get("krispy");

    set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 999999);
    set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 999999);
	set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 999999);
	set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 999999);
    set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 999999);
    set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 999999);
	set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 999999);
	set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 999999);
    set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 999999);
    set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 999999);
	set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
    set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
	set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 999);
	set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 999);
}

if (get_gameplay_time() <= 1 && shield_pressed) {
    trolled = true;
}
if (get_gameplay_time() <= 2 && shield_pressed) {
    trolled = true;
}
if (get_gameplay_time() <= 3 && shield_pressed) {
    trolled = true;
}
if (get_gameplay_time() <= 4 && shield_pressed) {
    trolled = true;
}
if (get_gameplay_time() <= 5 && shield_pressed) {
    trolled = true;
}
if (get_gameplay_time() <= 6 && shield_pressed) {
    trolled = true;
}
if (get_gameplay_time() <= 1 && shield_pressed) {
    music = true;
}
if (get_gameplay_time() <= 2 && shield_pressed) {
    music = true;
}
if (get_gameplay_time() <= 3 && shield_pressed) {
    music = true;
}
if (get_gameplay_time() <= 4 && shield_pressed) {
    music = true;
}
if (get_gameplay_time() <= 5 && shield_pressed) {
    music = true;
}
if (get_gameplay_time() <= 6 && shield_pressed) {
    music = true;
}