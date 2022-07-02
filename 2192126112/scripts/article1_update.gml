//article1_update
exist_timer++;
state_timer++;
spr_dir = player_id.spr_dir;
image_index = 0;
x = player_id.x;
y = player_id.y;

if (player_id.window = 1)
{
	hit_wall = false;
}
if (hit_wall = true)
{
	player_id.dattackhit = 1;
}
else
{
	player_id.dattackhit = 0;
}

if (player_id.state != PS_ATTACK_AIR && player_id.state != PS_ATTACK_GROUND)
{
	  instance_destroy();
	exit;
}
#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;