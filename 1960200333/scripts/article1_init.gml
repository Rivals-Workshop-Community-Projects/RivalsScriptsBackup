//article1_init
//Code done by Archytas
//Fry's fireball, both standard and explosive variants

init = 0;

sprite_index = sprite_get("proj_fireball"); //Sprite of the standard fireball

state = 0; //The state that the fireball is currently in; 0 = Spawning, 1 = Active, 2 = Dying, 3 = Explosive, 4 = Exploding
state_timer = 0; 

dest_timer = 0;
stay_timer = 0;
build_time = 10;

can_be_grounded = false; 
free = true;
uses_shader = true;

//Static Vars
sprite2 = sprite_get("proj_fireball_die"); //Projectile death sprite

sprite3 = sprite_get("proj_explosivefireball"); //Explosive projectile sprite

sprite4 = sprite_get("proj_explosion"); //Explosion sprite (Should work properly now)

exp_sound3 = asset_get("sfx_forsburn_combust"); //sound_get(""); explode sfx

//Vars
dest_time = 12; //Destroy frames
hbox = noone; //Hitbox of the move
hsp_val = 0; //Hsp set in init using nspecial hitbox data
inst = noone; //Object Handle
anim_speed  = 0; //taken from Nspecial
parried = 0; //if parried
par_player = noone; //player who parried
