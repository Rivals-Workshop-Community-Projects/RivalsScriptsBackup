//article1_init

sprite_index = sprite_get("orb")
mask_index = sprite_get("orb_hurt")

unbashable = 0;
was_bashed = false;

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

timer = 0;

image_index = 0;

trail_array = array_create(3, [undefined,undefined])

prevHitboxID = undefined;
prevHitboxNumber = undefined;
prevHitboxAttack = undefined;
prevHitboxGroup = undefined;
damage = 100;
knockback_adj = 1;

hitstun = 0;
hitAngle = 0;
hitKnockback = 0;
hitXDir = 1;
hitYDir = 1;

hitpause = false; //in hitpause or not
hitstop = 0; //The number of frames remaining until hitpause ends
hitstop_full = 0; //The number of frames this instance of hitpause lasts total

pulse = false;
pulse_timer = 0;
pulse_cooldown = 0;

die = false;

has_reversed = false;

hitpause = false;
old_hsp = 0;
hitstop = 0;

orb_explosion_vfx = hit_fx_create(sprite_get("orb_explosion_vfx"), 14);