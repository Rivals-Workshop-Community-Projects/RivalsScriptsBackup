//Muno's phone code
if("phone" not in player_id) {
	// this code turns the "solid article" into a "phone article", so that, for
	// all intents and purposes, it won't interact with any solid article code.
	// instead, it can now draw the phone's big screen while the phone is in
	// sleep mode.
	sprite_index = asset_get("empty_sprite");
	mask_index = asset_get("empty_sprite");
	uses_shader = false;
	orig_player_id = player_id;
	player_id = noone;
	num = "phone";
	depth = 7;
	x = 0;
	y = 10000;
	disable_movement = true;
	exit;
}

//Article Solid Init (defaults to stone block)

//Correct our owner ID if we were spawned by a hitbox
if(player_id.object_index == pHitBox) {
	// print_debug("Spawned by hitbox");
	player_id = player_id.player_id;
}

//Inherit certain useful variables
POWER_OBJ = player_id.POWER_OBJ;
PROG_SFX_OBJ = player_id.PROG_SFX_OBJ;
ATTACKS_OBJ = player_id.ATTACKS_OBJ;

variant = "stone block";
is_ice = false;

state = "Offer";
state_timer = 0;

prev_x = x; prev_y = y;

fall_accel_dropin = 0.25; fall_speed_dropin = 11;
fall_accel_active = 0.5; fall_speed_active = 14;
tangible_y = player_id.y;

can_collide = true; last_colliding_mask = mask_index;

delete_in_blastzones = true;
phone_blastzone_r = player_id.phone_blastzone_r;
phone_blastzone_l = player_id.phone_blastzone_l;
phone_blastzone_t = player_id.phone_blastzone_t;
phone_blastzone_b = player_id.phone_blastzone_b;

value = 0; invince_time = 0;

hitpause = false; hitstop = 0; hitstop_full = 0;
old_hsp = 0; old_vsp = 0;

sprite_index = sprite_get("item_stone_block");
image_xscale = 2; image_yscale = 2;

can_be_grounded = false;
ignores_walls = true;
uses_shader = false;

age = 0;
life = 1800;
mark_for_destruction = false;