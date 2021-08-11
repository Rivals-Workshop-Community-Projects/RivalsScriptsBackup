sprite_change_offset("idle", 47, 55);
sprite_change_offset("run", 47, 55);
sprite_change_offset("taunt", 47, 55);
sprite_change_offset("wait", 47, 55);
sprite_change_offset("ledge", 47, 55);
sprite_change_offset("turn", 47, 55);
sprite_change_offset("intro", 51, 63);
sprite_change_offset("dead", 67, 63);
sprite_change_offset("respawn", 67, 63);
sprite_change_offset("taunt", 103, 111);

pet_w = 33;//36;			// Default: 36 (The buddy's width)
run_speed = 0.5;		// Default: 3
max_run_dist = 150;	// Default: 100 (The buddy will follow the player once their distance exceeds this value)
//idle_speed = 2;

runTimer = 0;
runTimerTotal = 0;
idleTimer = 0;
waitTimer = 0;
ledgeTimer = 0;
turnTimer = 0;
startTimer = 0;

run_speed_base = 0.5;
runSpdBase = 10;
runSpdMaxTimer = 150;//after this much dont accelerate anymore
runAccel = 0.015;
runAnimMul = 0.05;

runSpdCurr = 10;
turnSpd = 25;
idleSpd = 12.45;//13
waitSpd = 12.45;//13
ledgeSpd = 5;
introSpd = 5.2;
tauntSpd = 0.435;//0.5 is correct, but main cube has different start & end frames, so cheat

waitLength = 4;
runLength = 16;//4;
idleLength = 4;

startDur = 120;

spr_dir_last = 1;

s = "intro";
img_ind = 0;
sLast = 0;
ownerDead = false;
deadTimer = 0;
deadSpd = 4;
ownerRespawned = false;
respawnTimer = 0;
respawnSpeed = 4;
tauntTimer = 0;

floorY = y;
//visible = false;
waitingAttempt = false;