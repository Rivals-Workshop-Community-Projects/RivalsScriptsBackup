//update
	
// Refreshes everything on landing
if (!free || state == PS_WALL_JUMP){
	move_cooldown[AT_USPECIAL_2] = 0;
	move_cooldown[AT_FAIR] = 0;
	move_cooldown[AT_BAIR] = 0;
	move_cooldown[AT_DAIR] = 0;
//	move_cooldown[AT_DSPECIAL] = 0;
//	move_cooldown[AT_DSPECIAL_2] = 0;
	onPlat = false;
}

// Removes flag that Snom is on cloud platform
if (free){
	onPlat = false;
}

// Checks if Snom is sleeping
if (attack != AT_NSPECIAL){
	resting = false;
}

// Facade - Deals more damage when has a status effect
// Declares power-up to Down Tilt during hitstun
if (state == PS_HITSTUN){
	
	// Sets Dtilt to buffed state if has status effect
	if (burned || marked || bubbled || poison || stuck || wrapped){
		set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 46);
		set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 14);
		set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .6);
		set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 12);
		set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .9);
	}
}

if (state != PS_HITSTUN && attack != AT_NSPECIAL){
	// Sets Dtilt to default effects
	if (!burned && !marked && !bubbled && !poison && !stuck && !wrapped){
		set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 70);
		set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 7);
		set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .4);
		set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 4);
		set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .3);
	}
}

if (state != PS_ATTACK_GROUND  && state != PS_ATTACK_AIR){
	attack_anim_timer = 0;
	attack_anim_timer_2 = 0;
}

if (attack == AT_FSTRONG && state == PS_ATTACK_GROUND){
	if (spr_dir == 1){
		if (window == 3 && window_timer == 1){
			create_hitbox( AT_FSTRONG, 2, x + 50, view_get_yview() - 40);
			create_hitbox( AT_FSTRONG, 2, x, view_get_yview() - 20);
			create_hitbox( AT_FSTRONG, 2, x - 50, view_get_yview());
		}
	}

	if (spr_dir == -1){
		if (window == 3 && window_timer == 1){
			create_hitbox( AT_FSTRONG, 2, x - 50, view_get_yview() - 40);
			create_hitbox( AT_FSTRONG, 2, x, view_get_yview() - 20);
			create_hitbox( AT_FSTRONG, 2, x + 50, view_get_yview());
		}
	}
	move_cooldown[AT_FSTRONG] = 30;
}

// Move Showcase
if (state == PS_SPAWN || was_reloaded){
	if (spawn_timer < 100 && attackLock == 0 && jump_down && attack_down){
		attackLock = 1;
		sound_play(asset_get("mfx_confirm"));
	}
}

// Sets off Retro Filter for base color
if (get_player_color(player) == 7 && (state == PS_SPAWN || was_reloaded)){ // Color 11 Variations
	if (spawn_timer == 1){
//		ColorLocked = true;
			for(i = 0; i < 8; i++){
				set_character_color_shading(i, 0);
			}
		init_shader();
	}
}
			
// Trum and Alto Support

if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 5;
    trummelcodecsprite1 = sprite_get("X");
    trummelcodecsprite2 = sprite_get("X");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Aww it's a Snom! Those";
    trummelcodecline[page,2] = "little guys became super";
    trummelcodecline[page,3] = "popular when they first";
    trummelcodecline[page,4] = "were discovered!";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "It seems though this one";
    trummelcodecline[page,2] = "has some fighting spirit.";
    trummelcodecline[page,3] = "I'd say we should be";
    trummelcodecline[page,4] = "careful above Snom.";
    page++;    
	
	//Page 2
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "It can probably deal";
    trummelcodecline[page,2] = "a heavy blow shooting";
    trummelcodecline[page,3] = "some Icicle Spears";
    trummelcodecline[page,4] = "straight upwards.";
    page++;
	
    //Page 3
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Snom only learns a dozen";
    trummelcodecline[page,2] = "or so moves but it might";
    trummelcodecline[page,3] = "be able to creatively";
    trummelcodecline[page,4] = "utilize them.";
    page++; 
	
    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "A well bred Snom can";
    trummelcodecline[page,2] = "use some tricky moves";
    trummelcodecline[page,3] = "like Mirror Coat, Rest ";
    trummelcodecline[page,4] = "and Substitute.";
    page++; 
	
    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "That said I'm sure we'll";
    trummelcodecline[page,2] = "be fine, what's the worst";
    trummelcodecline[page,3] = "a little guy like that";
    trummelcodecline[page,4] = "could do.";
    page++; 

}

// T&A End