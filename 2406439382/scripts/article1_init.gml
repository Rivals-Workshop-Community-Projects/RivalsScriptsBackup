//article1_init

can_be_grounded = false;
ignores_walls = true;
uses_shader = false;

sided = 1;

idle_spd = 0.05;


state = 0;
// -1 = spawning
// 0 = dile
// 1 = leaving
// 2 = got hit
// 3 = hit and waiting to leave
// 4 = hit by uspecial and waiting to explode

old_state = state;
cant_be_hit = 0;

state_time = 0;
step = 0;

scale = 1;

size = 1 + has_rune("L") * 1;

destroyed = false;


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