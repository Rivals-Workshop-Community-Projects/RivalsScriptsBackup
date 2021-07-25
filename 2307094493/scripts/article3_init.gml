///Nut Init
//Core Variables
init = false;

sprite_index = sprite_get("nut");
image_xscale = 1;
image_yscale = 1;
depth = -50;
// mask_index = sprite_get("nut");

state = 0;
state_timer = 0;
life_timer = 0;
lifetime = 130;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
hitpause = false;
hitstop = 0;
hitstop_full = 0;
hit_lockout = 0;
vel_x = 0;  //Velocity in x direction after hitpause.
vel_y = 0;  //Velocity in y direction after hitpause.
vel_min = 5;    //Minumum velocity the nut can travel when hit.

fric = 1.0;    //Friction
grav = 0.3;    //Gravity
terminal_velocity = 13; //Fastest vsp gravity will accelerate to.

//Other Variables
colliding_hitboxes = ds_list_create();
charge = 0; //The electric charge applied to the nut. Affects knockback and angle flipper.
spin = 0;   //The speed and direction of rotation.
spin_decay = 0.99;  //The multiplier for spin every frame.
kba = 1.5;  //The knockback adjustment of the nut.
elasticity = 0.5;   //The amount of speed retained when bouncing off of a player.
bounce_kb = 2;   //Knockback at which the nut will bounce off the ground.
spin_limit = 20;
