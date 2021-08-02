//article1_init

init = true;
can_be_grounded = true;
ignores_walls = true;
uses_shader = true;
aerial = false;
depth = -4;

state = 0;
state_timer = 0;

portal_id = 0;

portal_white = 0;

isWall = false;
isCeil = false;
isFloor = false;

rightWall = false;
leftWall = false;

platform = noone;

inPosition = false;

fxCount = 30; 
shake_timer = 0;

destroyed = false;

sprite_index = asset_get("empty_sprite");


with(player_id){
    sound_play(sound_get("monarch_portalopen"))
    charges = max_charges;
}

x = floor(x);
y = floor(y);

centerx = x;
centery = y;

facedir = "none";