//blackhole thingy

//Sprite and direction
if get_player_color(player) == 20 {
    sprite_index = sprite_get("shieldarcade")
} else if get_player_color(player) == 19{
    sprite_index = sprite_get("shieldsynne")
} else if get_player_color(player) == 7{
    sprite_index = sprite_get("shieldearth")
} else if get_player_color(player) == 22{
    sprite_index = sprite_get("shieldvoid")
    uses_shader = false;       

} else{
sprite_index = sprite_get("shield");
uses_shader = true;       

}          
mask_index = sprite_get("shield");
image_index = 0;                               
spr_dir = player_id.spr_dir;
depth = -20;
state = 0
state_timer = 0

image_yscale = 0
image_xscale = 0

can_be_grounded = false

//Other vars

gotHit_timer = 0

windbox_timer = 20