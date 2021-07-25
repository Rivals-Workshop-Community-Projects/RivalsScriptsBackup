///Acorn Init
//Core Variables
init = false;

sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("acornmask");

state = 0;
state_timer = 0;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
hitpause = false;
hitstop = 0;
hitstop_full = 0;
hit_lockout = 0;

//State Time Variables


//Field Variables
charge = 0;
radius = 40;    //Radius of field
deadzone_radius = 20; //Radius inside field that doesn't detect players (makes it look and feel better).
height = bbox_bottom - bbox_top;
k = 2500;   //Force constant for electric field.
neg_mult = 2.5;  //Multiplier to the effects of the negative field.
speed_limit = 20;

//Other Variables
haccel = 0.5;  //The rate at which hsp increases during spawn.
vaccel = 0.5;   //The rate at which vsp increases during spawn (while holding up).
hp = 1; //Damage that can be taken before being destroyed.
colliding_hitboxes = ds_list_create();
