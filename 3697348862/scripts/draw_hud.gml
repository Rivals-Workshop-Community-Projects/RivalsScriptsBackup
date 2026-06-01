// draw_hud.gml

//debug stats for... well, debuging. 

if ("holding_sd_card" not in self){
	holding_sd_card = false;
	held_sd_card_num = -1;
}
if ("fspec_curr_operator" not in self){
	fspec_curr_operator = 1;
}
if ("nspec_stored" not in self){
	nspec_stored = false;
}

// draw hud sprites
draw_sprite(sprite_get("__operators"), fspec_curr_operator - 1, temp_x + 24, temp_y - 28);

if ((holding_sd_card && held_sd_card_num != -1) || nspec_stored || ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL && window > 1 && window != 4 && window != 5)){
	
	if (holding_sd_card && held_sd_card_num != -1){
		draw_sprite(sprite_get("nspecial_number_proj"), held_sd_card_num, temp_x + 104, temp_y - 28);
	} else {
		draw_sprite(sprite_get("nspecial_number_proj"), sd_card_number, temp_x + 104, temp_y - 28);
	}
	
}


/*
if (get_match_setting(SET_PRACTICE)){

//draw_debug_text(temp_x,temp_y+32,"(this is for the beta, training mode only)")
draw_debug_text(temp_x,temp_y+16,"these numbers are for debugging.")
draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp))
draw_debug_text(temp_x, temp_y-80,"Free: " + string(free) + "    spr_dir: " + string(spr_dir))
draw_debug_text(temp_x, temp_y-96,"HoldingCard: " + string(holding_sd_card) + " CardNum: " + string(held_sd_card_num))
draw_debug_text(temp_x, temp_y-112,"Curr Operator: " + string(fspec_curr_operator))
draw_debug_text(temp_x, temp_y-128,"SD Card Numbah: " + string(sd_card_number))
//further y positions should go up in multiples of 16 from 64


}
*/