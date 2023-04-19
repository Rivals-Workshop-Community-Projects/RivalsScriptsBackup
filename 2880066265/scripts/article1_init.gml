//The Chair

sprite_index = sprite_get("dspecial_chair");
dspec_boom = hit_fx_create( sprite_get( "dspecial_explodefx" ), 15 );
image_index = 0;
spr_dir = player_id.spr_dir;
player_id.chairLastD = spr_dir;
mask_index = sprite_get("dspecial_chair_hurt");
uses_shader = true;

can_be_grounded = true;
ignores_walls = false;
hit_wall = false;

eust_chair_grav = player_id.gravity_speed;
eust_chair_maxf = player_id.max_fall;
hsp = player_id.hsp;
vsp = player_id.vsp;
free = player_id.free;

eust_currHealth = 0;
//if(player_id.eust_chairWCD){eust_currHealth = player_id.eust_chairHBar;}
eust_currHealth = player_id.eust_chairHBar;
eust_defeatHealth = 30 + (has_rune("C")*60);		//RUNE C PART 1
eust_damageCD = 0;
eust_chairStun = 0;
eust_chairShake = 1;
player_id.eust_chairActive = true;
eust_chairState = 0;		//0 = idle, 1 = recalled, 2 = destroyed, 3 = delete, 4 = warp call
eust_recallTime = 10;	//5 frames per recall
eust_chairDespawn = 600 + (has_rune("C")*400);	//RUNE C PART 2
eust_chairTickdown = 0;