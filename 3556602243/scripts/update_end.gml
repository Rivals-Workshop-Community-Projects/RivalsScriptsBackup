//
/*
with oPlayer {
	print(state)
	crawl_speed = 10;
}
*/

/*
with pHitBox {
	if "ror_damage_applied" !in self {
		ror_damage_applied = true;
		damage++;
	}
}
*/

user_event(10);


//Post Update
/*
var kirby_heal_sfx = sound_get("ror_kirbheal");
with oPlayer {
	if "ror_queen_heal" in self && ror_queen_heal {
		set_player_damage(player, clamp(get_player_damage(player) - ror_queen_heal, 0, 999));
		sound_stop(kirby_heal_sfx);	
		sound_play(kirby_heal_sfx);
		//heal_player(self, ror_queen_heal, kirby_heal_sfx)
		ror_queen_heal = 0;
	}
}
*/

#define heal_player(_player_obj, _base, _sfx) {
	with _player_obj {
		set_player_damage(player, clamp(get_player_damage(player) - (_base * (ror_card_bamboo + 1)), 0, 999));
		sound_stop(_sfx);	
		sound_play(_sfx);			
	}	
	return;
}

//Knockback
/*
with oPlayer {
	if (state_cat == SC_HITSTUN && state_timer == 0) {
		should_make_shockwave = false;
		print("Calculating New Knockback");
		//Variables
		var _hitbox = enemy_hitboxID;
		var _damage = get_player_damage(player);
		//var _angle = get_hitbox_angle( _hitbox );
		var _kb_multi = 1; //Default is 1
		//Hitbox is set to 0 Damage cause your damage is already applied
		//Functions
		var _kb = get_kb_formula( _damage, knockback_adj, _kb_multi, 0, _hitbox.kb_value, _hitbox.kb_scale)  
		var _hitstun = get_hitstun_formula( _damage, knockback_adj, _kb_mult, 0, _hitbox.kb_value, _hitbox.kb_scale) 
		var _hitstop = get_hitstop_formula( _damage, knockback_adj, _hitbox.hitpause, _hitbox.hitpause_grow, _hitbox.extra_hitpause); 
		//
		if (type == 1) {
			enemy_hitboxID.player_id.hitstop_full = _hitstop - _hitbox.extra_hitpause;
		}
		hitstop_full = _hitstop;
		orig_knock = _kb;
		//
		//if will_die_from_kb(instance, power, angle, hitstun) {
		if true {
			set_kill_bg(x, y, 1);
		}
		
	}
}
*/