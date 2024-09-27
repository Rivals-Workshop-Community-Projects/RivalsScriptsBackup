sprite_change_offset("intro", 47, 54);
sprite_change_offset("idle", 47, 54);
sprite_change_offset("wait", 47, 54);
sprite_change_offset("run", 47, 54);
sprite_change_offset("taunt", 47, 54);
sprite_change_offset("ledge", 47, 54);
sprite_change_offset("turn", 47, 54);
sprite_change_offset("dead", 47, 54);
sprite_change_offset("respawn", 47, 54);
sprite_change_offset("sleepVfx", 47, 54);

pet_w = 32;
run_speed = 1;
max_run_dist = 90;//TODO: higher by default but lower with spy?

//add_compatiable_urls( all );//TODO: use spys alts?

imageIndex = 0;
stateTimer = 0;
stateId = "intro";
sprite = "intro";
stateIdLast = noone;
loopCurrentState = false;

waitAfterXIdleLoops = 3;

animationDurations = ds_map_create();
ds_map_set(animationDurations, "intro", 10);
ds_map_set(animationDurations, "idle", 10);
ds_map_set(animationDurations, "wait", 10);
ds_map_set(animationDurations, "run", 10);
ds_map_set(animationDurations, "taunt", 1000);
ds_map_set(animationDurations, "ledge", 10);
ds_map_set(animationDurations, "turn", 10);
ds_map_set(animationDurations, "dead", 10);
ds_map_set(animationDurations, "respawn", 10);

animationLoops = ds_map_create();
ds_map_set(animationLoops, "intro", false);
ds_map_set(animationLoops, "idle", true);
ds_map_set(animationLoops, "wait", false);
ds_map_set(animationLoops, "run", false);
ds_map_set(animationLoops, "taunt", false);
ds_map_set(animationLoops, "ledge", false);
ds_map_set(animationLoops, "turn", false);
ds_map_set(animationLoops, "dead", false);
ds_map_set(animationLoops, "respawn", false);

//pet_obj variables:
//ground_obj, __sync_id, teetering, can_taunt, pet_id, state, at_ledge, pet_w, sparkle_sys, ledge_spr, state_timer, compatible_urls, 
//turn_spr, custom_stage_height, waiting_dur, spr_dir, should_taunt, player, max_run_dist, init, run_speed, custom_right_edge, owner_dir, 
//air_wait_spr, temp_x, anim_speed, air_run_spr, at_ledge_dir, temp_y, sparkle_timer, air_taunt_spr, turning, can_switch_type, custom_left_edge, 
//type, air_idle_spr, custom, run_spr, idle_spr, taunt_spr, sparkle_part, waiting, idle_timer, select, wait_spr, owner, misc_counter, air_turn_spr, 



// runTimer = 0;
// runTimerTotal = 0;
// idleTimer = 0;
// waitTimer = 0;
// ledgeTimer = 0;
// turnTimer = 0;
// startTimer = 0;

// run_speed_base = 0.5;
// runSpdBase = 10;
// runSpdMaxTimer = 150;//after this much dont accelerate anymore
// runAccel = 0.015;
// runAnimMul = 0.05;

// runSpdCurr = 10;
// turnSpd = 25;
// idleSpd = 10;//13
// waitSpd = 10;//13
// ledgeSpd = 5;
// introSpd = 10;
// tauntSpd = 0.435;//0.5 is correct, but main cube has different start & end frames, so cheat

// waitLength = 4;
// runLength = 16;//4;
// idleLength = 4;

// startDur = 120;

// spr_dir_last = 1;

// sprite = "intro";
// spriteLast = 0;
// img_ind = 0;
// ownerDead = false;
// deadTimer = 0;
// deadSpd = 4;
// ownerRespawned = false;
// respawnTimer = 0;
// respawnSpeed = 4;
// tauntTimer = 0;

// floorY = y;
// //visible = false;
// waitingAttempt = false;