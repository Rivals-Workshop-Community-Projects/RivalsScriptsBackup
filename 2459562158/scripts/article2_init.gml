//article2_init
//Slave

depth = player_id.depth - 1;
spr_dir = 1;


can_be_grounded = true;
ignores_walls = true;;
uses_shader = false;


state = 0
// 0 = falling
// 1 = inactive
last_state = 0

state_timer = 0;


max_fall = 15;
max_fall_ref = max_fall;
grav = 0.2;

max_fall_geyser = 3;

vsp = 5;

if !(has_rune("B"))
{
    sprite_index = sprite_get("slave")
}
else
{
    sprite_index = sprite_get("slave_big")
}
 
inactive_grav = 0.5;
inactive_max_fall = 16;


my_hitbox = create_hitbox( AT_DAIR, 1, x + hsp, y + vsp )

destroyed = false;