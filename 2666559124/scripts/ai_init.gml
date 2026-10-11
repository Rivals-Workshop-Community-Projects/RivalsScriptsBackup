//ai_init - setting the basic AI attack behaviors

far_down_attacks[0] = AT_DAIR;

far_side_attacks[0] = AT_FSPECIAL;
far_side_attacks[1] = AT_DSPECIAL;

mid_side_attacks[0] = AT_DATTACK;
mid_side_attacks[1] = AT_NSPECIAL;
mid_side_attacks[2] = AT_FSPECIAL;
mid_side_attacks[3] = AT_DSPECIAL;

// Close attacks are constantly determined in ai_update.
// This way, it's obvious if something is wrong, because the
// AI won't attack when targets are nearby.

ai_dodge_dir = -1;
ai_commit_dir = 0;

ai_h_reach_dir = 0;
ai_v_reach_dir = 0;
ai_block_lx = x;
ai_block_rx = x;

ai_wall_pass = 0;

ai_ledge_checked = false;
ai_l_ledge = 0;
ai_r_ledge = 0;
ai_recover_dir = 0;

