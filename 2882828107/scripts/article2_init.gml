//article2_init - runs once, when the article is created

sprite_index = sprite_get("witchhazel");
image_index = 0;
spr_dir = player_id.spr_dir;
uses_shader = true;
mask_index = sprite_get("witchhazel_mask");

state = 0;
state_timer = 0;
hitstop = 0;
hsp = 0;
vsp = 0;

can_be_grounded = true;
ignores_walls = false;
free = true;
hit_wall = false;

bufferedstate = 0;
buffertimer = 0;

animation_type = 2;
new_sprite = sprite_get("witchhazel");

replacedcount = 0;
maxarticles = 1;

with(asset_get("obj_article2")){
    if (player_id == other.player_id){
        replacedcount++;
	}
}

shoulddie = false; 

grounded_timer = 0;
grav_on = true;


can_get_hit = true;
hitby = noone;
hit_time_thingy = 0;
hitbox_hit = noone;

poof = false;