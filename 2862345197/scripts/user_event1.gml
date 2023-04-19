//ALTS p1

spike1_index = sprite_get("dstrong_indicator_spawn");
spike2_index = sprite_get("dstrong_indicator_loop");
spike3_index = sprite_get("dstrong_spike");

spike1_index_a = sprite_get("dstrong_indicator_spawn_air");
spike2_index_a = sprite_get("dstrong_indicator_loop_air");
spike3_index_a = sprite_get("dstrong_spike_air");

if get_player_color(player) = 2 {
hat = "ice";
hatoffs = 3;
} else if get_player_color(player) = 3 {
hat = "man";
hatoffs = 2;
} else if get_player_color(player) = 4 || get_player_color(player) = 27{
hat = "top";
hatoffs = 1;
} else if get_player_color(player) = 5 {
hat = "uni";
hatoffs = 4;
} else {
hat = "none";
}

switch (get_player_color(player)){
case 0:
//
break;

case 9:
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 50);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 52);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 54);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 57);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("dstrong_indicator_spawn_dys"));
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_dys"));
spike1_index = sprite_get("dstrong_indicator_spawn_dys");
spike2_index = sprite_get("dstrong_indicator_loop_dys");
spike3_index = sprite_get("dstrong_spike_dys");

spike1_index_a = sprite_get("dstrong_indicator_spawn_air_dys");
spike2_index_a = sprite_get("dstrong_indicator_loop_air_dys");
spike3_index_a = sprite_get("dstrong_spike_air_dys");
break;

case 23:
AT_TAUNT_index = sprite_get("taunt_jonas");
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_jonas"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("WOWIE"));
break;

case 10:
case 11:
case 12:
case 13:
    outline = true;
	sprite_change_offset("portrait", 0, 350);
    set_victory_sidebar( sprite_get( "result_small_outline" ));
break;

case 24:
    set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 25);
    set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 28);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 25);
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 28);
	
	set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 60);
	set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 63);
	set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 66);
	set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 69); //nice
break;
case 25:
    set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 72);
	set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 75);
	set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 78);
	set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 81);
break;
case 26:
    set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 35);
    set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 38);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 35);
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 38);
	
	set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 84);
	set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 87);
	set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 90);
	set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 93);
break;
break;

case 2:
case 3:
case 4:
case 5:
case 27:
char_height = 60;

//ATTACKS
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 6*hatoffs);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 6*hatoffs + 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6*hatoffs + 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 10*hatoffs);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 10*hatoffs + 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 10*hatoffs + 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAME_START, 9*hatoffs);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 9*hatoffs + 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 9*hatoffs + 3);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 9*hatoffs + 5);

set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 11*hatoffs);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 11*hatoffs + 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 11*hatoffs + 7);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 11*hatoffs + 8);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 10*hatoffs);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 10*hatoffs + 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 10*hatoffs + 4);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10*hatoffs + 7);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 7*hatoffs);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 7*hatoffs + 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7*hatoffs + 5);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 7*hatoffs);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 7*hatoffs + 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7*hatoffs + 5);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 10*hatoffs);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 10*hatoffs + 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 10*hatoffs + 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10*hatoffs + 6);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 8*hatoffs);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 8*hatoffs + 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8*hatoffs + 6);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 8*hatoffs);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 8*hatoffs + 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8*hatoffs + 6);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 5*hatoffs);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5*hatoffs + 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 5*hatoffs);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5*hatoffs + 3);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 12*hatoffs);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 12*hatoffs + 3);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 12*hatoffs + 6);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 12*hatoffs + 9);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 11*hatoffs);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 11*hatoffs + 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11*hatoffs + 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11*hatoffs + 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11*hatoffs + 6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 9*hatoffs);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 9*hatoffs + 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9*hatoffs + 5);

set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 12*hatoffs);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 12*hatoffs + 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 12*hatoffs + 4);
set_window_value(AT_PHONE, 1, AG_WINDOW_ANIM_FRAME_START, 20*hatoffs);
set_window_value(AT_PHONE, 2, AG_WINDOW_ANIM_FRAME_START, 20*hatoffs + 5);
set_window_value(AT_PHONE, 3, AG_WINDOW_ANIM_FRAME_START, 20*hatoffs + 15);

set_window_value(49, 1, AG_WINDOW_ANIM_FRAME_START, 9*hatoffs);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 9*hatoffs + 1);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 9*hatoffs + 3);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 9*hatoffs + 5);

set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("idle_" +string(hat)) );
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("bighurt_" +string(hat)) );

//OTHER
if get_player_color( player ) == 2 {
sprite_change_offset("portrait", 0, 1400);
} else if get_player_color( player ) == 3 {
sprite_change_offset("portrait", 0, 1050);
} else if get_player_color( player ) == 4 || get_player_color( player ) == 27 {
sprite_change_offset("portrait", 0, 700);
} else if get_player_color( player ) == 5 {
sprite_change_offset("portrait", 0, 1750);
}
break;
}

//RUNE FUCKERY
if has_rune("A") {
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
}

if has_rune("B") {
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 318);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -195);
}

if has_rune("C") {
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 9999);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 9999);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 9999);
}

if has_rune("D") {
set_num_hitboxes(AT_USPECIAL, 3);
}

if has_rune("F") {
node_hb_lifetime = 60;
}

if has_rune("I") {
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 9999);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 9999);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 9999);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 9999);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 9999);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 9999);
set_hitbox_value(AT_UAIR, 3, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 9999);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 9999);
set_hitbox_value(AT_UAIR, 5, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 9999);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 9999);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 9999);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 9999);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 9999);
set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 9999);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 9999);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 9999);
}

if has_rune("J") {
max_djumps          = 4;
}

if has_rune("K") {
set_hitbox_value(AT_DTILT, 1, HG_EFFECT, 11);
set_hitbox_value(AT_DTILT, 1, HG_EFFECT, 11);

set_hitbox_value(AT_FAIR, 1, HG_EFFECT, 11);
set_hitbox_value(AT_FAIR, 2, HG_EFFECT, 11);
set_hitbox_value(AT_FAIR, 3, HG_EFFECT, 11);
set_hitbox_value(AT_FAIR, 4, HG_EFFECT, 11);
set_hitbox_value(AT_BAIR, 1, HG_EFFECT, 11);

set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, 11);
set_hitbox_value(AT_FSTRONG, 2, HG_EFFECT, 11);
set_hitbox_value(AT_FSTRONG, 3, HG_EFFECT, 11);

set_hitbox_value(AT_DSTRONG, 2, HG_EFFECT, 11);
set_hitbox_value(AT_USTRONG, 1, HG_EFFECT, 11);

set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 11);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_EFFECT, 11);
}

if has_rune("L") {
walk_accel          = 2;		// 0.2  -  0.5
walk_turn_time      = 0;		// 6
initial_dash_time   = 0;		// 8    -  16       zetterburn's is 14
dash_speed          = 8;		// 5    -  9
dash_turn_time      = 0;		// 8    -  20
dash_turn_accel     = 2;		// 0.1  -  2
dash_stop_time      = 0;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0;		// 0.25 -  0.5

jump_start_time     = 1;
air_accel           = 1;
land_time           = 0;		// 4    -  6

set_attack_value(AT_NAIR, AG_LANDING_LAG, 1);
}

if has_rune("M") {
nodes_max = 10;
}
