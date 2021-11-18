//Article 2 Init (defaults to Super Mushroom)
player = player_id.player;

//Inherit certain useful variables
POWER_OBJ = player_id.POWER_OBJ;
PROG_SFX_OBJ = player_id.PROG_SFX_OBJ;
ATTACKS_OBJ = player_id.ATTACKS_OBJ;

variant = "power-up";
subvariant = POWER_OBJ.super_mushroom;

state = "Offer";
state_timer = 0;

prev_x = x; prev_y = y;

fall_accel_dropin = 0.25; fall_speed_dropin = 11;
fall_accel_active = 0.5; fall_speed_active = 14;
tangible_y = player_id.y;

MorshuCanGrab = true;

delete_in_blastzones = true;
phone_blastzone_r = player_id.phone_blastzone_r;
phone_blastzone_l = player_id.phone_blastzone_l;
phone_blastzone_t = player_id.phone_blastzone_t;
phone_blastzone_b = player_id.phone_blastzone_b;

value = 0; invince_time = 0;

exclusive = true;

hitpause = false; hitstop = 0; hitstop_full = 0;
old_hsp = 0; old_vsp = 0;

sprite_index = sprite_get("item_mushroom");
image_xscale = 2; image_yscale = 2;

can_be_grounded = false;
ignores_walls = true;
uses_shader = false;

age = 0;
life = -1;
mark_for_destruction = false;