// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

if(combo_num == 15){
	print("lol")
	outline_color = [ 255, 204, 0 ];
	init_shader();
    activate_crit();
}

if(combo_cooldown == 600){
    outline_color = [ 0, 0, 0 ];
	init_shader();
    deactivate_crit();
}

if(combo_cooldown > 0){
    combo_cooldown--;
    hud_combo_cooldown++;
}

combo_timer = max(combo_timer-!combo_respawnpause,0)
//update
for(var i=0; i < instance_number(oPlayer); i++)
{
  var p = instance_find(oPlayer,i);
  if p != self
  {
  	if (combo_timer == 1)
	{
	    combo_num = 0;
	    hud_combo_num = 0;
	    
	    if (!hitpause)
	    {
	    	sound_play(sound_get("dusterbass_miss"), false, noone, 1.5);
	    }
	    
	    outline_color = [ 0, 0, 0 ];
	    p.other_combo_num = 0;
	    p.other_combo_marked = false;
		init_shader();
		deactivate_crit();
	}
  }
}

if(combo_cooldown == 1){
	hud_combo_num = 0;
	//if(!hitpause){
    sound_play(sound_get("sfx_attackstart"), false, noone, 2);
	//}
}

if(bomb_state = true){
	if(bomb_timer > 0){
	bomb_timer--;
	}
}
if(bomb_state = true){
if(bomb_timer == 1){
	bomb_missfire = true;
	instance_create(x, y-38, ("obj_article1"));
	bomb_timer = 0;
	bomb_state = false;
	move_cooldown[AT_DSPECIAL] = 360;
}
}

if (get_gameplay_time() < 120){
	if(get_gameplay_time() == 119){
	if(taunt_down){
		sound_play(sound_get("dusterbass_miss"), false, noone, 1.5);
		duster_muted = true;
		}
	}
}

if(state == PS_PARRY){
    if(state_timer == 1){
    	if(!hitpause){
        sound_play(sfx_parry);
    	}
    }
}
if(combo_timer > 0){
	if (hit_player_obj != -4 and hit_player_obj.state == PS_RESPAWN){
	combo_respawnpause = true;
	}if (hit_player_obj != -4 and hit_player_obj.state != PS_RESPAWN){
		combo_respawnpause = false;
	}
}

#define activate_crit()

set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 16);

set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DAIR, 1, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_DAIR, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 16);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DAIR, 2, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_DAIR, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 16);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DAIR, 3, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 16);

set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 16);

set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 11.5);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 16);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 11.5);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 16);

set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DTILT, 1, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 16);

set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FAIR, 1, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_FAIR, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 16);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FAIR, 2, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 16);

set_hitbox_value(AT_FSPECIAL, 1, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 16);
set_hitbox_value(AT_FSPECIAL, 2, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 11.5);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 16);

set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FTILT, 1, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 16);

set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_JAB, 1, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_JAB, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 16);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_JAB, 2, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_JAB, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 2, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 16);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_JAB, 3, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_JAB, 3, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 16);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_JAB, 4, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_JAB, 4, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 16);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_JAB, 5, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 16);

set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NAIR, 1, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 16);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NAIR, 2, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 16);

set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_UAIR, 1, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 16);

set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 16);

set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 11.5);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 16);

set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_UTILT, 1, HG_HIT_LOCKOUT, 45);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 16);

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