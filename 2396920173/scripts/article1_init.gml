//article1_init

uspec_afterimages = [[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]]; //[x,y,timer]
spawn_afterimage = false;

hitbox_active = false;

can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

piece = undefined;
wire_sprite = undefined;

perform_attack = false;
progress_attack = false;
window = 0;
window_timer = 0;
attack_timer = 0;

rook_cannon = undefined; //[x, y, rotation, image_index]

missile_timer = 0;
range_dist = 0;
target_player = undefined;
missile_angle = 0;
draw_missile = false;
has_hit = false;
king_armour = false;
armour_cooldown = 0;
armour_timer = 0;
bishop_cooldown = 0;

timer = 0;

prevHitboxID = undefined;
prevHitboxPlayerID = undefined;
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

hp = 2;

not_hitpause_timer = 1000;
gonnadie = false;
decreased_var = false;
die_timer = 0;

hp_max = 0;
height = 0;

invincible = false;