/*if (strong_down || right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed){
    if (attack == AT_FAIR || attack == AT_BAIR){
	    attack = AT_FSTRONG;
	}else if (attack == AT_UAIR){
	    attack = AT_USTRONG;
	}else if (attack == AT_DAIR){
	    attack = AT_DSTRONG;
	}
}*/

if ((attack == AT_FAIR || attack == AT_BAIR) && (strong_down || right_strong_pressed || left_strong_pressed)){
    attack = AT_FSTRONG;
    if((right_down || right_strong_pressed) && !left_strong_pressed){
        spr_dir = 1;
    }else if((left_down || left_strong_pressed) && !right_strong_pressed){
        spr_dir = -1;
    }
}
if (attack == AT_UAIR && (strong_down || up_strong_pressed)){
    attack = AT_USTRONG;
}
if (attack == AT_DAIR && (strong_down || down_strong_pressed)){
    attack = AT_DSTRONG;
}

if (attack == AT_NSPECIAL){
	if(spr_dir == 1){
		nspec_angle = 290;
	}else{
		nspec_angle = 250;
	}
}

if (attack == AT_USPECIAL){
	if(free){
		reset_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH);
	}else{
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 18);
	}
}

if (attack == AT_FSPECIAL){
	fspec_charge = 0;fspec_invinc = 0;fspec_timer = 0;
	reset_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE);
	reset_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING);
	reset_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX);
	
	reset_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH);
	reset_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH);
}

if (attack == AT_DSPECIAL){
	var aboveground = true;
    if (place_meeting(x,y+50,asset_get("par_block")) || place_meeting(x,y+50,asset_get("par_jumpthrough"))){
	}else if (place_meeting(x,y+250,asset_get("par_block")) || place_meeting(x,y+250,asset_get("par_jumpthrough"))){
	//}else if (place_meeting(x,y+450,asset_get("par_block")) || place_meeting(x,y+450,asset_get("par_jumpthrough"))){
	//}else if (place_meeting(x,y+650,asset_get("par_block")) || place_meeting(x,y+650,asset_get("par_jumpthrough"))){
	//}else if (place_meeting(x,y+850,asset_get("par_block")) || place_meeting(x,y+850,asset_get("par_jumpthrough"))){
	}else{
    	aboveground = false;
	}
	if(!aboveground && (x > room_width-60 || x < 60 || y >= room_height-50 || y <= 250)){
		move_cooldown[AT_DSPECIAL] = 1;
	}
}

if (attack == AT_NAIR){
	reset_attack_value(AT_NAIR, AG_NUM_WINDOWS);
}

if (attack == AT_UAIR){
	reset_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH);
	reset_window_value(AT_UAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION);
	uairloop = 0;uairhold = 0;
	//if(!runeH){
        	uairboost /= 2;
        //}
}

if (attack == AT_DATTACK){
	reset_attack_value(AT_DATTACK, AG_CATEGORY);
	reset_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED);
	reset_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE);
	reset_window_value(AT_DATTACK, 3, AG_WINDOW_VSPEED);
	reset_window_value(AT_DATTACK, 3, AG_WINDOW_VSPEED_TYPE);
	reset_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH);
}

if (attack == AT_FSTRONG){
	reset_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH);
	reset_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH);reset_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME);
	if(!free){
		vsp -= 4;
	}
}

if (attack == AT_USTRONG){
	reset_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH);reset_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME);
	reset_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH);
	if(!free){
		vsp -= 4;
		reset_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK);reset_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK);reset_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK);reset_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING);
	}else{
		set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);
		set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 7);set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.9);
		set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 7);set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, .85);
	}spawnlightning = false;
}

if (attack == AT_DSTRONG){
	reset_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH);
	reset_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH);
}

/*if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG){
	if(right_down){
		spr_dir = 1;
	}else if(left_down){
		spr_dir = -1;
	}
}*/

if (attack == AT_TAUNT){
	reset_attack_value(AT_TAUNT, AG_NUM_WINDOWS);
	reset_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH);
	reset_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH);reset_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH);
	reset_window_value(AT_TAUNT, 8, AG_WINDOW_LENGTH);reset_window_value(AT_TAUNT, 9, AG_WINDOW_LENGTH);
	if(!free){
		vsp -= 5;
	}
}

muno_event_type = 2;
	user_event(14);