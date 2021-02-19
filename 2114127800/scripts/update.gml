user_event(14);

if (introTimer2 < 5){
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (introTimer < 10) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}

// command grab safety net (template)
if(grabbedid != noone && !((state == PS_ATTACK_GROUND && attack == AT_FSPECIAL) || (state == PS_ATTACK_AIR && attack == AT_FSPECIAL_2))){
    if(instance_exists(grabbedid)){
        grabbedid.ungrab++;
        if(grabbedid.ungrab == 2){
            if(grabbedid.state == PS_WRAPPED)
                grabbedid.state = PS_TUMBLE;
            grabbedid.ungrab = 0;
            grabbedid = noone;
        }
    } else {
        grabbedid = noone;
    }
}

if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 18;
    trummelcodecsprite1 = sprite_get("exetior_dialogue");
	trummelcodecsprite2 = sprite_get("");
    var page = 0;
	
    //Page 0
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "Great. You jokers again.";
    trummelcodecline[page,2] = "I thought I got rid of";
    trummelcodecline[page,3] = "you two already.";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "henlo edgy so-";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
	
	//Page 2
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "Don't.              ";
    trummelcodecline[page,2] = "You.                ";
    trummelcodecline[page,3] = "FUCKING.            ";
    trummelcodecline[page,4] = "Dare.               ";
    page++; 

    //Page 3
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Exetior's learned some";
    trummelcodecline[page,2] = "extra tricks since";
    trummelcodecline[page,3] = "we last fought him.";
    trummelcodecline[page,4] = "";
    page++; 
	
	//Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "A couple things he's";
    trummelcodecline[page,2] = "learned is a spin";
    trummelcodecline[page,3] = "attack and a super";
    trummelcodecline[page,4] = "jump!";
    page++; 
	
	//Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Exetior's super jump";
    trummelcodecline[page,2] = "can be preformed if he";
    trummelcodecline[page,3] = "uses down air on his";
    trummelcodecline[page,4] = "puddle.";
    page++; 
	
	//Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "His super jump allows him";
    trummelcodecline[page,2] = "to reach much higher";
    trummelcodecline[page,3] = "places than what he";
    trummelcodecline[page,4] = "normally could reach.";
    page++; 
	
	//Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "And considering that he's";
    trummelcodecline[page,2] = "super strong, it'll only";
    trummelcodecline[page,3] = "make it harder for us to";
    trummelcodecline[page,4] = "avoid him.";
    page++; 
	
	//Page 8
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Also, his spin attack is a";
    trummelcodecline[page,2] = "stronger dash attack";
    trummelcodecline[page,3] = "that consumes Flame";
    trummelcodecline[page,4] = "Dweller charge.";
    page++; 
	
	//Page 9
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "cash banooca go speen";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
	
	//Page 10
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "...Really? I'm not even";
    trummelcodecline[page,2] = "a marsupial, let alone";
    trummelcodecline[page,3] = "an orange one.";
    trummelcodecline[page,4] = "";
    page++; 
	
    //Page 11
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "However, one of Exetior's";
    trummelcodecline[page,2] = "newest tricks is his";
    trummelcodecline[page,3] = "deadly Puddle Dweller!";
    trummelcodecline[page,4] = "";
    page++; 
	
	//Page 12
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "If Exetior uses his";
    trummelcodecline[page,2] = "neutral special with max";
    trummelcodecline[page,3] = "Flame Dweller charge";
    trummelcodecline[page,4] = "while his puddle is active...";
    page++; 
	
	//Page 13
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "It'll create a bigger";
    trummelcodecline[page,2] = "Flame Dweller on top of";
    trummelcodecline[page,3] = "his puddle and deal a";
    trummelcodecline[page,4] = "lot of damage to us!";
    page++; 
	
	//Page 14
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Now we have more of a";
    trummelcodecline[page,2] = "reason than ever to";
    trummelcodecline[page,3] = "keep Exetior from using";
    trummelcodecline[page,4] = "his puddle.";
    page++; 
	
	//Page 15
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "He also has other tricks";
    trummelcodecline[page,2] = "up his sleeve, so we'll";
    trummelcodecline[page,3] = "need to stay sharp!";
    trummelcodecline[page,4] = "";
    page++; 
	
	//Page 16
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "woag";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
	
	//Page 17
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "Why am I even wasting";
    trummelcodecline[page,2] = "my time with you chumps.";
    trummelcodecline[page,3] = "I've got better things to";
    trummelcodecline[page,4] = "do.";
    page++; 
	
	//Page 18
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "You better run if ya";
    trummelcodecline[page,2] = "know what's good for ya,";
    trummelcodecline[page,3] = "wankers!";
    trummelcodecline[page,4] = "";
    page++; 
}

var do_otto_interaction = false; //sets a variable that can be accessed from inside the with statement

with(asset_get("oPlayer")){
    if ("i_am_otto_the_billiard_biker" in self && bobble_id == other.id && bike){ //bike is the variable for if otto is on his bike
        do_otto_interaction = true;
    }
}

if (!free && fspec_boost != 0 && !(attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND || (prev_state == PS_ATTACK_GROUND && state == PS_JUMPSQUAT) || (prev_prev_state == PS_ATTACK_GROUND && state == PS_FIRST_JUMP)))){
    fspec_boost = 0;
}

if(airDodgeGone){
    has_airdodge = false;
    if(free){
        airDodgeGone = false;
    }
}

if (!free || (attack == AT_DAIR && window == 2 && window_timer > 4) || !(attack == AT_DAIR && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))){
	sound_stop(sound_get("sfx_bounce"));
	bouncecounter = 0;
}

if (!free || state == PS_WALL_JUMP){
	move_cooldown[AT_USPECIAL] = 0;
}

//Amber hug compatibility
if (amber_startHug == true) //Amber will set this bool to true when this player accepts the hug
{
    with (amber_herObj) //Access Amber's player object and set the values
    {
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 0);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("standinghurtbox"));

		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 15);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_diamond_collect"));
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 12);

		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 44);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 11);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);

		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 3);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 15);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 14);
		
        amberHugState = 2; 
    }
    //Important. Puts this character in startup hug state (2).
    //Editing this variable not recommended
    oPlayerHugAmberState = 2;
    
    //Set this bool back to false so that this doesn't loop
    amber_startHug = false;
}

if swallowed {
	swallowed = 0;
	var myicon = sprite_get("copy_icon");
	var ability_spr = sprite_get("copy_attack");
	var ability_hurt = sprite_get("copy_hurt");
	with enemykirby {
	newicon = myicon;
	}
	with enemykirby {
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
		set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
		
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 0);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 9);

		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 7);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);
		
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 7);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 5);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);

		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 15);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 10);

		set_num_hitboxes(AT_EXTRA_3, 2);

		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -35);
		set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 80);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 80);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 8);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 40);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_EFFECT, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 8);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_LOCKOUT, 10);
		
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 3);
		set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 7);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 0);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -35);
		set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 0);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 65);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 65);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 3);
		set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 4);
		set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 50);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 4);
		set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_EXTRA_3, 2, HG_EFFECT, 0);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 4);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, 0.6);
		set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_LOCKOUT, 10);
	}
}