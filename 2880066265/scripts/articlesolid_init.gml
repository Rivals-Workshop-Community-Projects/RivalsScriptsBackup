//The Door

sprite_index = sprite_get("fspecial_door");
mask_index = sprite_get("empty_hurt");	// to prevent reverse knockback during door solid spawn
image_index = 0;
spr_dir = player_id.spr_dir;
uses_shader = true;

fspec_boom = hit_fx_create( sprite_get( "fspecial_explodefx" ), 12 );

can_be_grounded = false;

eust_doorHealth = 0;
eust_doorDeath = 15;
eust_doorDamCD = 0;
eust_doorStun = 0;
player_id.eust_doorActive = true;
eust_doorState = 0;		//0 = spawned, 1 = idle, 2 = shaking, 3 = recalled, 4 = destroyed, 5 = delete
eust_doorReTime = 0;		//5 frames per recall, also for spawning
eust_doorDespawn = 600;
eust_doorTickdown = 0;
