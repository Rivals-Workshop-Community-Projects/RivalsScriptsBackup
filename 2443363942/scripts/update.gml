// transcend
transcounter = clamp(((get_player_color(player) == 9 && (state==PS_SPAWN||(attack == AT_TAUNT && state == PS_ATTACK_GROUND)))?transcounter+2:transcounter-6),0,70);

//reset wall bounces
if (!free || state == PS_WALL_JUMP || state == PS_HITSTUN) wall_bounces = 6;

//Rune H reflecting
if (has_rune("H") && !reflect_cooldown && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL){
    if (instance_exists(pHitBox)){
        with(pHitBox){
            if (place_meeting(x,y,other) && player != other.player && !plasma_safe){
                can_hit_self = true;
                can_hit[other.player] = false;
                was_parried = true;
                hsp *= -1;
                vsp *= -1;
                if (spr_dir < 0 && hsp > 0){
                    spr_dir = 1;
                }
                else if (spr_dir > 0 && hsp < 0){
                    spr_dir = -1;
                }
                hitbox_timer = 0;
                other.reflect_cooldown = 5;
            }
        }
    }
}
if reflect_cooldown > 0 reflect_cooldown--;

//Amber hug compatibility
if (amber_startHug == true) //Amber will set this bool to true when this player accepts the hug
{
	with (amber_herObj) //Access Amber's player object and set the values
	{
		//Set the window values for Amber's hugging. DO NOT change Amber's sprites
		//in the attack_values
	    set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
	    set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
	    set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("hurtbox"));
	    
	    //Enter
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 9);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_diamond_collect")); 
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 8);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Loop
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 30);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 10);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 0);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Exit
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 9);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 14);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Important. Puts Amber in startup hug state (2).
	    //Editing this variable not recommended
	    amberHugState = 2; 
	}
	//Important. Puts this character in startup hug state (2).
    //Editing this variable not recommended
	oPlayerHugAmberState = 2;
	
	//Set this bool back to false so that this doesn't loop
    amber_startHug = false;
}

if swallowed { //Kirby ability script starts here
    swallowed = 0
    //Define any assets kirby might need to grab from YOUR CHARACTER
    var ability_spr = sprite_get("kirby");
    var ability_hurt = sprite_get("kirby_hurt")
    var ability_icon = sprite_get("kirby_icon") //Optional
    var ability_proj = sprite_get("nspecial_proj") 
    with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
        set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
        set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
        set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 14);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_bubblepop"));
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 13);

        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 3);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);

        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 12);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 3);

        set_num_hitboxes(AT_EXTRA_3, 2);

        set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 300);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 32);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -16);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 6);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 55);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 0.8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, ability_proj);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 10);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));

        set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 2);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_GROUP, 1);
        set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
        set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 3);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 20);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -28);
        set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 36);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 30);
        set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 2);
        set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 1);
        set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 4);
        set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 55);
        set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0.1);
        set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 7);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, 0.1);
        set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 6);
        set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
        newicon = ability_icon //Optional, replaces the kirby ability icon
    } //Kirby ability script ends here
}