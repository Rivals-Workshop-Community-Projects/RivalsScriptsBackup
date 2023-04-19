//article1_init.gml -- CD

//Rendering
sprite_index = asset_get("empty_sprite");
image_index = 0;
image_speed = 0;
mask_index = asset_get("empty_sprite");
spr_dir = 1;
uses_shader = false;

visible = false;

//=====================================================
//Standard Physics
hitstop = 0;
hsp = 0;
vsp = 0;
can_be_grounded = false;
//free = true;
ignores_walls = true;
hit_wall = false;
through_platforms = false;

destroyed = false; //article destruction
//=====================================================
// Hittability
is_hittable = false;
hittable_hitpause_mult = 1;
// also includes variables:
// enemy_hitboxID, hit_player_obj, hit_player, hit_dir
// can_be_hit, attack_can_hit

//=====================================================
//Ori's compatibility
unbashable = true;
getting_bashed = false;
bashed_id = noone;