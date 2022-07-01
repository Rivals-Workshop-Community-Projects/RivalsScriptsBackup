//article1_init

size = 10 + get_player_damage(player);
sizelimit = 100 + size;
size += player_id.chargeSave;
player_id.charge = self;

sprite_index = asset_get("no_sprite");
image_index = 0;
spr_dir = player_id.spr_dir;
uses_shader = false;

state = 0;
state_timer = 0;
hitstop = 0;
hsp = 0;
vsp = 0;

can_be_grounded = false;
ignores_walls = true;
free = true;
hit_wall = false;

replacedcount = 0;
maxarticles = 10; 

with (asset_get("obj_article1")) if (player_id == other.player_id) replacedcount++;
shoulddie = false;