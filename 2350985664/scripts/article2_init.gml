//article2_init
spr_dir = player_id.spr_dir;

can_be_grounded = false;
ignores_walls = true;
uses_shader = false;

sprite_index = sprite_get("familiar");

state = 0
// 0 = normal
// 1 = catch
// 2 = leaving 
idle_spd = 0.2;
catch_spd = 0.3;

image = 0;

step = 0;
destroyed = false;


x_ref = x;
y_ref = y;

rad = 0;
ang = -90 

ang_spd = 2;
rad_max = 15;

scale = 0;
image_xscale = 0;
image_yscale = 0;

last_image = 0;

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

sing_image_max = 5;
sing_image = sing_image_max ;

my_hitbox = noone;
my_grab_hitbox = noone;

grab_id = noone;
set_place = false;

cant_grab_time = 0;

has_played_leaving_sound = false;
destroyed = false;



