//articlesolid_init
var closehitbox = instance_nearest(x, y, asset_get("pHitBox"));

orig_dir = spr_dir
//uses_shader = true;
with closehitbox
destroyed = true

sound_play(sound_get("itemslam"))

hydrant_here = collision_rectangle( -1000, -1000, 3000, 3000, obj_article_solid, false, true );
if hydrant_here != noone
instance_destroy(self)

sound_play(sound_get("watershot"))


is_flying = false;
flydir = 0;

spr_dir = player_id.spr_dir;

can_be_hit = 10;

can_be_grounded = true;
ignores_walls = false;
uses_shader = false;

hp = 24;

spr_dir = 1
proj_water = create_hitbox( AT_DAIR, 8, x+32, y + 14)

with proj_water
hsp = 3

spr_dir = -1
proj_water2 = create_hitbox( AT_DAIR, 8, x-32, y + 14)

with proj_water2
hsp = -3

//spr_dir = orig_dir

sprite_index = sprite_get("FireHydrant");
mask_index = sprite_get("FireHydrantStandHurt");




//Cherry
if attack == AT_NSPECIAL && hbox_num == 1
		if (instance_exists(fruit)) and !fruit.behavior = 0{

			instance_destroy(self)
		}

//Apple
if attack == AT_UAIR && hbox_num == 7
		if (instance_exists(fruit)) and !fruit.behavior = 1{

			destroyed = true;
		}

//Bannana
if attack == AT_NAIR && hbox_num == 8
		if (instance_exists(fruit)) and !fruit.behavior = 2{

			destroyed = true;
		}

//MiniPAC
if attack == AT_EXTRA_2 && hbox_num == 8 and fruit.behavior = 3
		if (instance_exists(fruit)) and !fruit.behavior = 3{

			destroyed = true;
		}

//Bell
if attack == AT_FTILT && hbox_num == 9
		if (instance_exists(fruit)) and !fruit.behavior = 4{

			destroyed = true;
		}

//Sweet
if attack == AT_BAIR && hbox_num == 8
		if (instance_exists(fruit)) and !fruit.behavior = 5{
			destroyed = true;
		}

//Coffee
if attack == AT_FTILT && hbox_num == 9
		if (instance_exists(fruit)) and !fruit.behavior = 7{
			destroyed = true;
		}
		
		//Power Pellet
if attack == AT_JAB && hbox_num == 8 and !fruit.behavior = 8
		if (instance_exists(fruit)) and !fruit.behavior = 8
		{
			destroyed = true;
		}