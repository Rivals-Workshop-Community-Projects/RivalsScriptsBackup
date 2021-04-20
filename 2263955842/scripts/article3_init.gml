// article 3 init
step = 0;
/*
/*
sprite_index = player_id.hurtboxID.sprite_index;
image_index = player_id.image_index;
// *
sprite_index = sprite_get("grazebox");
image_index = 0;
depth = player_id.depth-1;
spr_dir = player_id.spr_dir;
uses_shader = false;
visible = false;
/*
image_xscale = 1.6;
image_yscale = 1.6;
 // *
x = player_id.x;
var yOffset = ((sprite_get_bbox_bottom(sprite_index)-sprite_get_bbox_top(sprite_index))*1.8-(sprite_get_bbox_bottom(sprite_index)-sprite_get_bbox_top(sprite_index)))/2.5+player_id.hsp;
y = player_id.y+yOffset+player_id.vsp;

can_be_grounded = false;
ignores_walls = true;

grazeCooldown = 0;
*/
spr_dir = 1;

if (get_player_color(player) == 11)
{
    sprite_index = sprite_get("card_ctc");
}
else
{
    sprite_index = sprite_get("card");
}

image_index = 0;
uses_shader = true;


destroyed = false;
state = 0
state_timer = 0;
old_state = 0; // to check if state has changed
// 0 = idle
// 1 = spinning


y_ref = y;
scale = 0.5;
mark_image = 0;
