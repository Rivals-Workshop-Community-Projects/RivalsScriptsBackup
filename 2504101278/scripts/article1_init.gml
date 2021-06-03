STATE_FLOAT = 0
STATE_ATTACK = 1
STATE_POP = 2

split_baby = false;

col = get_player_hud_color(player_id.player);

ignores_walls = false;
player_id.nspecial_projectile = self;

FLOAT_SPRITE = sprite_get("nspecial_proj")
ATTACK_SPRITE = sprite_get("nspecial_hit")
POP_SPRITE = sprite_get("nspecial_die")

//spr_dir = player_id.spr_dir;
sprite_index = FLOAT_SPRITE;
var t = floor(sprite_get_number(sprite_index)/2);
image_index = t*(1 - player_id.spr_dir)
//print(image_index)

depth = player_id.depth - 1
state = 0;
state_timer = 0;
lock_state = false;
hitbox = create_hitbox(AT_NSPECIAL,1,x,y);

fx = player_id.hit_sprites[3]

homing_threshold = 40;

being_carried = false;
//How long it takes until the mini is able to move
can_manual_move_count = 20;

//max hsp
max_hsp = 24