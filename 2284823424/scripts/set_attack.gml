///#args attack;



if has_rune("N"){
	
	var do_stuff = 1;
	
	switch(attack){
		case AT_JAB:
			held_item = IT_SPLASH_POTION;
			break;
		case AT_FTILT:
			held_item = IT_STICKY_PISTON;
			break;
		case AT_UTILT:
			held_item = IT_EYE_OF_ENDER;
			break;
		case AT_DTILT:
			held_item = IT_LINGERING_POTION;
			break;
		case AT_DATTACK:
			held_item = IT_MINECART;
			break;
		case AT_NAIR:
			held_item = IT_THORNS;
			break;
		case AT_FAIR:
			held_item = IT_FIRE_CHARGE;
			break;
		case AT_BAIR:
			held_item = IT_ENDER_PEARL;
			spr_dir *= -1;
			break;
		case AT_UAIR:
			held_item = IT_ELYTRA;
			break;
		case AT_DAIR:
			held_item = IT_ANVIL;
			break;
		case AT_FSTRONG:
			held_item = IT_CROSSBOW;
			break;
		case AT_USTRONG:
			held_item = IT_RIPTIDE;
			break;
		case AT_DSTRONG:
			held_item = IT_BELL;
			break;
		case AT_NSPECIAL:
			held_item = IT_DISPENSER;
			break;
		case AT_FSPECIAL:
			held_item = IT_FROST_WALKER;
			break;
		case AT_USPECIAL:
			held_item = IT_SLIME_BLOCK;
			break;
		case AT_DSPECIAL:
			held_item = IT_TNT;
			break;
		
		default:
			do_stuff = 0;
			break;
	}
	
	if do_stuff{
		attack = AT_NSPECIAL;
	}
	
}



stopped_sounds = [];

if (attack == AT_TAUNT && shield_down){
    for (i = 0; i < array_length_1d(containers); i++){
        containers[i].spent_items = [0,0,0];
        restock_alpha = 10;
    }
}

if (attack == AT_TAUNT && down_down && !free) attack = AT_TAUNT_2;






if (attack == AT_USPECIAL){
	if blocks uspecial_type = 1;	//Place regular block
	else uspecial_type = 0;			//Place nothing and enter pratfall, oh noes
}



if (attack == AT_DSPECIAL){
	if water_cooldown dspecial_type = 0;	//Nothing
	else dspecial_type = 1;					//Water
	
	if has_rune("H") && !water_cooldown dspecial_type = 2; // Lava
}



if (attack == AT_FSPECIAL){
	// instance_create(x - 50 * spr_dir, y, "obj_article1");
	// spawn_hit_fx(x, y - 100, 3)
}



if (attack == AT_NSPECIAL){
	
	if held_item{
		if items[held_item].attack{ //Change to item's attack
			attack = items[held_item].attack;
			if attack == AT_USPECIAL uspecial_type = 2; //Place held item
			else if attack == AT_DSPECIAL dspecial_type = 2; //Lava
		}
		else{ //Discard, for Totem of Undying
			discard_timer = 1;
			move_cooldown[attack] = 1;
		}
	}
	
	else{
		if !has_container{
			move_cooldown[attack] = 2;
			if !exp_shake{
				exp_shake = 10;
				sound_play(sound_get("errorrrrr"));
			}
		}
		else{
			current_container = next_container;
		}
	}
	
}



if (attack == AT_DSPECIAL){
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, dspecial_type * 2);
}



// if (attack == AT_JAB) primary_block++;

// if primary_block > 2 primary_block = 0;



if get_num_hitboxes(attack) && !move_cooldown[attack]{
	for(var i = 0; i < get_num_hitboxes(attack); i++){
		var num = i + 1;
		reset_hitbox_value(attack, num, HG_DAMAGE);
		reset_hitbox_value(attack, num, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(attack, num, HG_VISUAL_EFFECT);
		// reset_hitbox_value(attack, num, HG_BASE_HITPAUSE);
		// reset_hitbox_value(attack, num, HG_HITPAUSE_SCALING);
		if strength_pot && get_hitbox_value(attack, num, HG_HITBOX_TYPE) == 1{
			set_hitbox_value(attack, num, HG_DAMAGE, get_hitbox_value(attack, num, HG_DAMAGE)						* strength_pot_mult);
			set_hitbox_value(attack, num, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, num, HG_KNOCKBACK_SCALING)	* strength_pot_mult);
			if get_hitbox_value(attack, num, HG_KNOCKBACK_SCALING) set_hitbox_value(attack, num, HG_VISUAL_EFFECT, 304);
			// set_hitbox_value(attack, num, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, num, HG_BASE_HITPAUSE)		* strength_pot_mult);
			// set_hitbox_value(attack, num, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, num, HG_HITPAUSE_SCALING)	* strength_pot_mult);
		}
	}
}



if (attack == AT_USPECIAL && has_rune("O")){
	reset_hitbox_value(attack, 1, HG_DAMAGE);
	reset_hitbox_value(attack, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(attack, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(attack, 1, HG_HITPAUSE_SCALING);
	reset_hitbox_value(attack, 1, HG_EFFECT);
	
	if uspecial_type == 2 && held_item == IT_SLIME_BLOCK{
		set_hitbox_value(attack, 1, HG_DAMAGE,
			get_hitbox_value(attack, 1, HG_DAMAGE)
			* 3
			);
		
		set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK,
			round(get_hitbox_value(attack, 1, HG_BASE_KNOCKBACK)
			* 1.5)
			);
		
		set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING,
			get_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING)
			* 3
			);
		
		set_hitbox_value(attack, 1, HG_BASE_HITPAUSE,
			round(get_hitbox_value(attack, 1, HG_BASE_HITPAUSE)
			* 1.3)
			);
		
		set_hitbox_value(attack, 1, HG_HITPAUSE_SCALING,
			get_hitbox_value(attack, 1, HG_HITPAUSE_SCALING)
			* 1.3
			);
		
		set_hitbox_value(attack, 1, HG_EFFECT, 11);
	}
}



user_event(13);