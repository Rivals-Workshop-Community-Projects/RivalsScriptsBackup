sprite_index = player_id.sprite_index;
image_index = player_id.image_index;
image_xscale = player_id.image_xscale * player_id.spr_dir;
image_yscale = player_id.image_yscale;

image_blend = c_white;
image_angle = player_id.spr_angle;
x = player_id.x;
y = player_id.y;
player_id.visible = false;
player_id.hurtboxID.spr_dir = player_id.spr_dir * image_xscale;
player_id.hurtboxID.image_xscale = image_xscale;
player_id.hurtboxID.image_yscale = image_yscale;

if (player_id.state == PS_PARRY){
		image_blend = c_teal;
	}
if (player_id.state == PS_AIR_DODGE || player_id.state == PS_ROLL_BACKWARD || player_id.state == PS_ROLL_FORWARD
|| player_id.state == PS_TECH_GROUND || player_id.state == PS_TECH_BACKWARD || player_id.state == PS_TECH_FORWARD
|| player_id.state == PS_WALL_TECH){
		image_alpha = 0.75;
	}
	else {
		image_alpha = 1;
	}
if (player_id.state == PS_PRATFALL || player_id.state == PS_PRATLAND || player_id.state == PS_RESPAWN){
		image_blend = c_dkgray;
	}