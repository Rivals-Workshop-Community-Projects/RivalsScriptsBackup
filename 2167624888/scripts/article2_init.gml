//article2_init

//Sprite and direction
sprite_index = sprite_get("willo_appear");
image_index = 0;
spr_dir = player_id.spr_dir;
uses_shader = true;
player_id.fspec_article = self;
isRed = !player_id.wisp_attack;

state = 0;       
state_timer = 0; 
hsp = 0;         
vsp = 0;

can_be_grounded = false;
ignores_walls = false;
free = true;
hit_wall = false;