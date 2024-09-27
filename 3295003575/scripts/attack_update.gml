//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}
if (attack == AT_DSPECIAL && !hitpause) {
	switch (window) {
		case 1: //startup window.
    
			//we only want to perform this code on the first frame of this window.
			if (window_timer != 1) break;
			//reset the charge timer variable.
			charge_timer = 0;
      
			break;
		
		case 2: //charging window.
    
			//if the special button is held down (change if needed), charge this attack.
			if (special_down) {
				charge_timer += 1;
			}
			//when the button is released, transition to the next window.
			else {
				//skip to the next window
				window = 3;
				window_timer = 0;
			}
      
			break;
		
		case 3: //charge release window.
    
			//we only want to perform this code on the first frame of this window.
			if (window_timer != 1) break;
			
			//make this attack's damage scale by how long it has been charged for.
			//we'll do this by directly updating the attack's hitbox grid indexes.
			var new_damage_value = 8 + round( charge_timer / 10 );
			set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, new_damage_value);
			//you can change other properties besides damage of course, or change none at all.


      
			break;
	}
}
			//you can change other properties besides damage of course, or change none at all
if (attack == AT_USPECIAL)
    {
    move_cooldown[AT_USPECIAL] = 9999;
    	
    }
if (attack == AT_USPECIAL_GROUND)
    {
    move_cooldown[AT_USPECIAL_GROUND] = 64;
    	
    }
    
if (attack == AT_NSPECIAL && window == 2){
        take_damage(player, 1, 1)}
        
if attack == AT_DAIR {
    if (has_hit) {
        old_vsp = -5;
    }
}

if attack == AT_FSPECIAL {
    if (Reved = true ) {
        set_attack (AT_FSPECIAL_2);
    }
}
if (attack == AT_FSPECIAL_2){
	if (window == 2 && window_timer == 1 && has_hit_player && get_player_damage(has_hit_id.player) > 140) {
	create_deathbox(
	has_hit_id.  x + 85, // x
	has_hit_id.  y - 20,  // y
	85, // w
	75, // h
	has_hit_id.player, // player
	true, // free
	0, // shape
	4, // lifespan
	2 // bg_type
);
	}
}

if (attack == 49){
	if (window == 3 && window_timer == 80 && has_hit_player && get_player_damage(has_hit_id.player) > 10 ) {
	create_deathbox(
	has_hit_id.x, // x
	has_hit_id.y,  // y
	100, // w
	107, // h
	has_hit_id.player, // player
	true, // free
	0, // shape
	3, // lifespan
	2 // bg_type
);
	}
}

if attack == AT_FSPECIAL_2 
     {
       Reved = false 
       meter = 0
        move_cooldown[AT_NSPECIAL] = 400;
    }

if(attack == AT_DSPECIAL){
 soft_armor = 12;
 move_cooldown[AT_DSPECIAL] = 60;

}

if (attack == AT_DATTACK){
	if (window == 3){
		if (shield_pressed){
			window = 4;
		}
	}
}

if (attack == AT_NSPECIAL && window == 2)
{
    { if (window == 2)
        {move_cooldown[AT_NSPECIAL] = 750;}
        can_fast_fall = false;
        meter = 600;
    }

}
if (attack == AT_FSPECIAL)
{
	{    move_cooldown[AT_FSPECIAL] = 64;}
        
        
}



// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	
	case AT_JAB:
		was_parried = false; // easy method for single-hit jabs
	case AT_FTILT:
	case AT_DTILT:
		if window == 1 && window_timer == phone_window_end{ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		break;
	case AT_UTILT:
		if window == 1 && window_timer == phone_window_end{ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash", -spr_dir]);
		}
		break;
	case AT_FSTRONG:
		if window == 2 && window_timer == phone_window_end{ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
		}
		break;
	case AT_USTRONG:
		if window == 2 && window_timer == phone_window_end{ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;
	
	
	

	
	
	
	

	
	
	
	case AT_DSPECIAL:
		if (!hitpause && !was_parried && has_hit){
			can_jump = true;
		}
		can_fast_fall = false;
		can_move = false;
		break;
	
	
	
	case AT_TAUNT:
		if window_timer == 1{
			clear_button_buffer(PC_SHIELD_PRESSED);
		}
		if shield_pressed && window == 1 && window_timer < 16{
			attack_end();
			set_attack(AT_TAUNT_2);
		}
		break;
	
	
	
	case AT_TAUNT_2:
		if !(shield_down || taunt_down){
			attack_end();
			set_state(PS_IDLE);
		}
		if window_timer == phone_window_end - 32{
			spawn_hit_fx(x + 16 * spr_dir, y - 44, 113);
			sound_play(asset_get("mfx_star"));
		}
		if window_timer == phone_window_end - 4{
			spawn_hit_fx(x, y - 32, 143);
		}
		break;
}



