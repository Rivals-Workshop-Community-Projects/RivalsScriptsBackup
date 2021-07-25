//
sprite_index = sprite_get("plantGrow"); 
mask_index = sprite_get("plantPot");

depth = 0
free = true
can_be_grounded = true
ignores_walls = false
plantState = 0
stateTimer = 0
plantType = (player_id.stickDir - 1) 
/* 0 Sunflower
0 Sunflower
1 Peashooter
2 Squash
3 Ice
4 Bonk
5 Cherry
6 Bean
7 Reed

*/
plantWindow = 0
plantWindowTimer = 0
plantHitpause = 0
spr_dir = player_id.spr_dir
plantless = 0
//hsp = (3 * player_id.spr_dir)
vsp = 5
player_id.plantAttack = 0

