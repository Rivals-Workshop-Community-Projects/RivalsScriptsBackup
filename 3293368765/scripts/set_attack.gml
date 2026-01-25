has_gained_will = false;
canceled_into_dspec = false;

var is_special = (attack == AT_USPECIAL || attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_FSPECIAL_AIR || attack == AT_NSPECIAL_AIR)

if (will_cancel && is_special && move_cooldown[attack] <= 0 && !get_match_setting(SET_TURBO)) {
	if (attack != AT_USPECIAL || (attack == AT_USPECIAL && uspec_uses >= 1)){
		if(attack == AT_DSPECIAL) canceled_into_dspec = true;
    	will_cancel = 0;
    	will_lvl = (will_lvl) - 1;
    	will_charge = (will_charge) - 600;
    	sound_play(asset_get("mfx_star"));
    	can_uspec = true;
    	afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:c_white, timer:0, timerMax:32};
	}
}

switch(attack) {
    case AT_USPECIAL:
    if(!move_cooldown[AT_USPECIAL]){
    uspec_uses--
    }
        //Adjusts position when started from ground to make animation look better.
        if(!free) {
            y -= 24; //Number of pixels the first frame overlaps with the ground.
        }

        //reset 'grabbed_player' variables at start of attack.
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
        break;
	
    
    case AT_DSPECIAL:
        //Give additional boost when on ground.
        // no longer has any affect
        // if(!free && abs(hsp) < dash_speed) {
        //     hsp = spr_dir * dash_speed;
        // }

        if move_cooldown[AT_DSPECIAL] <= 0 ds_list_clear(tn_afterimage_ledger);
        break;
    
    case AT_FSPECIAL:
        //Use aerial version if in the air.
        if(free) {
            attack = AT_FSPECIAL_AIR;
        }
        break;

    case AT_NSPECIAL:
        //Reset check for will charge.
        tn_nspec_will_charge = false;
        
        //Use aerial version if in the air.
        if(free) {
            attack = AT_NSPECIAL_AIR;
        }
        
        /*Increase speed based on charge.
        set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 24);

        if(will_lvl > 0) {
            set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
        }
        break; */
}

if (has_rune("B") && move_cooldown[AT_NSPECIAL_2] <= 0 && attack_pressed && special_pressed && 
(attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR || attack == AT_JAB || attack == AT_NAIR)) {
	attack = AT_NSPECIAL_2;
}
if(attack == AT_NSPECIAL_2 && move_cooldown[AT_NSPECIAL_2] <= 0) hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE)


if(dspec_cancel && move_cooldown[attack] <= 0){
	hsp = clamp(hsp, -8, 8);
	dspec_cancel = false;
}