//ai_update - called every frame for this character as a CPU

// FSPECIAL RECOVERY
var stage_x = get_stage_data( SD_X_POS );
var stage_y = get_stage_data( SD_Y_POS );

if((x < 160)||((room_width - x)< 160))&&(free)&&(!hitstun)&&(djumps==1)&&(state!=PS_ATTACK_AIR)&&(can_special)
{
	if (x < stage_x){spr_dir = 1;}
	if (x > stage_x){spr_dir = -1;}
	set_attack(AT_FSPECIAL);
}