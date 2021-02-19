var pos;
//pos = (get_gameplay_time()/15) mod (2*3.14159)
pos = (state_timer/15) mod (2*3.14159)
image_alpha = 0.35*cos(pos) + 0.65

if (!perish && player_id.wisps[wisp_index] != self)
	perish = true;

var movespeed = 12; // higher number = slower
//var speen = (player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_TAUNT);
var speen = (player_id.wisp_attack);

if (perish)
{
	speen = false;
	randx = 0;
	randy = 0;
	rel_position[0] = 0;
	rel_position[1] = -32;
	movespeed = 2;
}
else if (state_timer % 60 == 0) // random movement every 60 frames
{
	randx = random_func(wisp_index, 32, true);
	randy = random_func(wisp_index+3, 32, true);
}

	if(player_id.attack == AT_FSTRONG || player_id.attack == AT_DSTRONG || player_id.attack == AT_USTRONG){
		if(player_id.flamecharge){
			movespeed = 4;
		}
		else{
			movespeed = 20;
		}
	}
	else{
		movespeed = 20;
	}
var part_x = player_id.x + player_id.hsp*-2 + (speen?sin(player_id.state_timer/6+wisp_index*2)*100:rel_position[0])*player_id.spr_dir + randx;
var part_y = player_id.y + player_id.vsp*-2 + (speen?cos(player_id.state_timer/6+wisp_index*2)*100-50:rel_position[1]) + randy;

hsp = (part_x - x)/movespeed;
vsp = (part_y - y)/movespeed;

var temp_dir = sign(hsp);
if (temp_dir != 0)
	spr_dir = temp_dir;

sprite_index = sprite_get(player_id.visible?"willo_idle":"article");

++state_timer;
frame = (frame >= sprite_get_number(sprite_index)) ? 0 : frame+0.4;
image_index = frame;

if (perish /*&& point_distance(x,y,player_id.x,player_id.y-32) < 16*/) instance_destroy();