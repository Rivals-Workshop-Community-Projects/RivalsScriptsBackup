sprite_index = sprite_get("can");
mask_index = sprite_get("canMask");
image_index = 0;
can_be_grounded = true;
ignores_walls = false;

canGravity = .5 // .5 Dino Default				 	// Gravity of the Can
canBoostVSP = -8 // -8 Dino Default 			// VSP of each DSPECIAL
canBoostHSP = 4 // 4 Dino Default 				// HSP of each DSPECIAL
canLifeTime = 600 // 900 Dino Default	    // Total # of frames before auto detonation
canScale = 3 // 3 Dino Default				        // How much value the kb scaling of a hitbox is worth for moving the can
canBase = 2 // 2 Dino Default						// How much value the base kb of a hitbox is worth for moving the can
canHitLockTimer = 15 // 15 Dino Default	// Total # of frames before a new hitbox can hit the can
canUse = 50 // 30 Dino Default	// Total # of frames diminishes when you use dspecial

canLifeTimeStart = canLifeTime
canHitLock = 0

canHitpause = -4
canHSP = -4
canVSP = -4

canHitPlayer = player_id.player

vsp = canBoostVSP 
hsp = player_id.spr_dir * 4