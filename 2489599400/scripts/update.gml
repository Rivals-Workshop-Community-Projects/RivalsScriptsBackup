//update

if !((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL) {
	sound_stop( sound_get( "vroom"));
}

if !free {
	move_cooldown[AT_USPECIAL] = 0;
}

if (state == PS_WALL_JUMP) {
	move_cooldown[AT_USPECIAL_2] = 0;
}

//Stance change: change stats when Tape doesn't have his dispenser
if nodispenser {
	hurtbox_spr = sprite_get("nodispenser_ex_tape_hurt_box");
	crouchbox_spr = sprite_get("nodispenser_ex_tape_crouch_box");
	idle_anim_speed = .18;
	walk_anim_speed = .18;
	dash_anim_speed = .25;
	
	walk_speed = 3.5;
	initial_dash_speed = 7.5;
	dash_speed = 6.75;
	ground_friction = .35;

	jump_speed = 11;
	short_hop_speed = 6;
	djump_speed = 10;
	air_max_speed = 5;
	air_friction = .03;
	walljump_hsp = 7;
	walljump_vsp = 9;
	max_fall = 10;
	fast_fall = 12;
	gravity_speed = .55;
	hitstun_grav = .47;
	knockback_adj = 1.05;
	
	land_time = 3;
	wave_land_adj = 1.2;
	
	land_sound = asset_get("sfx_land_med");
	
	//Attack hurtboxes
	set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("nodispenser_jab_hurt"));
	set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("nodispenser_utilt_hurt"));
	set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("nodispenser_ustrong_hurt"));
	set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("nodispenser_ustrong_hurt"));
	set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("nodispenser_fair_hurt"));
	set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("nodispenser_uair_hurt"));
	set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nodispenser_fspecial_hurt"));
	set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nodispenser_dspecial_hurt"));
	
} else { 				//Regular stats
	hurtbox_spr = sprite_get("ex_tape_hurt_box");
	crouchbox_spr = sprite_get("ex_tape_crouch_box");
	idle_anim_speed = .16;
	walk_anim_speed = .2;
	dash_anim_speed = .25;
	
	walk_speed = 3.25;
	initial_dash_speed = 7;
	dash_speed = 6.25;
	ground_friction = .45;

	jump_speed = 12.9;
	short_hop_speed = 6.5;
	djump_speed = 11;
	air_max_speed = 4;
	air_friction = .06;
	walljump_hsp = 7;
	walljump_vsp = 8;
	max_fall = 11;
	fast_fall = 15;
	gravity_speed = .6;
	hitstun_grav = .53;
	knockback_adj = .95;
	
	land_time = 6;
	wave_land_adj = 1.25;
	
	land_sound = asset_get("sfx_land_heavy");
	
	//Attack hurtboxes
	reset_attack_value(AT_JAB, AG_HURTBOX_SPRITE);
	reset_attack_value(AT_UTILT, AG_HURTBOX_SPRITE);
	reset_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE);
	reset_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE);
	reset_attack_value(AT_FAIR, AG_HURTBOX_SPRITE);
	reset_attack_value(AT_UAIR, AG_HURTBOX_SPRITE);
	reset_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE);
	reset_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE);
	
}

//Victory themes
switch (get_player_color(player)){
    case 1:
        set_victory_theme(sound_get("rubberband"));
    break;
    case 2:
        set_victory_theme(sound_get("pencils"));
    break;
    case 3:
        set_victory_theme(sound_get("scissors"));
    break;
    case 4:
        set_victory_theme(sound_get("stapler"));
    break;
    case 6:
        set_victory_theme(sound_get("holepunch"));
    break;
    case 10:
        set_victory_theme(sound_get("vellumental"));
    break;
    case 11:
        set_victory_theme(sound_get("vellumental"));
    break;
    case 12:
        set_victory_theme(sound_get("vellumental"));
    break;
    case 13:
        set_victory_theme(sound_get("vellumental"));
    break;
    case 14:
        set_victory_theme(sound_get("bossfight"));
    break;
    default:
		set_victory_theme(sound_get("victory"));
}

if tapecool > 0 {
	tapecool--;
}

if tapecool == 1 {
	sound_play(asset_get("mfx_coin"));
}

if !(url == 2489599400) {
	set_state(PS_DEAD);
}

with asset_get("pHitBox") {
	if (attack == AT_EXTRA_2 && hbox_num == 1 && player_id.attack_down && 5 > player_id.tapes && player_id.tapecool == 0) {
		if (place_meeting(x,y-4,asset_get("par_block")) || place_meeting(x,y-4,asset_get("par_jumpthrough"))) && !player_id.has_hit {
			player_id.has_hit = 1;
			spawn_hit_fx(x, y-10, 19);
			create_hitbox(AT_EXTRA_2, 3, x, y-10);
			player_id.old_vsp = -6;	
			player_id.old_hsp = player_id.hsp;
			player_id.hitpause = 1;
			player_id.hitstop = 5;
			player_id.hitstop_full = 5;		
			player_id.tapes += 1;		
			player_id.tapecool = 180;		
			take_damage( player, -1, 2);
			sound_play(sound_get("sfx-tape-2"));
		}
	}
}