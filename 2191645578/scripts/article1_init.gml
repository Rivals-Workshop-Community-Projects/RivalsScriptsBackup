//article1_init

inPosition = false;
can_be_grounded = true;
ignores_walls = true;
uses_shader = true;
depth = -4;

state = 0;
state_timer = 0;
//sundial direction
start_dir = 0;
//puddle teleport
ypos = 0;
//forger direction
for_dir = 0;
//forger hitibox
forHB = noone;


//Citrine Forger
usp_forger_drag = false;
usp_forger_id = 0;
citrine_forger_foot = 0;
freeC = false;
dony_alive = true;
donyx = player_id.x
donyy = player_id.y
cit_for_drag = noone;

//Dtilt Surge
surge_move = false;
surge_foot = 0;
surge_fall = false;
surge_distane = 0;

//Dspec_air
vis_timer = 45;

//Parry
art_parried = false;

//Limit
plimit = 2;