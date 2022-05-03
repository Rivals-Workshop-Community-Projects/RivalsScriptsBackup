//funny block

if (player_id.object_index != oPlayer) player_id = player_id.player_id; //woag

//Sprite and direction
sprite_index = player_id.spr_blocks;
image_index = player_id.primary_block;
type = player_id.primary_block;
mask_index = player_id.spr_blocks_mask;
spr_dir = player_id.spr_dir;
uses_shader = true;

//State
state = 0;
state_timer = 0;
hitstop = 0;
hsp = 0;
vsp = 0;
exist_timer = 0;

//Breaking
break_timer = 0;
break_timer_max = 90; // old
break_timer_max = min(y, get_stage_data(SD_Y_POS)) / 4;
break_stage = 0;
break_stage_max = 3;
stood_on = false;
prev_stood_on = false;

//Terrain behavior
can_be_grounded = false;
ignores_walls = false;
free = true;
hit_wall = false;

inited = false;
spawn_y = y;
parried_flag = false;

steve_on_block = noone;

var threshold = 41;
var width = 24;

if !place_meeting(x,y,asset_get("par_block")) if position_meeting(x + width, y + threshold, asset_get("par_block")) || position_meeting(x - width, y + threshold, asset_get("par_block")) for (i = 0; i < 50 && (position_meeting(x + width, y + threshold, asset_get("par_block")) || position_meeting(x - width, y + threshold, asset_get("par_block"))); i++){
	y--;
	player_id.y--;
}

dont_drop_item = false;