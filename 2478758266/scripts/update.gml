if (state == PS_CROUCH) {
    if (state_timer == 0) {
        sound_play(sound_get("crouch"));
    }
}

if (state == PS_WALL_JUMP) {
    if (state_timer == 0) {
        sound_play(sound_get("wjump"));
    }
}

if (state == PS_DASH_START) {
    if (state_timer == 5) {
        sound_play(sound_get("dstart"));
    }
}

if (state == PS_DASH) {
    if (state_timer % 15 == 0) {
        sound_play(sound_get("step"));
    }
}

if (state == PS_WALK) {
    if (state_timer % 24 == 0) {
        sound_play(sound_get("step"));
    }
}

if swallowed {

swallowed = 0
var ability_spr = sprite_get("pkground_kirby")
var ability_hurt = sprite_get("pkground_kirby_hurt")
var myicon = sprite_get("kirbyicon")
var pkground_sfx = sound_get("pkground")
var bash_sfx = sound_get("bash")

	with enemykirby {

newicon = myicon;

set_attack_value(AT_EXTRA_3, AG_CATEGORY, 0);
set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_3, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 8);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 77);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 17);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, pkground_sfx);




set_num_hitboxes(AT_EXTRA_3, 5);

set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -5);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 11);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 129);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 19);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, bash_sfx);

set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 9);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -5);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 11);
set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 236);
set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 39);
set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 170);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, bash_sfx);

set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW_CREATION_FRAME, 19);
set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 9);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -6);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_X, 11);
set_hitbox_value(AT_EXTRA_3, 3, HG_WIDTH, 236);
set_hitbox_value(AT_EXTRA_3, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_EXTRA_3, 3, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_EXTRA_3, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE, 10);
set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_EXTRA_3, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_SFX, bash_sfx);

set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW_CREATION_FRAME, 28);
set_hitbox_value(AT_EXTRA_3, 4, HG_LIFETIME, 9);
set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_Y, -5);
set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_X, 11);
set_hitbox_value(AT_EXTRA_3, 4, HG_WIDTH, 236);
set_hitbox_value(AT_EXTRA_3, 4, HG_HEIGHT, 77);
set_hitbox_value(AT_EXTRA_3, 4, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_3, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_3, 4, HG_ANGLE, 170);
set_hitbox_value(AT_EXTRA_3, 4, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_EXTRA_3, 4, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_EXTRA_3, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_3, 4, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_EXTRA_3, 4, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_EXTRA_3, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_3, 4, HG_HIT_SFX, bash_sfx);

set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 5, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_EXTRA_3, 5, HG_WINDOW_CREATION_FRAME, 37);
set_hitbox_value(AT_EXTRA_3, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_Y, -5);
set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_X, 11);
set_hitbox_value(AT_EXTRA_3, 5, HG_WIDTH, 227);
set_hitbox_value(AT_EXTRA_3, 5, HG_HEIGHT, 73);
set_hitbox_value(AT_EXTRA_3, 5, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_3, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_3, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_EXTRA_3, 5, HG_ANGLE, 67);
set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_3, 5, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_EXTRA_3, 5, HG_HITPAUSE_SCALING, .50);
set_hitbox_value(AT_EXTRA_3, 5, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_EXTRA_3, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_3, 5, HG_HIT_SFX, bash_sfx);
	}
}



// entrance
if (get_gameplay_time() < 5)
{
    if (!has_enter) and (!instance_exists(oTestPlayer))
    {
        has_enter = true;
        set_attack(AT_NTHROW);
        
    }
}

if (attack == AT_NTHROW) and (window == 2) and (window_timer == 57)// kumatora number
{
    set_state(PS_SPAWN);
    state_timer += 66;// kumatora number
    
}

if (pkfire > 55) {
	pkfire = 55;
}

if (0 > pkfire) {
	pkfire = 0;
}


if (psi_active == 1) {
	if (psi_cooldown > 1) {
		psi_cooldown = psi_cooldown - 1
	}
	else {
		psi_active = 0
	}
}
		

if (psi_check == 1) {
	if (psi_timer > 0) { 
		psi_timer = psi_timer - 1
	}
	else {
		psi_check = 0; 
		
		
		offenseup = 1;
		defenseup = false;
	}
}


if (psi_active == 1) {
	if (psi_cooldown > 1) {
		psi_cooldown = psi_cooldown - 1
	}
	else {
		psi_active = 0 
	}
}


if (offenseup != 1 || offenseupawesome != 1){
    with (asset_get("pHitBox")){
        if (player == other.player){
            if (air_friction < .1){
                damage = round(damage*other.offenseup);
                damage = round(damage*other.offenseupawesome);
                air_friction = .2;
            }
        }
    }
}


if (attack == AT_USTRONG){
	attack_pick=random_func( 1, 3,  true);	
	if(attack_pick==0) { 
		set_attack(AT_FSTRONG_2);
	} 
	if(attack_pick==1) {
		set_attack(AT_FTHROW);
	} 
	if(attack_pick==2) {
		set_attack(AT_USTRONG_2);
	}
}