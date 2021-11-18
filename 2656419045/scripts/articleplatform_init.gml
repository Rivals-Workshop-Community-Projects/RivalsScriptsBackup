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

variant = "ice block projectile attachment";
is_ice = true;

state = "Attach";
state_timer = 0;

prev_x = x; prev_y = y;

delete_in_blastzones = true;
phone_blastzone_r = player_id.phone_blastzone_r;
phone_blastzone_l = player_id.phone_blastzone_l;
phone_blastzone_t = player_id.phone_blastzone_t;
phone_blastzone_b = player_id.phone_blastzone_b;

value = 0; invince_time = 0;

sprite_index = sprite_get("pmask_ice");
image_xscale = 2; image_yscale = 2;

can_be_grounded = false;
ignores_walls = true;
uses_shader = false;

age = 0;
life = 1800;
mark_for_destruction = false;