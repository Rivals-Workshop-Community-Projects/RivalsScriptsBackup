// spiny init
sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("koopa_mask");

smb_is_mob = true;

spr_spawn = sprite_get("spiny_land");
subimg_spawn = 1;
sound_play(sound_get("spawn_spiny"));

state = PS_SPAWN;
queued_state = PS_SPAWN;
state_timer = 0;

can_be_grounded = true;
ignores_walls = false;
fall_through = false;
was_free = false;

unbashable = true;

is_hittable = true;
hittable_hitpause_mult = 0;
can_hit_default = array_create(20, 1);
hitpause = 0;
hitstun_full = 0;
hitstun = 0;
old_hsp = 0;
old_vsp = 0;

ouchbox = noone;
last_hpo = noone;
last_hit_player = 0;

blast_l = get_stage_data(SD_LEFT_BLASTZONE_X);
blast_r = get_stage_data(SD_RIGHT_BLASTZONE_X);
blast_b = get_stage_data(SD_BOTTOM_BLASTZONE_Y);

// STATS
walk_speed          = 1.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
dash_speed          = 6.5;
ground_friction     = 0.45;		// 0.3  -  1
max_fall            = 10;		// 6    -  11
gravity_speed       = 0.5;		// 0.3  -  0.6
land_time           = 4;        // 4    -  6
jump_speed          = 8;

// anim speeds
walk_anim_speed = 0.25;

// misc.
spr_walk = sprite_get("spiny_walk");
spr_fall = sprite_get("spiny_fall");
