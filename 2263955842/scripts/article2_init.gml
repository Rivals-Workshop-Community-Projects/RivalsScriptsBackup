//article1_init
// NSPECIAL YIN YANG

depth = player_id.depth - 1;
can_be_grounded = false;
ignores_walls = true;
uses_shader = false;

free = true;

spr_dir = player_id.spr_dir;

sprite_index = sprite_get("yinyang");
var ea_alt = false;

with (player_id)
{
    if (get_player_color(player) == 16)
    {
        other.sprite_index = sprite_get("yinyang_ea");
    }
    
    if (get_player_color(player) == 17)
    {
        other.sprite_index = sprite_get("slimepuffen_dvd");
    }
}


image_spd = 0.2;
life = 8; // nbr of bounce before breaking
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


can_be_hit_timer_ref = 40;
can_be_hit_timer = 0

hit_timer_ref = 60;
if (player_id.is_reimu_a) // orb can damage if hit_timer = 0;
{
    hit_timer = 2; // to not get hit while spawning the orb
    my_hitbox = noone;
}
else
{
    hit_timer = 0;
    my_hitbox = create_hitbox( AT_NSPECIAL, 1, floor(x) + floor(hsp), floor(y) + floor(vsp));
}



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
