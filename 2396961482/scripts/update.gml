if (!free) airLock = false;

	
move_cooldown[AT_DSPECIAL] = instance_exists(my_article)?60:move_cooldown[AT_DSPECIAL]<2&&airLock?2:move_cooldown[AT_DSPECIAL];


// barrierLockout
with (oPlayer) if ("barrierLockout" in self && barrierLockout.anglara == other.player && barrierLockout.timer > 0) barrierLockout.timer--;

// transcend
transcounter = clamp(((get_player_color(player) == 27 && (state==PS_SPAWN||(attack == AT_TAUNT && state == PS_ATTACK_GROUND)))?transcounter+2:transcounter-6),0,70);

//Date Girl Compat
if (dategirl_init < 9) {
	dategirl_init++
	var dategirl_real = false
	with (oPlayer) {
		if (self != other && "url" in self && url == "2396061657") dategirl_real = true
	}
	if (dategirl_real) {
		DG_chat_type = []
		user_event(1) //use the same number from your filename
		dategirl_init = 9
	}
}


	
//Dspecial indicator
if move_cooldown[AT_DSPECIAL] = 1{
    sound_play(asset_get("mfx_star"));
	white_flash_timer = 10;
	lanternhud_CURRENT = 100;
}


if (get_player_color(player) == 23){
set_victory_portrait( sprite_get( "passivefishe" ));
init_shader();
}
