//article2_init
//BOMB
spr_dir = player_id.spr_dir;

can_be_grounded = false;
ignores_walls = true;
uses_shader = false;

//sprite_index = sprite_get("bomb");

state = 0
// 0 = normal
// 1 = going to explode

x_shake = 0;

step_im_ref = 0;

im_spd = 0.2;

im_step = 0;

cant_be_hit = 0;

sided = 1;
hurt_player = true;

destroyed = false;
step = 0;


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