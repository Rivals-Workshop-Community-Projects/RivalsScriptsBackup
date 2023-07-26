var hbox_hit_knock = enemy_hitboxID.kb_value;
var hbox_hit_dmg = enemy_hitboxID.damage;
var hbox_hit_stun = enemy_hitboxID.hitpause;

move_cooldown[AT_USPECIAL] = 0;
penny_dair_used = 0;
pen_didairdash = false;

if prev_state == PS_ATTACK_AIR or prev_state == PS_ATTACK_GROUND{
	switch(attack){
		case AT_USTRONG_2:
		case AT_DSTRONG_2:
		case AT_FSTRONG_2:
		case AT_USPECIAL_2:
			penny_install = false;
			sound_stop(asset_get("sfx_absa_jabloop"));
			sound_play(asset_get("sfx_ell_cooldown"));
			break;
	}
}

// FUCK
if(instance_exists(grabbedid)){
	grabbedid.state = PS_TUMBLE;
	grabbedid.wrap_time = 0;
	grabbedid = noone;
}

// fuck me i guess
// seriously, i have to write this fucking code to just make sure I can like actually work as an individual
// it's going to be @'d at me in like .5 nanoseconds.
// not pushing this yet, I want to get more feedback first.

/*
if (enemy_hitboxID.type == 1 and hbox_hit_dmg > 0 and enemy_hitboxID.force_flinch == 0) and mine_player == enemy_hitboxID.player_id{
	if mine != noone {
		instance_destroy(mine);
	}
	mine = instance_create(mine_player.x, mine_player.y-8, "obj_article2");
	mine.player_id = id;
	mine.penny_orig_owner = id;
	mine.penny_orig_mine_id = mine;
	if !instance_exists(mine.hbox_mine) and mine.pen_mine_hbox_dead == false{
		if mine.pen_c4_charged == false{
			mine.hbox_mine = create_hitbox(AT_DSPECIAL, 1, x, y);
			mine.hbox_mine.orig_player_id = mine.penny_orig_owner;
			mine.hbox_mine.player_id = mine.player_id;
		} else {
			mine.hbox_mine = create_hitbox(AT_DSPECIAL, 2, x, y);
			mine.hbox_mine.orig_player_id = mine.penny_orig_owner;
			mine.hbox_mine.player_id = mine.player_id;
		}
	}
	mine.hbox_mine.can_hit[enemy_hitboxID.player] = false;
	
	with(mine_player){
		penny_strapped = false;
		strapped_id = noone;
	}
	mine_player = noone;
	opponent_strapped = false;
	
    if enemy_hitboxID.effect != 9{
        mine.hitstop = ceil((get_hitstop_formula(0, enemy_hitboxID.damage, enemy_hitboxID.hitpause, 0, 0)) * .5);
    } else {
        mine.hitstop = 0;
    }
    
    var temp_angle = get_hitbox_angle( enemy_hitboxID );
    var force = round((enemy_hitboxID.kb_value + enemy_hitboxID.kb_scale) * 1.5);
    mine.hsp = lengthdir_x( force, temp_angle );
    mine.vsp = lengthdir_y( force, temp_angle );
    mine.old_hsp = lengthdir_x( force, temp_angle );
    mine.old_vsp = lengthdir_y( force, temp_angle );

    if enemy_hitboxID.no_other_hit != 0{
        mine.hit_cool = enemy_hitboxID.no_other_hit;
    } else {
        mine.hit_cool = ((enemy_hitboxID.length - enemy_hitboxID.hitbox_timer));
    }
}


goboom = false;

if goboom{
	asset_get("mfx_back");
}*/