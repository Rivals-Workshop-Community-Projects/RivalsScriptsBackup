///#args attack
//  ^ this line up here makes gmedit not freak out

//set_attack.gml

if(lobotomy != noone){
	sound_stop(lobotomy);
	lobotomy = noone;
	lobotomy_timer = 0;
}

if (attack == AT_DSPECIAL && instance_exists(artc_savepoint)) window = 5; //redirect to teleport

if attack == AT_TAUNT && down_down {
    attack = AT_TAUNT_2
    if !lobotomy_victory lobotomy = sound_play(sound_get("lobotomy"), true);
    if(move_cooldown[AT_TAUNT_2] <= 0 && (!using_stored_attack && loaded_off_uspec)){
    	loaded_off_uspec = false;
    }
    // spawn_base_dust(x, y-floor(char_height/2), "anime", spr_dir);
}

if attack == AT_NSPECIAL && "fs_charge" in self && fs_charge >= 200 { attack = 49; fs_force_fs = true}

if has_rune("K") && attack == AT_NSPECIAL && ((!using_stored_attack && !has_saved_state && move_cooldown[AT_NSPECIAL] <= 2) || saved_state.attack == AT_NSPECIAL) {
	move_cooldown[AT_NSPECIAL] = 0;
	clear_button_buffer(PC_SPECIAL_PRESSED);
}