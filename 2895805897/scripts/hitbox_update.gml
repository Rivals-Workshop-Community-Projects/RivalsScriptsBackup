//hitbox_update

//Seed
if (attack == AT_DSPECIAL && hbox_num == 8 && destroyed == false) {
    // Prevent shooting another while active
    move_cooldown[AT_DSPECIAL] = 10;
    player_id.atk_noDSpecial = true;
    // Check if free
    if ((free == false || vsp == 0)) {
        if (isGrounded == true) {
            // Make clone for article
        	//custom_clone = false;
        	//player_id.CV_cloneID = instance_create(x, y, "oPlayer");
        	//player_id.CV_cloneID.clone_owner = id;
        	//player_id.CV_cloneID.ignore_walls = true;
        	//player_id.CV_cloneID.can_be_grounded = false;
        	if (player_id.isPlaytest == false) {
        	    // Spawn article itself
        	    player_id.FlytrapID = instance_create(x, y, "obj_article1");
        	}
        	// Destroy this hitbox
        	destroyed = true;
        	y -= 1000;
        	player_id.FlytrapCooldownTimer = 300;
        	player_id.atk_noDSpecial = false;
        } else {
            isGrounded = true;
        }
        
    } else {
        isGrounded = false;
    }
    
    // Gravity
    vsp += 0.5;
    
    if (y > room_height || x > room_width || x < 0) { // Off Screen Kill
        player_id.FlytrapCooldownTimer = 0;
        player_id.atk_noDSpecial = false;
    	destroyed = true;
    }
}

if (attack == AT_NSPECIAL && hbox_num == 10) {
    rubbleRotation += 8;
    if (y > room_height || x > room_width || x < 0) { // Off Screen Kill
    	destroyed = true;
    }
}