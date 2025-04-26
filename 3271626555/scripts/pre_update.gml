
if (instance_exists(hit_player_obj)){
	enemy_window = hit_player_obj.window;
	with (pHitBox){
		if (player_id = other.hit_player_obj) other.enemy_hitbox_out = true;
		else other.enemy_hitbox_out = false;
	}
	if (enemy_window == 1) enemy_hitbox_out = false;
}

with (oPlayer){
    if (player != other.player){
        if (state != PS_PRATFALL && state != PS_PRATLAND && prat_land_time = 60){
            prat_land_time = other.enemy_pratland;
        }
        if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
            var enemy_last_window = get_attack_value(attack, AG_NUM_WINDOWS); 
            if (other.enemy_window >= 2 && (other.enemy_window < enemy_last_window || other.i_got_hit == true)) other.enemy_attacks = true;
            else other.enemy_attacks = false;
        }
        else {
            other.enemy_attacks = false;
        }
        if (other.spr_dir == spr_dir){
            other.backstab = true;
        }
        else {
            other.backstab = false;
        }
    }
}
if (i_got_hit && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_JAB || attack == AT_NAIR)) can_still_parry = true;
else {
	i_got_hit = false;
	can_still_parry = false;
}
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) i_got_hit = false;

if ((enemy_hitbox_out == true && enemy_attacks == true) || can_still_parry == true){
    set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 0);
    set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 18);
    set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 0);
    set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 18);
    set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 0);
    set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 18);
    set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 0);
    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 18);
    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0);
//    set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, 90);
}
else {
    reset_hitbox_value(AT_JAB, 1, HG_DAMAGE);
    reset_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE);
    reset_hitbox_value(AT_NAIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE);
    reset_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING);
    reset_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE);
    reset_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE);
    reset_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING);
    reset_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE);
    reset_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING);
//    reset_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE);
}

if (suppress_music > 0){
	suppress_stage_music(0.1, 0.5 );
	suppress_music--;
	if (suppress_music <= 0) suppress_music = 0;
}
