//article1_init - runs once, when the article is created

// Ori
hitstop = false;
hitstop_full = 0;
type = -1;											//Don’t change this
basher_x = 0;
basher_y = 0;
bashed = false;
bashing_player = noone;
bashing_player_obj = noone;

sprite_index = sprite_get("clone");
image_index = 2;
spr_dir = player_id.spr_dir;
uses_shader = true;

b_yeet = player_id.b_yeeet;
da_walk = false;

state = 0;
state_timer = 0;
hitstop = 0;
hsp = 0;
vsp = 0;

can_be_grounded = true;
ignores_walls = false;
free = false;
hit_wall = false;

idle_anim_rate = 8;
die_anim_rate = 2;
die_time = 6;
animation_type = 1;
new_sprite = sprite_get("clone");

replacedcount = 0;
maxarticles = 2;

with(asset_get("obj_article1"))
{
    if (player_id == other.player_id)
	{
        ++replacedcount;
	}
}

shoulddie = false;