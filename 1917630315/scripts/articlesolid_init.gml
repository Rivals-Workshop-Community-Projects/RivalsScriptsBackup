//An ice block similar to Kragg's rock. 

can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

sprite_index = sprite_get("fspecial_ice");

state = 0;
state_timer = 0;
destroyed = 0;

moving = false;
can_hit = false;
knockedback = false;
grav = 0.8;
player_hit = 0;

myhitbox = noone;