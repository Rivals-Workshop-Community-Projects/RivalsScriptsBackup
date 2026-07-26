ai_state = 0;
MaxDifficulty = false;
waveland = false;
last_ypoint = 0;
target_angle = 0;
CanChangeDIDirection = true;
DIDirection = false;
silly = 0;
xdist = 0;
ydist = 0;
dist = 0;
gets_hit_by_projectile_in_x_frames = 1000;
facing_enemy = true;
DoFunny = false;
CrouchToGraze = false;
OwnAiAttackTimer = 0;

// Stage Information
stage_left = get_stage_data(SD_X_POS);
stage_right = room_width - get_stage_data(SD_X_POS);
stage_top = get_stage_data(SD_Y_POS) - 20;
stage_mid = (stage_left + stage_right) / 2;
safe_distance_x = (stage_right - stage_left) / 3.5;
blastzone_b = get_stage_data(SD_BOTTOM_BLASTZONE_Y);
blastzone_l = get_stage_data(SD_LEFT_BLASTZONE_X);
blastzone_r = get_stage_data(SD_RIGHT_BLASTZONE_X);
adjusted_recovery = false;
adjusted_recovery_offset = 0;

print("Floor size check");
if (position_meeting(stage_left,stage_top + 20,asset_get("par_block")))
{
	print_debug("Normal recovery");
}
else
{
	print_debug("Adjusted recovery");
	adjusted_recovery = true;
	for (var i = 0; i < 50 && adjusted_recovery_offset == 0; i += 1)
	{
		if (position_meeting(stage_left + i*5,stage_top + 20,asset_get("par_block")))
		{
			adjusted_recovery_offset = i*5;
		}
	}
	print_debug("Adjusted recovery amount:" + string(adjusted_recovery_offset));
}