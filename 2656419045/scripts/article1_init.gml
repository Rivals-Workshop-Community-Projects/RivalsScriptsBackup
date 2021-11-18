//Article 1 Init (defaults to sprinting dust)
player = player_id.player;

POWER_OBJ = player_id.POWER_OBJ;

variant = "dust";

hitpause = false; hitstop = 0; hitstop_full = 0;
old_hsp = 0; old_vsp = 0;

sprite_index = sprite_get("decal_dust");
image_xscale = 2; image_yscale = 2;
depth = -6;

neo_freeze_data = false;

use_post_draw = false; //allows it to use image_blend

value = 0;

can_be_grounded = false;
ignores_walls = true;
uses_shader = false;

disable_movement = true;
fake_hsp = 0; fake_vsp = 0;

age = 0;
life = 60;
mark_for_destruction = false;