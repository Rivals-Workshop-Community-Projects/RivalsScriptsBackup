//article1_init
// NSPECIAL YIN YANG


//These are the behavior control variables for the Yinyang Orb

yinyang_should_decay_with_bounces = true; //wether the yinyang decays with bounces
remaining_bounce_count = 10; //number of bounces the yinyang orb has, must be greater than 0;

yinyang_has_lifetime = false; //wether the yinyang decays with time, can be true alongside bounces
yinyang_max_lifetime = 240; //only applies if has_lifetime is true

yinyang_gravity = 0
yinyang_air_friction = 0 //air friction is reduction of hsp while moving
yinyang_ground_friction = .5 //ground friction only applies if can_be_grounded is true
yinyang_hitstun_gravity = 0

yinyang_has_min_bounce = false; //wether the yinyang has a minimum bounce height
yinyang_min_bounce_height = 3; //only works if has_min_bounce is true, the minimum height the yinyang bounces as

yinyang_vertical_bounce_decay = .2; //% reduction of vsp when bouncing
yinyang_horizontal_bounce_decay = 0; //% reduction of hsp when bouncing

yinyang_can_be_grounded = false; //wether the yinyang can stop bouncing and land on the ground
yinyang_ground_threshold = 2; //vsp range where yinyang will ground itself instead of bouncing


yinyang_should_take_damage = true; //Wether the yinyang should accumulate damage like a player
yinyang_damage = 20; //starting % of yinyang orb, this is used to determine how much KB the orb takes at base, is still used even if yinyang_should_take_damage is false
kb_adj = 1; //yinyang knockback adjustment, same as a player's

yinyang_should_take_knockback = false; //weather or not yinyangs speed should change with move knockback

yinyang_decays_with_damage = true; //wether the yinyang breaks with taking damage
yinyang_max_damage = 35; //max % on yinyang before breaking, only applies if decays with damage is true

yinyang_should_bounce_on_hit = true; //wether the yinyang bounces off people on hit

yinyang_should_hit_self = false; //weather the yinyang should hit the player
yinyang_should_pass_ownership = false; //weather the yinyang should change which player owns it after being hit







//Yinyang initialization variables you probably dont need to change - Rioku
depth = player_id.depth - 1;
can_be_grounded = false;
ignores_walls = false;
uses_shader = false;
bounce_lockout = 0;
free = true;
active_hitbox = noone;
yinyang_is_grounded = false;
yy_hit_lockout = 0;
life = 0;
last_hit_player = player;
spr_dir = player_id.spr_dir;







sprite_index = sprite_get("yinyang");

image_spd = 0.2;
ray = 26;

is_hold = false;

if (player_id.is_reimu_a)
{
    if (!has_rune("B"))
    {
        spd = 4; // 2
    }
    else
    {
        spd = 6.4;
    }
    life = 9; //16// nbr of bounce before breaking
}
else
{
    spd = 3;
    life = 8; // nbr of bounce before breaking
}



hsp = lengthdir_x( spd, 45 );
vsp = lengthdir_y( spd, 45 );

if (player_id.up_down)
{
    hsp = lengthdir_x( spd, 65 );
    vsp = lengthdir_y( spd, 65 );
}
if (player_id.down_down)
{
    hsp = lengthdir_x( spd, 25 );
    vsp = lengthdir_y( spd, 25 );
}

hsp *= spr_dir;





effect_destroy = hit_fx_create( sprite_get("yinyang_destroy"), 24);



// 16 multiplication
w_bar = 720//view_get_wview();
h_bar = 512// view_get_hview();

// top left coord
x_bar = x - w_bar / 2;// barrier
y_bar = y - h_bar / 2;





w_bar_draw = 0;
h_bar_draw = 0;

draw_alpha = 0;

switch (player)
{
    case 1:
        col = $241ced
    break;
    case 2:
        col = $efb700
    break;
    case 3:
        col = $b1a3ff
    break;
    case 4:
        col = $1de6a8
    break;
}

step = 0;


///      article[index]_init.gml
//You may put this code anywhere in your article init.
 
//make hbox_group array (the old version was really bad because the array actually affected all players no matter what lol)
hbox_group = array_create(4,0);
var i1 = 0;
var i2 = 0;
repeat(4) {
    hbox_group[@i1] = array_create(50,0);
    repeat(50) {
        hbox_group[@i1][@i2] = array_create(10,0);
        i2++;
    }
    i2 = 0;
    i1++;
}
 
hitstun = 0;
hitstun_full = 0;
 
kb_dir = 0;
orig_knock = 0;
 
hit_lockout = 0;
 
article_should_lockout = true; //set to false if you don't want hit lockout.

prev_vsp = vsp;
prev_hsp = hsp;
