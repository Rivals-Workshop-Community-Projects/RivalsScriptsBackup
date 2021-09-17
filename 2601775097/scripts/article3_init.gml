//article3_init
//power smash article

can_be_grounded = true;
ignores_walls = false;
free = false;
uses_shader = true;

golden = false;
if ((player_id.theikos_active || get_player_color(player) == 31 || player_id.od_already_active || player_id.godpower) && !player_id.is_8bit) golden = true;
else golden = false;

state_timer = 0;

powersmash_chasm = noone;