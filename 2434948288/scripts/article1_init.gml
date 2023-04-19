sprite_index = sprite_get("guitarIdle");
image_index = 0;
spr_dir = 1;
uses_shader = true;
//depth = 10;
image_xscale = 2;
image_yscale = 2;

state = -1;
newState = 0;
state_timer = 0;
animSpeed = 4;

can_be_grounded = false;
ignores_walls = false;

replacedCount = 0;
maxArticles = 1;

with(asset_get("obj_article1")) if (player_id == other.player_id) replacedCount++;

isDespawn = false;
dieTime = 16;

moveSpeed = 4;
defaultPos = {x: -30, y: -40};
noHit = false;
afterImage = array_create(10, -1);
uspecPos = {x:0, y:0};
Pocketable = false;