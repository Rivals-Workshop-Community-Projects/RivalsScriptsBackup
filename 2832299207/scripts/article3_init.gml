//article3_init.gml

//mantis

flash_timer = 0

mantis_number = 1;

sprite_index = asset_get("empty_sprite")
mask_index = asset_get("empty_sprite")

vfx_kill = hit_fx_create(sprite_get("mantis_kill_vfx"), 20)

state = PS_ATTACK_AIR
attack = undefined

timer = 0

window = 0
window_timer = 0
state_timer = 0

image_index = 0

depth = 4

//hit article code

hitstop = 0;
hitstop_full = 0;
has_hit = false;

damage = 0
origID = player_id
prevHitboxID = undefined
prevHitboxNumber = undefined
prevHitboxPlayerID = undefined
prevHitboxAttack = undefined
prevHitboxGroup = undefined
hitstun = 0
invincible = false
hitAngle = 0
hitXDir = 0
hitYDir = 0
hitKnockback = 0
not_hitpause_timer = 0
hitbox_active = false
prev_vsp = 0
prev_hsp = 0


hp_max = 100;

knockback_adj = 1

spawn_num = 0