//
if(bomb_state = true){
    bomb_timer = 0;
    bomb_state = false;
    move_cooldown[AT_DSPECIAL] = 360;
}
if(combo_num > 0){
	if(my_hitboxID.type = 1 or my_hitboxID.attack == AT_NSPECIAL){
combo_num = 0;
hud_combo_num = 0;
hit_player_obj.other_combo_num = 0;
hit_player_obj.other_combo_marked = false;
sound_play(sound_get("dusterbass_miss"), false, noone, 1.5);
combo_cooldown = 300;
hud_combo_cooldown = 0;
hud_cooldown_mult = 1;
combo_timer = 0;
outline_color = [ 0, 0, 0 ];
init_shader();
deactivate_crit();
	}
}

if(my_hitboxID.attack == AT_DSPECIAL){
	smoke_hitbox_reset = true;
}

var temp_player = hit_player_obj.player;

if(my_hitboxID.attack == AT_NSPECIAL) with my_hitboxID{
	hitbox_timer = 0;
}

if (my_hitboxID.attack == AT_FTHROW || my_hitboxID.attack == AT_DTHROW || my_hitboxID.attack == AT_DSPECIAL_2){
	 if(my_hitboxID.hbox_num == 1){
	my_hitboxID.hitbox_timer = 0;
	bomb_missfire = true;
	bomb_owner = hit_player;
	//print(hit_player_obj);
	 }
}if (my_hitboxID.attack == AT_UTHROW){
	 if(my_hitboxID.hbox_num == 1){
	my_hitboxID.hitbox_timer = 0;
	bomb_missfire = true;
	bomb_owner = hit_player;
	 }
}

if(my_hitboxID.attack == AT_DSPECIAL){
	move_cooldown[AT_DSPECIAL] += 240;
bomb_missfire = true;
smokebomb.state = 2;
smokebomb.state_timer = 0;
bomb_owner = hit_player;
//smokebomb.smoke_owner = hit_player;
}

#define deactivate_crit()
reset_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_BAIR, 1, HG_DAMAGE);

reset_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_DAIR, 1, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_DAIR, 1, HG_DAMAGE);
reset_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_DAIR, 2, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_DAIR, 2, HG_DAMAGE);
reset_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_DAIR, 3, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_DAIR, 3, HG_DAMAGE);

reset_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_DATTACK, 1, HG_DAMAGE);
reset_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE);

reset_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_DTILT, 1, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_DTILT, 1, HG_DAMAGE);

reset_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_FAIR, 1, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
reset_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_FAIR, 2, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_FAIR, 2, HG_DAMAGE);

reset_hitbox_value(AT_FSPECIAL, 1, HG_DRIFT_MULTIPLIER);
reset_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_FSPECIAL, 2, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE);
reset_hitbox_value(AT_FSPECIAL, 2, HG_SDI_MULTIPLIER);


reset_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE);

reset_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_FTILT, 1, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_FTILT, 1, HG_DAMAGE);

reset_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_JAB, 1, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH);
reset_hitbox_value(AT_JAB, 1, HG_DAMAGE);
reset_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_JAB, 2, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_JAB, 2, HG_FORCE_FLINCH);
reset_hitbox_value(AT_JAB, 2, HG_DAMAGE);
reset_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_JAB, 3, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_JAB, 3, HG_DAMAGE);
reset_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_JAB, 4, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_JAB, 4, HG_DAMAGE);
reset_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_JAB, 5, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_JAB, 5, HG_DAMAGE);

reset_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_NAIR, 1, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_NAIR, 1, HG_DAMAGE);
reset_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_NAIR, 2, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_NAIR, 2, HG_DAMAGE);

reset_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_UAIR, 1, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_UAIR, 1, HG_DAMAGE);
reset_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_UAIR, 2, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_UAIR, 2, HG_DAMAGE);

reset_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_USPECIAL, 1, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE);

reset_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_USTRONG, 1, HG_DAMAGE);

reset_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_UTILT, 1, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_UTILT, 1, HG_DAMAGE);