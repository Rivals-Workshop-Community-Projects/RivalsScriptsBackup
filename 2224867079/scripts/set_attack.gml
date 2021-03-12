//set_attack
if (attack == AT_TAUNT && RedMode){
	attack = AT_TAUNT_2;
}

if (attack == AT_DSPECIAL && RedMode){
	if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL) {
	switch (get_player_color(player)) {
		case(2):
			set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("Ans_Mode2"));
			break;
		case(3):
			set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("Shujo_Mode"));
			break;
		case(4):
			set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("Nep-Dspec-Blue"));
			break;
	}
	attack = AT_DSPECIAL;
}
	attack = AT_DSPECIAL_2;
}

if (phone_cheats[jab_fsmash] == 1) {
	if (attack == AT_JAB){
		attack = 49;
	}
}

if (attack == AT_DSTRONG && RedMode){
	attack = AT_DSTRONG_2;
}

if (attack == AT_USTRONG && RedMode){
	attack = AT_USTRONG_2;
}

if (attack == AT_USPECIAL && RedMode){
	attack = AT_USPECIAL_2;
}

if (attack == AT_FSPECIAL && RedMode){
	attack = AT_FSPECIAL_2;
}

if(attack == AT_NSPECIAL && free){
    attack = AT_NSPECIAL_AIR;
}

if(attack == AT_NSPECIAL && RedMode){
    attack = AT_NSPECIAL_2;
}


if(attack == AT_NSPECIAL_AIR && RedMode){
	attack = AT_EXTRA_1
}

if (attack == AT_FSTRONG && RedMode){
	attack = AT_FSTRONG_2;
}
if(attack == AT_DATTACK && RedMode){
	
    set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get ( "red_dattack" ) );
    set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, sound_get("RedSwish4"));
    set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 3);
    set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, red_new_stab_1 );
    set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("RedHit4"));
} else {   
	
    reset_attack_value(AT_DATTACK, AG_SPRITE);
    reset_window_value(AT_DATTACK, 1, AG_WINDOW_SFX);
    reset_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_DATTACK, 1, HG_DAMAGE);
    reset_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX);
}

if(attack == AT_DTILT && RedMode){
    set_attack_value(AT_DTILT, AG_SPRITE, sprite_get ( "red_utilt" ) );
    set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("RedSwish3"));
    set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 3);
    set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, red_new_stab_1);
    set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, red_new_stab_2);
    set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("RedHit3"));
    set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, sound_get("RedHit3"));
} else {   
	
    reset_attack_value(AT_DTILT, AG_SPRITE);
    reset_window_value(AT_DTILT, 1, AG_WINDOW_SFX);
    reset_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_DTILT, 1, HG_DAMAGE);
    reset_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_DTILT, 1, HG_HIT_SFX);
    reset_hitbox_value(AT_DTILT, 2, HG_HIT_SFX);
}

if(attack == AT_FTILT && RedMode){
	
    set_attack_value(AT_FTILT, AG_SPRITE, sprite_get ( "red_ftilt" ) );
    set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("RedSwish1"));
    set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 3);
    set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, red_new_stab_1 );
    set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("RedHit1"));
} else {   
	
    reset_attack_value(AT_FTILT, AG_SPRITE);
    reset_window_value(AT_FTILT, 1, AG_WINDOW_SFX);
    reset_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_FTILT, 1, HG_DAMAGE);
    reset_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_FTILT, 1, HG_HIT_SFX);
}

if(attack == AT_FAIR && RedMode){
	
    set_attack_value(AT_FAIR, AG_SPRITE, sprite_get ( "red_fair" ) );
    set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("RedSwish3"));
    set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 3);
    set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, red_new_stab_1);
    set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("RedHit2"));
} else {   
	
    reset_attack_value(AT_FAIR, AG_SPRITE);
    reset_window_value(AT_FAIR, 1, AG_WINDOW_SFX);
    reset_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_FAIR, 1, HG_HIT_SFX);
}

if(attack == AT_UAIR && RedMode){
	
    set_attack_value(AT_UAIR, AG_SPRITE, sprite_get ( "red_uair" ) );
    set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("RedSwish1"));
    set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 3);
    set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, red_new_stab_1);
    set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("RedHit2"));
} else {   
	
    reset_attack_value(AT_UAIR, AG_SPRITE);
    reset_window_value(AT_UAIR, 1, AG_WINDOW_SFX);
    reset_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_UAIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_UAIR, 1, HG_HIT_SFX);
}

if(attack == AT_NAIR && RedMode){
    set_attack_value(AT_NAIR, AG_SPRITE, sprite_get ( "red_nair" ) );
    set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("RedSwish1"));
    set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, sound_get("RedSwish1"));
    set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
    set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, red_new_stab_2);
    set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("RedHit1"));
    set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 1);
    set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, red_new_stab_1);
    set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("RedHit1"));
    //	if(multihit == 1){
	//	set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 0);
	//	set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 0);
	//}
} else {   
	
    reset_attack_value(AT_NAIR, AG_SPRITE);
    reset_window_value(AT_NAIR, 1, AG_WINDOW_SFX);
    reset_window_value(AT_NAIR, 3, AG_WINDOW_SFX);
    reset_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_NAIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_NAIR, 1, HG_HIT_SFX);
    reset_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_NAIR, 2, HG_DAMAGE);
    reset_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_NAIR, 2, HG_HIT_SFX);
}


if(attack == AT_UTILT && RedMode){
	set_attack_value(AT_UTILT, AG_SPRITE, sprite_get ( "red_dtilt" ) );
    set_attack_value(AT_UTILT, AG_AIR_SPRITE, sprite_get ( "red_dtilt" ) );
    set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, sound_get("RedSwish2"));
    set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 14);
    set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3);
    set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, red_new_stab_1);
    set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("RedHit2"));
    set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 14);
    set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 3);
    set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, red_new_stab_1);
    set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, sound_get("RedHit2"));
} else {   
	
    reset_attack_value(AT_UTILT, AG_SPRITE);
    reset_attack_value(AT_UTILT, AG_AIR_SPRITE);
    reset_window_value(AT_UTILT, 2, AG_WINDOW_SFX);
    reset_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_UTILT, 1, HG_DAMAGE);
    reset_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_UTILT, 1, HG_HIT_SFX);
    reset_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_UTILT, 2, HG_DAMAGE);
    reset_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_UTILT, 2, HG_HIT_SFX);
}
if(attack == AT_DAIR && RedMode){
	
    set_attack_value(AT_DAIR, AG_SPRITE, sprite_get ( "red_dair" ) );
    set_attack_value(AT_DAIR, AG_AIR_SPRITE, sprite_get ( "red_dair" ) );
    set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("RedSwish2"));
    set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 3);
    set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, red_new_stab_1);
    set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("RedHit1"));
    set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 5);
    set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, red_new_stab_1);
    set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("Meteor Smash"));
} else {   
	
    reset_attack_value(AT_DAIR, AG_SPRITE);
    reset_attack_value(AT_DAIR, AG_AIR_SPRITE);
    reset_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_DAIR, 1, HG_DAMAGE);
    reset_window_value(AT_DAIR, 1, AG_WINDOW_SFX);
    reset_hitbox_value(AT_DAIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_DAIR, 1, HG_HIT_SFX);
    reset_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_DAIR, 2, HG_DAMAGE);
    reset_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_DAIR, 2, HG_HIT_SFX);
}

if(attack == AT_BAIR && RedMode){
	
    set_attack_value(AT_BAIR, AG_SPRITE, sprite_get ( "red_bair" ) );
    set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, sound_get("RedSwish4"));
    set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 5);
    set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, red_new_stab_1);
    set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("RedHit2"));
} else {   
	
    reset_attack_value(AT_BAIR, AG_SPRITE);
    reset_window_value(AT_BAIR, 2, AG_WINDOW_SFX);
    reset_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_BAIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_BAIR, 1, HG_HIT_SFX);
}

if(attack == AT_JAB && RedMode){
    set_attack_value(AT_JAB, AG_SPRITE, sprite_get ( "red_jab" ) );
    set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("RedSwish1"));
    set_window_value(AT_JAB, 3, AG_WINDOW_SFX, sound_get("RedSwish1"));
    set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3);
    set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 1);
    set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, red_new_stab_2);
    set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("RedHit3"));
    set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
    set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, red_new_stab_1);
    set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("RedHit3"));
    //	if(multihit == 1){
	//	set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 0);
	//	set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 0);
	//}
} else {   
	
    reset_attack_value(AT_JAB, AG_SPRITE);
    reset_window_value(AT_JAB, 1, AG_WINDOW_SFX);
    reset_window_value(AT_JAB, 3, AG_WINDOW_SFX);
    reset_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_JAB, 1, HG_DAMAGE);
    reset_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_JAB, 1, HG_HIT_SFX);
    reset_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_JAB, 2, HG_DAMAGE);
    reset_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_JAB, 2, HG_HIT_SFX);
}
/*
if(attack == AT_USPECIAL && doubleUspecial == 1){
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
} else { 
	reset_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE);
}
*/

//Recharge
if (attack == AT_DSPECIAL){
    if (move_cooldown[AT_DSPECIAL]==0){
        if (recharged == 1){
            recharged = 0;
            recoverytimer = 0;
            recoverytick = 0;
        }
    }
}

if (attack == AT_DSPECIAL_2){
    if (move_cooldown[AT_DSPECIAL_2]==0){
        if (recharged == 1){
            recharged = 0;
            recoverytimer = 0;
            recoverytick = 0;
        }
    }
}


user_event(13);

