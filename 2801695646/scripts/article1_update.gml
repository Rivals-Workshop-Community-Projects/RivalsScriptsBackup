//article1_update
if (ent_idx < 0) exit;                                                          // If the entity index isn't defined, don't run this script.

var _gameplay_time = get_gameplay_time();
var ent_timer = _gameplay_time - ent_spawn_time - 1;									// Calculate the timer
var time_2s = _gameplay_time mod 2 == 0;											// True on every other frame.

var ent_timer_held = (is_held) ? _gameplay_time - ent_held_time - 1 : 0;
var ent_timer_not_held = (is_held) ? 0 : _gameplay_time - ent_released_time - 1;

//======================================================
// INIT
//======================================================
if (ent_timer == 0) on_init();                                                  // On the first frame, run the initialization function.

//======================================================
// SOUND EFFECTS
//======================================================
if (ent_timer == 0) {
    if (sfx_ready != noone) sound_play(sfx_ready);                  			// Play the ready sound on the first frame.
}

//======================================================
// PHYSICS
//======================================================

// Held behaviour
if (is_held) {                                                                      // If this entity is being held...
    
    var _ply_in_nspecial = false;
    with (player_id) {
    	switch (state) {
    		case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
    			_ply_in_nspecial = (attack == AT_NSPECIAL);
    		break;
    	}
    }
    
    if !(_ply_in_nspecial) {               // If the player is not in the nspceial state...
        is_held = false;                                                            // Set this article to be no longer held.
        player_id.sna_held_entity = noone;                                          // Set the player's held entity to be nothing.
        depth = -1;											                        // Set the article to draw in front of Snake.
    }
    
}

// Normal Behaviour
else if (has_physics && plnt_stick_target == noone) {                           // If this entity is NOT being held, is NOT stuck, and has physics...
    
    var _is_bouncing = false;
    var _is_hit = false;
    
    // Hitbox Detection
    if (can_be_hit) {                                                           // If this entity can be hit...
        _is_hit = hitbox_detection();                                           // Check for hitboxes.
        if !(instance_exists(self)) exit;                                       // Stop running the script if this entity was destroyed.
    }
    
    // Physics
    if (!_is_hit) {                                                                      // If the entity was NOT hit by a hitbox...
        
        // Not grounded
        if (free) {                                                                     // If in the air...
            
            // Wall Collision
            if (hit_wall) {                                                             // If a wall is hit, and the entity has horizontal speed...
                
                // Impact Explosion
                if (gren_explodeonimpact) { on_grenade_explosion(); exit; }             // If the grenade explodes on impact, run the grenade explosion event.
                
                // Bounce
                hsp_float *= -bounciness;                                               // Bounce off the wall.
                
                var _vol = clamp(abs(vsp_float), 0, 1);                                 // Set the bounce sound volume.
                if (sfx_bounce != noone) sound_play(sfx_bounce, false, noone, _vol);    // Play the bounce sound effect, if it's defined. Volume scales with speed.
            }
            
            // Gravity
            vsp_float = clamp(vsp_float + gravity_speed, -1000, max_fall );             // Increase the gravity.
            
            // Air Friction
            hsp_float = lerp(hsp_float, 0, air_friction);                               // Apply air friction
            
        }
        // Grounded
        else {                                                                          // If on the ground...
            
            // Impact Explosion
            if (gren_explodeonimpact) { on_grenade_explosion(); exit; }                 // If the grenade explodes on impact, run the grenade explosion event.
            
            // Vertical bouncing
            if (free_old) {                                                             // On the first frame of touching the ground...
                vsp_float *= -bounciness;                                               // Bounce off the ground.
                
                var _vol = clamp(-vsp_float, 0, 1);                                     // Set the bounce sound volume.
                if (sfx_bounce != noone) sound_play(sfx_bounce, false, noone, _vol);    // Play the bounce sound effect, if it's defined. Volume scales with speed.
                
                if (vsp_float > -1) vsp_float = 0;                                      // Stop bouncing if the bounce speed is too low.
                else _is_bouncing = true;                                               // If the bounced vspeed is high enough, this entity is bouncing.
                
            }
            
            // Ground Friction
            hsp_float = lerp(hsp_float, 0, ground_friction);                            // Apply ground friction
            
            // Entity Pushing
            var _ent_col = instance_place(x, y, obj_article1);                      // Check for a collision with another entity.
            if ("sna_can_push" in _ent_col) {                                         // If colliding with an entity that can be pushed...
                if (sna_can_push && _ent_col.sna_can_be_pushed) {                   // If this entity can push, and the other entity can be pushed...
                    if (x > _ent_col.x) _ent_col.x--;                               // Move the other entity away from this entity.
                    else _ent_col.x++;
                }
                if (sna_can_be_pushed && _ent_col.sna_can_push) {                            // If this entity can be pushed, and the other entity can push...
                    if (x > _ent_col.x) x++;                                        // Move this entity away from the other entity.
                    else x--;
                }
            }
            
        }
        
        // Stick to moving platforms
        var _plat = instance_place(x, y, asset_get("par_jumpthrough"));             // Get platform collision object.
        if !(instance_exists(_plat)) _plat = instance_place(x, y, asset_get("obj_article_platform"));             // Get article platform collision object.
        if (instance_exists(_plat)) {                                               // On colliding with platform...
            var _plat_y = get_instance_y(_plat);                                    // Get playform y position.
            
            if (y < _plat_y && !_is_bouncing) {                                     // If above the platform, and NOT bouncing...
                y = _plat_y;                                                        // Stick to top of the platform.
                vsp_float = vsp;                                                    // Reset the vspeed float to the current vspeed.
                free = false;                                                       // Set the entity to be grounded.
            }
            
        }
        
    }
    
    // Apply physics
    hsp = round(hsp_float);                                                     // Convert hsp_float to a whole number.
    if (free || _is_bouncing) vsp = round(vsp_float);                           // Convert vsp_float to a whole number.

}

// Detect stick target
if (plnt_sticky && ent_timer == 1){
    var _sticktarget = noone;                                                           // Initialize collision variable.
    // Detect player collisions on frame 1.
    /*with (oPlayer){
        if (self != other.player_id) {                                          // Ignore owner.
            
            if (sna_is_stuck) continue;                                         // Don't stick to players who already have an entity stuck to them.
            
            if (instance_place(x, y, other)) {                                  // If a player collides with the entity...
                _sticktarget = self;                                            // Set the collision to the player.
                other.plnt_stick_off_y = round(-char_height * 0.5);             // Set the y offset based on the player's height.
                sna_is_stuck = true;                                            // Set "stuck" to true.
                break;                                                          // End the loop.
            }
        }
    }*/
    
    with (oPlayer){
        if (self != other.player_id) {                                          // Ignore the owner.
            
            if (sna_is_stuck) continue;                                         // Don't stick to players who already have an entity stuck to them.
            
            var _sticky_ent = other;                                            // Save the entity as a temporary variable.
            
            // Hurtbox Detection
            var _target_stuck = false;
            with (hurtboxID){
                if (instance_place(x, y, _sticky_ent)) {                        // If the player's hurtbox collides with the entity...
                    _target_stuck = true;                                       // Set the entity to stick to the hurtbox owner.
                }
            }
            
            // Apply stick to target
            if (_target_stuck) {
                _sticktarget = self;                                            // Set the collision to the player.
                other.plnt_stick_off_y = round(-char_height * 0.5);             // Set the y offset based on the player's height.
                sna_is_stuck = true;                                            // Set "stuck" to true.
                break; _sticktarget = self;
                
            }
            
        }
    }
    
    if (instance_exists(_sticktarget)) {                                        // If a collision object was detected...
        // Set the stick target
        plnt_stick_target = _sticktarget;                                       // Set the stick target to the collision object.
        // Play the plant sound
        sound_play(sound_get("sfx_w_plantable_plant"));                         // Play the plant sound.
        // Play Snake voice clip
        with (player_id) {
            //if (sna_vox_enabled) {
                sound_stop(vox_prev);
                sound_play(vox_plant_player);                                   // Play the player plant voice clip. ("Good.")
                vox_prev = vox_plant_player;
            //}
        }
    }
    
}

// Play plant sound when touching the ground.
if (!free && free_old && plnt_play_plant_sfx && plnt_stick_target == noone) sound_play(sound_get("sfx_w_plantable_plant"));    // Play the plant sound.

// Stuck behaviour
if (instance_exists(plnt_stick_target)) {                                       // If this entity is stuck...
    
    depth = plnt_stick_target.depth - 1;                                        // Set the depth to the stick target depth.
    // Stick to object
    x = round(get_instance_x(plnt_stick_target) + plnt_stick_target.hsp + plnt_stick_off_x);
    y = round(get_instance_y(plnt_stick_target) + plnt_stick_target.vsp + plnt_stick_off_y);
    
    // Despawn the entity if the player dies.
    if (plnt_stick_target.state == PS_DEAD || plnt_stick_target.state == PS_RESPAWN) {
        plnt_stick_target.sna_is_stuck = false;                                 // The opponent is no longer stuck.
        on_despawn();                                                           // Despawn the entity.
        exit;                                                                   // End the code execution.
    }
    
}

/*
TODO: Create an unstick function, which sets "plnt_stick_target" to "noone",
and sets "plnt_stick_target.sna_is_stuck" to "false".
*/


//======================================================
// CHILD HITBOX UPDATE
//======================================================
if (child_hitbox != noone) {                                                    // If this entity has a child hitbox...
    
    // Valid Hitbox Detected
    if (variable_instance_exists(child_hitbox, "sna_parent_ent") ) {                // Make sure the child hitbox exists.
        
        // Link the hitbox
        if (child_hitbox.sna_parent_ent == noone) child_hitbox.sna_parent_ent = self;   // If the child hitbox is NOT linked to this entity, link it.
        
        // Move the child hitbox with the parent.
        with (child_hitbox) {
            x = other.x + other.hsp;                                            // Move the child hitbox with this entity.
            y = other.y - 8 + other.vsp;
        }
        
        // Destroy hitbox on collision.
        if (!free || hit_wall) child_hitbox.destroyed = true;                   // If colliding with a floor or wall,       "Destroy the child." - Aaron 893, 2022
        
        // Trigger Explosion on Impact
        if (gren_explodeonimpact && child_hitbox.destroyed) {                   // If the grenade explodes on impact, and the child hitbox is destroyed...
            on_grenade_explosion(); exit;                                       // Run grenade explosion event, and end the script execution.
        }
        
        // Clean up Hitbox ID
        if (child_hitbox.destroyed) child_hitbox = noone;                       // Remove the child hitbox ID.
        
    }
    
    // No Valid Hitbox Detected
    else {                                                                      // If the child hitbox is NOT valid...
        child_hitbox = noone;                                                   // Remove the child hitbox ID.
    }
    
}




//======================================================
// ANIMATION
//======================================================
switch(anim_type) {
    
    //case 0: // Static
        //image_index = 0
        // I've decided not to set it, in case I want to manually set the image index elsewhere.
    //break;
    
    case 1: // Looping
        
        var _t = (ent_timer % anim_length) / anim_length;                       // Set the image index loop duration.
        image_index = lerp(0, image_number, _t);                                // Loop the image index from frames 1 to 4.
        
    break;
    
    case 2: // Physics Windows
        var _vel = abs(point_distance(x, y, hsp_float, vsp_float));             // Get the velocity.
        
        if (free && !is_held && _vel > 1) {                                     // If the entity has velocity, and is NOT held...
            
            var _t = (ent_timer % anim_length) / anim_length;                     // Set the image index loop duration.
            image_index = lerp(1, 5, _t);                                       // Loop the image index from frames 1 to 4.
            
        }
        else image_index = 0;                                                   // If the entity is grounded or held, go to frame 1.
        
    break;
    
    case 3: // Sticky Windows
        var _vel = abs(point_distance(x, y, hsp_float, vsp_float));             // Get the velocity.
        var _stuck = instance_exists(plnt_stick_target);
        
        if (free && !is_held && !_stuck && _vel > 1) {      // If the entity has velocity, and is NOT held or stuck...
            
            var _t = (ent_timer % anim_length) / anim_length;                     // Set the image index loop duration.
            image_index = lerp(2, 6, _t);                                       // Loop the image index from frames 2 to 5.
            
        }
        else if (_stuck) image_index = 1;                                       // If the entity is stuck, go to frame 2.
        else image_index = 0;                                                   // If the entity is grounded or held, go to frame 1.
        
    break;
}



//======================================================
// PICKUP LOGIC
//======================================================
if (is_pickup) {                                                                // If this entity is a pickup item...
    
    // Pickup Idle
    if (!pickup_collected) {                                                        // If this pickup was NOT yet collected...
        
        if (!free) {                                                                    // If the pickup is grounded...
            var _col_ply = instance_place(x, y, oPlayer);
            if (instance_exists(_col_ply) && ("sna_prime" in _col_ply)) {               // If colliding with a Snake player...
                
                var _ply_equip_idx = _col_ply.dict_equipment[pickup_item_idx];
                
                // Check if Ammo is Full
                var _ammo_full = false;
                if (pickup_given_ammo > 0) {                                                        // If the pickup gives ammo...
                    if ((pickup_gives_item && _ply_equip_idx.is_owned) || (!pickup_gives_item)) {   // If this pickup is an item you own, or the pickup ONLY gives ammo...
                        if (_ply_equip_idx.ammo_total >= _ply_equip_idx.ammo_total_max) {           // If ammo is full...
                            _ammo_full = true;                                                      // Don't let the player pick up the item.
                        }
                    }
                }
                
                // Ammo Full Behavior
                if (_ammo_full) {                                               // If the ammo is full...
                    // Play the "locked" sound effect
                    if (pickup_lock_time == -1) {                               // On the start of the collision...
                        sound_stop(sound_get("ui_item_locked"));                // Stop the locked sound effect, to prevent overlapping.
                        sound_play(sound_get("ui_item_locked"));                // Play the locked sound effect.
                    }
                    // Set the pickup lock timer
                    pickup_lock_time = get_gameplay_time();                     // Set the lock timer to the current time.
                }
                
                // Ammo NOT Full Behavior
                else {                                                              // If the ammo is NOT full...
                    
                    // Give the player the item
                    if (pickup_gives_item) {                                        // If the pickup gives a weapon...
                        give_equipment(_col_ply, pickup_item_idx, pickup_given_ammo, pickup_fill_mag);  // Give the Snake player the weapon.
                    }
                    else {                                                          // If the pickup only gives ammo...
                        give_ammo(_col_ply, pickup_item_idx, pickup_given_ammo, pickup_fill_mag);   // Give the Snake player the ammo.
                    }
                    
                    // Add Suppressors.
                    give_suppressors(_col_ply, pickup_item_idx, pickup_given_suppressors);  // Give the player the suppressors.
                    
                    // Set the Item as Collected
                    pickup_collected = true;                                                // Set the item to have been collected.
                    pickup_collected_time = get_gameplay_time();                            // Set the collected timer to the current time.
                    
                    // Play the Pickup Sound
                    sound_stop(sound_get("ui_item_pickup"));                                // Stop the pickup sound, to prevent overlapping.
                    sound_play(sound_get("ui_item_pickup"));                                // Play the pickup sound.
                    
                    // Hide the Pickup
                    sprite_index = asset_get("empty_sprite");                               // Remove the sprite.
                    depth = -10;                                                            // Draw above everything.
                    gravity_speed = 0;                                                      // Disable gravity.
                    hsp_float = 0;                                                          // Remove momentum.
                    hsp = 0;
                    vsp_float = 0;
                    vsp = 0;
                    has_physics = false;                                                    // Disable physics.
                    can_push = false;                                                       // Disable pushing.
                    can_be_pushed = false;
                }
                
            }
        }
        
    }
    
    // Pickup Fade
    else {                                                                          // If this pickup was already collected...
        
        // Destroy Entity after Text Fade
        if (get_gameplay_time() > pickup_collected_time + pickup_collected_fade_legnth) {   // If at the end of the fade timer...
            instance_destroy();                                                     // Destroy the entity.
            exit;                                                                   // Stop running this script.
        }
        
    }
    
    // Update Timers
    if (pickup_lock_time != -1) {                                                       // If the pickup lock time is set...
        if (get_gameplay_time() > pickup_lock_time + pickup_lock_fade_legnth)           // If the time exceeds the pickup lock time...
            pickup_lock_time = -1;                                                      // Reset the pickup lock time.
    }
    
}



//======================================================
// GRENADE LOGIC
//======================================================

// Explode on Impact
if (gren_explodeonimpact_timer != -1 && ent_timer_held >= gren_explodeonimpact_timer) {     // If the held timer exceeds the explode on impact length...
    if (!gren_explosionwarning) gren_explosionwarning = true;                               // Enable the explosion warning.
    if (!gren_explodeonimpact) gren_explodeonimpact = true;                                 // Enable exploding on impact.
}

// Grenade Fuse
if (gren_fuselength != -1) {                                                    // If this entity has a fuse defined...
    
    // Grenade Explosion Warning
    if (ent_timer_not_held > gren_fuselength - 50) {                            // On one second before the grenade explosion...
        
        if (!gren_explosionwarning) gren_explosionwarning = true;               // Enable the explosion warning.
        
    }
    
    // Grenade Explosion
    if (ent_timer_not_held > gren_fuselength) {                                 // If the non-held timer exceeds the grenade fuse length...
        
        // Explode
        on_grenade_explosion(); exit;                                           // Run grenade explosion event, and end the script execution.
        
    }
    
}

//======================================================
// PLANTABLE LOGIC
//======================================================
if (plnt_is_detonated) {                                                        // If this entity is detonated...
    // Explode
    on_grenade_explosion(); exit;                                               // Run explosion event, and end the script execution.
}

//======================================================
// CLAYMORE LOGIC
//======================================================
if (ent_idx == player_id.ENT_PLNT_CLAYMORE) {                                   // If this entity is a claymore...
    if (!free && ent_timer > 50) {
        
        // Detect Players
        var _col = collision_rectangle(x + 8 * spr_dir, y, x + 40 * spr_dir, y - 24, pHurtBox, true, true);         // Detect players
        
        // Detect Hitboxes
        if !(instance_exists(_col))                                                                                 // If no players were detected...
            _col = collision_rectangle(x + 8 * spr_dir, y, x + 40 * spr_dir, y - 24, pHitBox, false, true);         // Detect hitboxes
        
        // Detect Articles
        if !(instance_exists(_col)) {                                                                               // If no players were detected...
            
            _col = collision_rectangle(x + 8 * spr_dir, y, x + 40 * spr_dir, y - 24, obj_article1, false, true);    // Detect entities
            
            if !((variable_instance_exists(_col, "sna_life")) && !(_col.hsp == hsp && _col.vsp == vsp))             // If the entity is NOT owned by Snake, or the entity is NOT moving... (At least, not at the same speed as the claymore.)
                _col = noone;                                                                                       // Ignore the article.
            
        }
        
        // Detect Solid Articles
        if !(instance_exists(_col))                                             // If no articles were detected...
            _col = collision_rectangle(x + 8 * spr_dir, y, x + 40 * spr_dir, y - 24, obj_article_solid, true, true);  // Detect solid articles
        
        // Trigger Explosion
        if (instance_exists(_col)) { on_grenade_explosion(); exit; }            // If something was detected, run the grenade explosion event, and end the script execution.
        
    }
}


//======================================================
// DAMAGE EFFECTS
//======================================================
if (dmg_threshold > -1) {                                                       // If the entity has a damage threshold...
    if (dmg >= dmg_threshold) on_damage_threshold();                            // Run damage threshold event.
    if !(instance_exists(self)) exit;                                               // If the entity was destroyed, stop running the script.
}



//======================================================
// SUPPLY DROP LOGIC
//======================================================
if (ent_idx == player_id.ENT_SUPPLYDROP) {
	if (!free || (instance_exists(child_hitbox) && child_hitbox.destroyed) || (child_hitbox == noone)) {	// When colliding with the ground, or a player...
		
		// Spawn the pickup items
		with(player_id) {
			if (supplydrop_pickup_1 != noone) pickup_spawn(other.x, other.y - 4, 0, -5, supplydrop_pickup_1);
			if (supplydrop_pickup_2 != noone) pickup_spawn(other.x, other.y - 4, 1, -5, supplydrop_pickup_2);
			if (supplydrop_pickup_3 != noone) pickup_spawn(other.x, other.y - 4, -1, -5, supplydrop_pickup_3);
		}
		
		// Destroy the box
		sound_play(sound_get("ui_item_drop"));                              			// Play the item spawn sound effect.
		sound_play(sound_get("sfx_box_exit"));                               			// Play the box destroy sound effect.
		spawn_hit_fx(x, y, 13);															// Create the dust hit effect.
		with (player_id) { spawn_hit_fx(other.x, other.y, vfx_supplydrop_destroy); }	// Create the box destruction sprite.
		
		// Cleanup
		if (instance_exists(child_hitbox)) child_hitbox.destroyed = true;				// Destroy the child hitbox.
		player_id.supplydrop_ent_box = noone;											// Reset the supplydrop_ent_box variable.
		instance_destroy(self); exit;													// Destroy this entity, and stop running this script.
	}
}



//======================================================
// SMOKE LOGIC (OLD)
//======================================================

//------------------------------------------------------
// Top Smoke Layer (Parent)
//------------------------------------------------------
/*if (ent_idx == player_id.ENT_ELMT_SMOKE) {
    
    // TODO: Optimize this by using obj_article2 as a child, instead of obj_article1.
    
    if (ent_timer == smoke_startup_time) {
        
        // Spawn the Opaque Smoke
        var elmt_smoke_opaq = instance_create(x, y, "obj_article1");                // Spawn an entity
        variable_instance_set(elmt_smoke_opaq, "ent_idx", player_id.ENT_ELMT_SMOKE_OPAQUE );  // Set the entity to the front layer smoke element.
        
        // Parent the Smoke
        variable_instance_set(elmt_smoke_opaq, "smoke_front_lyr_parent", self );    // Set the parent
        smoke_back_lyr_child = elmt_smoke_opaq;                                     // Set the child
        
    }
    
    // Animation
    var _t = (get_gameplay_time() % anim_length) / anim_length;                 // Set the image index loop duration.
    image_index = lerp(0, image_number, _t);                                    // Loop the image index from frames 1 to 4.
    
    // Child Behaviour
    if (instance_exists(smoke_back_lyr_child)) {
        smoke_back_lyr_child.x = x;                                             // Move the child with this entity.
        smoke_back_lyr_child.y = y;
    }
    
}

//------------------------------------------------------
// Back Smoke Layer (Child)
//------------------------------------------------------
else if (ent_idx == player_id.ENT_ELMT_SMOKE_OPAQUE) {
    
    // Animation
    var _t = (get_gameplay_time() % anim_length) / anim_length;                 // Set the image index loop duration.
    image_index = lerp(0, image_number, _t);                                    // Loop the image index from frames 1 to 4.
    
    if !(instance_exists(smoke_front_lyr_parent)) instance_destroy(); exit;     // Destroy this entity, and stop running the script.
    
}*/



//======================================================
// OPTIMIZATION
//======================================================
// Time Cleanup
if (cleanup_time > -1 && ent_timer_not_held >= cleanup_time) {
    //spawn_hit_fx( x, y, 144 );                                                // Create a subtle dust effect on despawn.
    on_despawn();                                                               // Destroy the entity.
    exit;                                                                       // Stop running this script.
}
// Distance Cleanup
if (cleanup_distance > -1 && point_distance(x, y, player_id.x, player_id.y) >= cleanup_distance) {
    on_despawn();                                                               // Destroy the entity.
    exit;                                                                       // Stop running this script.
}


//======================================================
// LATE UPDATE
//======================================================
//ent_timer++;                                                                    // Advance the entity timer.
//if (is_held) ent_timer_held++;                                                  // If the entity is being held, andvance the held timer.
else ent_timer_not_held++;                                                      // If the entity is NOT being held, advance the not_held timer.

time_since_hit++;                                                               // Advance the time since hit timer.

free_old = free;
hsp_old = hsp;
vsp_old = vsp;



//======================================================
// FUNCTIONS
//======================================================


//======================================================
// Grenade Explosion Hook
//======================================================
#define on_grenade_explosion
// Visual Effect
spawn_hit_fx( x, y - 27, gren_explosion_fx );                                               // Draw the explosion effect.
//shake_camera( 8, 6 );                                                                     // Add camera shake.                TODO: Re-enable this when the devs fix the shake_camera function.

// Play Sound
if (sfx_gren_explode != noone) sound_play(sfx_gren_explode);                                // Play the explosion sound

// Set alertness phase, if the opponents are in earshot
if (gren_explosion_earshot != noone) {													// If a grenade explosion earshot is specified...
	var _sfx_seen = noone;
	with (player_id) { _sfx_seen = sound_get("ui_see_snake"); }							// Get seen sound effect.
	
	with (oPlayer) {
		if ("sna_prime" in self) continue;												// Skip other Snake players.
		if (clone) continue;															// Skip Forsburn clones.
		if (get_player_team(self.player) == get_player_team(other.player)) continue;	// Skip teammates.
		if (point_distance(x, y, other.x, other.y) > other.gren_explosion_earshot) continue;	// Skip opponents outside of earshot.
		
		var _last_stealth_state = 0;
		// Set the alertness phase to CAUTION
		with (oPlayer) {
			if ("sna_prime" not in self) continue;										// Get the "prime" Snake.
			_last_stealth_state = sna_stealth_state;									// Get the previous stealth state.
			if (sna_stealth_state < 2) {												// If NOT in the ALERT phase...
				sna_stealth_state = 1;													// Go into the CAUTION phase.
				sna_stealth_state_awareness = 99.99;									// Reset the alertness.
			}
		}
		
		// Display exclamation mark if in the SNEAK phase.
		if (_last_stealth_state == 0) {											// If in the SNEAK phase...
			// Draw the exclamation mark.
			sna_emote_window = 1;
			sna_emote_start_time = get_gameplay_time();
			// Play seen sound effect
			sound_play(_sfx_seen);										// Play the seen sound.
		}
		
		// End the loop.
		break;
		
	}
}

// Set Hitbox Offsets
var _x_off = 0;
var _y_off = -27;
// Claymores
if (ent_idx == player_id.ENT_PLNT_CLAYMORE){
    _x_off = 48;
    _y_off = -20;
}

// Create Hitboxes
if (gren_explosion_hbox != noone) {                                                         // If an explosion hitbox is defined...
    var _hbox1 = create_hitbox(AT_NSPECIAL, gren_explosion_hbox, x + _x_off * spr_dir, y + _y_off);            // Create the main explosion hitbox.
    _hbox1.spr_dir = spr_dir;                                                               // Set the hitbox sprite direction.
}
if (gren_explosion_hbox_friendly != noone) {                                                // If a friendly explosion hitbox is defined...
    var _hbox2 = create_hitbox(AT_NSPECIAL, gren_explosion_hbox_friendly, x + _x_off * spr_dir, y + _y_off);   // Create the friendly explosion hitbox
    _hbox2.player = 0;                                                                      // Give the friendly hitbox friendly fire.
    _hbox1.spr_dir = spr_dir;                                                               // Set the hitbox sprite direction.
}

// Unstick the player.
if (instance_exists(plnt_stick_target)) {                                                   // If the entity is stuck to an object...
    if (variable_instance_exists(plnt_stick_target, "sna_is_stuck"))                        // If the entity has the "sna_is_stuck" variable...
        plnt_stick_target.sna_is_stuck = false;                                             // Set the variable to false.
}

// Destroy Child Hitboxes
if (variable_instance_exists(child_hitbox, "destroyed") ) child_hitbox.destroyed = true;    // Destroy the child hitbox.


//---------------------------------
// Custom Entity Behaviour
//---------------------------------
switch(ent_idx){
    
    case 1: //ENT_GREN_SMOKE
        
        // Spawn the Smoke
        spawn_smoke(x, y);
        spawn_smoke(x - 100, y);
        spawn_smoke(x + 100, y);
        spawn_smoke(x, y - 100);
        
        
    break;
    
    case 4:
        // TODO: Spawn smoke_destroy fx. (The smoke's duration would be the fuse timer.)
    break;
    
}

// Destroy Entity
instance_destroy();                                                                         // Destroy the entity.



//======================================================
// Damage Threshold Hook
//======================================================
#define on_damage_threshold

// Run the grenade explosion event.         TODO: Only do this for specified entities?
on_grenade_explosion(); exit;                                                   // Run grenade explosion event, and end the script execution.


//======================================================
// Spawn Pickup Item
//======================================================
#define pickup_spawn(_x, _y, _hsp, _vsp, _ent_idx)

// Spawn the item
var _new_item = instance_create(_x, _y, "obj_article1");						// Spawn the entity
variable_instance_set(_new_item, "ent_idx", _ent_idx);							// Set the entity index
variable_instance_set(_new_item, "depth", -2);									// Set the item depth to be visible in smoke.

// Set Initial Item Movement
variable_instance_set(_new_item, "hsp_float", _hsp);							// Apply hspeed float
variable_instance_set(_new_item, "vsp_float", _vsp);							// Apply vspeed float


//======================================================
// Spawn Smoke Function
//======================================================
#define spawn_smoke(_x, _y)
/*var elmt_smoke = instance_create(_x, _y, "obj_article1");                 	// Spawn an entity
variable_instance_set(elmt_smoke, "ent_idx", player_id.ENT_ELMT_SMOKE );    	// Set the entity to the smoke element.
variable_instance_set(elmt_smoke, "image_alpha", 0.5 );                     	// Set the opacity
variable_instance_set(elmt_smoke, "depth", -100 );                          	// Set the depth to be in front of all players.*/
var _smoke_radius = player_id.sna_smoke_radius;
var _smoke_lifetime = player_id.sna_smoke_lifetime;
var _smoke_idx_latest = player_id.sna_smoke_idx_latest;
var _smoke_idx_limit = player_id.sna_smoke_idx_limit;

with (player_id) {
	// Create new smoke by overwriting smoke arrays.
	sna_smoke_clouds[sna_smoke_idx_latest].x = _x;
	sna_smoke_clouds[sna_smoke_idx_latest].y = _y;
	sna_smoke_clouds[sna_smoke_idx_latest].creation_time = get_gameplay_time();
	// Update the "latest" smoke array index.
	sna_smoke_idx_latest++;														// Advance the "latest index" array
	if (sna_smoke_idx_latest >= sna_smoke_idx_limit) sna_smoke_idx_latest = 0;	// Loop the latest index back to 0, if reaching the limit.
}


//======================================================
// Despawn Hook
//======================================================
#define on_despawn

// Destroy Child Hitboxes
//if (child_hitbox != noone) child_hitbox.destroyed = true;                       // Destroy the child hitbox.
if (variable_instance_exists(child_hitbox, "destroyed") ) child_hitbox.destroyed = true;                       // Destroy the child hitbox.

// Destroy Entity
instance_destroy();                                                             // Destroy the entity.



//======================================================
// Hitbox Detection
//======================================================
#define hitbox_detection

// Hitbox Detection Timers
if (hit_fx_cooldown > 0) hit_fx_cooldown--;

// Reset the last hit variables, if the last hit player is no longer in the attack state.
if (hbox_player_id_last != noone) {
    
    with (oPlayer) {
        if (self == other.hbox_player_id_last) {
            
            if (
                !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) ||
                (window == get_attack_value( attack, AG_NUM_WINDOWS ) && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH ) )
            ) {                                                                 // If the player is not in an attack state, or on the last frame of the attack state...
                // Reset the last hitbox values.
                other.hbox_player_id_last = noone;
                other.hbox_attack_last = noone;
                other.hbox_group_last = noone;
                other.hbox_num_last = noone;
                
            }
            
        }
    }
    
}

// Hitbox Collisions
/*var _col_hbox = instance_place( x, y, pHitBox );                                // Check for hitbox collisions.

if !(instance_exists(_col_hbox)) return false;                                  // Don't run this function if there is no hitbox collision.
if (_col_hbox == child_hitbox)  return false;                                   // Ignore the child hitbox.  */

// Get the hitboxes that this entity is colliding with.
var _col_hbox = noone;
with(pHitBox){
    if (self == other.child_hitbox) continue;                                   // Skip child hitboxes.
    if (instance_place( x, y, other ))                                          // If colliding with this entity...
        _col_hbox = self;                                                       // Set the collision hitbox.
}
if !(instance_exists(_col_hbox)) return false;                                  // Don't run this function if there is no hitbox collision.
    
// Don't take damage the same hitbox twice.                                      (NOT FOOLPROOF! This doesn't account for things like hitbox groups.)
if (_col_hbox.type == 1) {                                                      // If the hitbox is NOT a projectile...
    if (hbox_player_id_last == _col_hbox.player_id && hbox_attack_last == _col_hbox.attack) {   // If collding with a hitbox from the same attack as last frame...
        
        if (hbox_group_last == _col_hbox.hbox_group && _col_hbox.hbox_group != -1) return;  // Don't collide with hitboxes in the same group as the last hitbox.
        if (hbox_num_last == _col_hbox.hbox_num) return;                                    // Don't collide with the same hitbox num twice.
        //if (_col_hbox == hbox_last) return;                                         // Never collide with the same hitbox twice.
                
    }
}
if (_col_hbox.type == 2) {                                                      // If the hitbox is a projectile...
    if (_col_hbox == hbox_last) return;                                         // Never collide with the same projectile hitbox twice.
}


// Hit Event
on_hit(_col_hbox);                                                              // Run On Hit Hook
if !(instance_exists(self)) exit;                                               // Stop running the script if this entity was destroyed.

// Force Free
if (time_since_hit < time_hit_force_free) free = true;                          // Force the entity to be NOT grounded for a few frames, if recently hit.

// Update the last hitbox variables.
hbox_last = _col_hbox;
hbox_player_id_last = _col_hbox.player_id;
hbox_attack_last = _col_hbox.attack;
hbox_num_last = _col_hbox.hbox_num;
hbox_group_last = _col_hbox.hbox_group;


return true;

//======================================================
// On Hit
//======================================================
#define on_hit(_col_hbox)

// Bonk hitbox reaction
if ("sna_parent_ent" in _col_hbox && ignore_bounce_hitboxes) {                  // If the hitbox is a bonk hitbox, and this entity ignores bonk hitboxes...
    if (_col_hbox.sna_parent_ent != noone) return;                              // Ignore bonk hitboxes. (To avoid domino effect.)
}

var _velocity = abs(point_distance(x, y, x - hsp_float, y - vsp_float));        // Get the velocity.

if (_velocity > 6 && _col_hbox.effect == 19) return;                            // Ignore hitboxes with HG_EFFECT set to 19, if moving faster than 6 pixels per frame.
if (_col_hbox.effect == 13) return;                                             // Ignore flashbang hitbxoes.

// Hit effect cooldown timer.
if (hit_fx_cooldown < 1) {                                                      // If the hit effect cooldown timer is at 0...
    
    // Play Sound Effects
    if (sfx_on_hit != noone) sound_play(sfx_on_hit, false, noone, 0.5 );        // Play the hit sound.
    // Draw hit effeects
    spawn_hit_fx(x, y, _col_hbox.hit_effect);                                   // Draw the visual hit effect.
    
    // Set effect cooldown.
    hit_fx_cooldown = 60;                                                       // Set the hit cooldown to 1 second.
    
}

// Apply Hitbox Force.
var _hbox_ang = get_hitbox_angle(_col_hbox);                                    // Get the hitbox angle.
hsp_float = lengthdir_x(_col_hbox.kb_value * kb_scale, _hbox_ang);              // Apply horizontal hitbox force.
vsp_float = lengthdir_y(_col_hbox.kb_value * kb_scale, _hbox_ang);              // Apply vertical hitbox force.
//free = true;                                                                    // Temporarily make the entity not grounded.

// Hitbox Damage
dmg += _col_hbox.damage;                                                        // Increase the entity's damage percent.
if ("sna_life" in _col_hbox) sna_life -= _col_hbox.sna_dmg_life;                // Decrease the entity's LIFE gauge.
if ("sna_psyche" in _col_hbox) sna_psyche -= _col_hbox.sna_dmg_psyche;          // Decrease the entity's PSYCHE gauge.

// Explode on impact behaviour
//if (gren_explodeonimpact) { on_grenade_explosion(); exit; }                     // If the entity explodes on impact, run the grenade explosion event.

// Destroy the hitbox, if necessary.
if (_col_hbox.type == 2 && !_col_hbox.transcendent)                             // If the hitbox is a non-transcendent projectile...
    _col_hbox.destroyed = true;                                                 // destroy the hitbox.

// Reset hit timer.
time_since_hit = 0;                                                             // Reset the time since hit timer.


//-----------------------------------
// Custom Entity Behaviour
//-----------------------------------
switch(ent_idx){
    
    //--------------------------------
    // Throwables
    //--------------------------------
    case 0: // ENT_MAG
    case 1: // ENT_GREN_SMOKE
    case 2: // ENT_GREN_STUN
    case 3: // ENT_GREN_FRAG
        
        //var _created_hitbox = 2;                                                // Set the created hitbox to be the bounce hitbox (no hitstun).
        var _created_hitbox = 1;                                                // Set the created hitbox to be the bounce hitbox (with hitstun).
        
        // Hitbox Reactions
        if ("sna_prime" in _col_hbox.player_id) {                                           // If the hitbox belongs to a snake player...
            
            switch(_col_hbox.attack){                                                       // Get Hitbox Attack
                
                // Firearm Reactions
                case AT_FSPECIAL:
                    switch(_col_hbox.hbox_num){
                        // Bullets
                        case 1:     // .45 Bullet
                        case 3:     //5.56 Bullet
                            if (ent_idx == 0) _created_hitbox = 3;                          // If the entity is a magazine, set the created hitbox to be the "DING!" hitbox.
                            else {                                                          // If the entity is a grenade...
                                gren_explodeonimpact = true;                                // Enable exploding on impact when shot.
                                gren_explosionwarning = true;                               // Enable visual explosion warning.
                                ent_timer_not_held = 0;                                     // Reset the timer; Delay the fuse.
                            }
                        break;
                        
                        // Tranq Darts
                        case 2:     // 9mm Dart
                        case 4:     // 7.62 Dart
                            if (ent_idx == 0) _created_hitbox = 3;                          // If the entity is a magazine, set the created hitbox to be the "DING!" hitbox.
                            else {                                                          // If the entity is a grenade...
                                gren_explodeonimpact = true;                                // Enable exploding on impact when shot.
                                gren_explosionwarning = true;                               // Enable visual explosion warning.
                                ent_timer_not_held = 0;                                     // Reset the timer; Delay the fuse.
                            }
                        break;
                    }
                    
                    var _proj_ang = _col_hbox.proj_angle;
                    var _proj_dir = _col_hbox.spr_dir;
                    
                    hsp_float = lengthdir_x(12, _proj_ang) * _proj_dir;                     // Apply the custom bullet horizontal knockback to the entity.
                    vsp_float = -abs(lengthdir_y(7, _proj_ang)) - 5;                        // Apply the custom bullet vertical knockback to the entity. Always negative, and below -5.
                break;
                
                // Explosion and Throwable Reactions
                case AT_NSPECIAL:
                    switch(_col_hbox.hbox_num){
                        case 3: // "DING!"
                            if (ent_idx != 0 ) {                                            // If the entity is a grenade...
                                gren_explodeonimpact = true;                                // Enable exploding on impact when shot.
                                gren_explosionwarning = true;                               // Enable visual explosion warning.
                                ent_timer_not_held = 0;                                     // Reset the timer; Delay the fuse.
                            }
                        break;
                        
                        case 6: // Flashbang
                            hsp_float = 0;                                                  // Remove the velocity.
                            vsp_float = -1;
                        break;
                        
                        case 7: // Claymore
                            if (ent_idx == 0) _created_hitbox = 3;                          // If the entity is a magazine, set the created hitbox to be the "DING!" hitbox.
                            else {                                                          // If the entity is a grenade...
                                gren_explodeonimpact = true;                                // Enable exploding on impact when shot.
                                gren_explosionwarning = true;                               // Enable visual explosion warning.
                                ent_timer_not_held = 0;                                     // Reset the timer; Delay the fuse.
                            }
                            
                            hsp_float = 16 * _col_hbox.spr_dir;                             // Apply custom knockback.
                            vsp_float = -4;
                        break;
                    }
                break;
                
            }
            
            
        }
        
        //print_debug(string(_col_hbox.attack) + " " + string(_col_hbox.hbox_num) + " " + string(_created_hitbox) + " ent_idx: " + string(ent_idx));
        
        // Destroy the current child hitbox.
        if ( "sna_parent_ent" in child_hitbox )                                 // If the entity has a child hitbox...
            instance_destroy(child_hitbox);                                     // Destroy the child hitbox. 
        
        // Create a new child hitbox.
        child_hitbox = create_hitbox(AT_NSPECIAL, _created_hitbox, x, y - 8);   // Create the bounce hitbox.
        child_hitbox.sna_parent_ent = self;                                     // Link the child hitbox.
        
        //free = true;                                                            // Temporarily make the entity NOT grounded.
        
        // Set the hitbox owner.
        if ("sna_parent_ent" in child_hitbox) child_hitbox.player = _col_hbox.player;   // Set the bounce hitbox owner to the player that hit the hitbox.
        
    break;
    
}


//======================================================
// HOOKS
//======================================================

//======================================================
// Initialization Hook
//======================================================
#define on_init

var dict_entity = player_id.dict_entities[ent_idx];


//------------------------------------------------------
// Article Settings
//------------------------------------------------------
can_be_grounded = dict_entity.can_be_grounded;
ignores_walls = dict_entity.ignores_walls;


//------------------------------------------------------
// Draw Settings
//------------------------------------------------------

// Set sprite
if (dict_entity.spr_idx == noone) sprite_index = asset_get("empty_sprite");     // Use a blank sprite if spr_idx is set to noone.
else sprite_index = sprite_get(string(dict_entity.spr_idx));                    // Set the sprite_index.
// Set mask
if (dict_entity.msk_idx == noone) mask_index = asset_get("empty_sprite");       // Use a blank sprite if msk_idx is set to noone.    
else mask_index = sprite_get(string(dict_entity.msk_idx));                      // Set the mask_index.
// Set anim type
anim_type = dict_entity.anim_type;                                              // 0 = static, 1 = looping, 2 = physics windows, 3 = sticky windows
anim_length = dict_entity.anim_length;                                          // How fast the entity animates. (Only for looping.)


//------------------------------------------------------
// Hitbox Settings
//------------------------------------------------------
can_be_hit = dict_entity.can_be_hit;                                            // Can this entity be hit by hitboxes?
ignore_bounce_hitboxes = dict_entity.ignore_bounce_hitboxes;                    // Can this entity be bonk'd by other entities?


//------------------------------------------------------
// Physics Settings
//------------------------------------------------------
has_physics = dict_entity.has_physics;                                          // Does this entity have physics?

gravity_speed = dict_entity.gravity_speed;                                      // Gravity acceleration
max_fall = dict_entity.max_fall;                                                // Maximum fall speed
air_friction = dict_entity.air_friction;                                        // How fast the entity slows down horizontally, while in the air.
ground_friction = dict_entity.ground_friction;                                  // How fast the entity slows down horizontally, while on the ground.
bounciness = dict_entity.bounciness;                                            // Speed is reversed and multiplied by this number, when bouncing on a surface.

//has_player_bounce = dict_entity.has_player_bounce;                            // Whether or not this entity can bounce off other players. (Disabled on bounce.)
//player_bounce_damage = dict_entity.player_bounce_damage;                      // How much physics damage to inflict when bouncing off of an enemy player. (Can only happen once.)

sna_can_push = dict_entity.sna_can_push;                                        // Can this entity push other entities?
sna_can_be_pushed = dict_entity.sna_can_be_pushed;                              // Can this entity be pushed by other players and entities?


//------------------------------------------------------
// Statistics
//------------------------------------------------------
sna_life = dict_entity.life;                                                    // How much LIFE this entity starts out with. -1 for no LIFE system.		Triggers hook function when it reaches 0.
sna_life_max = sna_life;

sna_psyche = dict_entity.psyche;                                                // How much PSYCHE this entity starts out with. -1 for no PSYCHE system.	Triggers hook function when it reaches 0.
sna_psyche_max = sna_psyche;

dmg_threshold = dict_entity.dmg_threshold;                                      // How much damage this entity can take, before triggering the damage threshold hook. -1 for no damage effect.


//------------------------------------------------------
// Pickup Settings
//------------------------------------------------------
is_pickup = dict_entity.is_pickup;												// Can this entity be picked up?
pickup_item_idx = dict_entity.pickup_item_idx;									// Item index that this pickup relates to.
pickup_gives_item = dict_entity.pickup_gives_item;								// True/False; Does this pickup give the player the item? (False for ammo boxes, and silencers.)
pickup_given_ammo = dict_entity.pickup_given_ammo;								// How much ammo should this pickup give?
pickup_given_suppressors = dict_entity.pickup_given_suppressors;				// How many suppressors should this pickup give?
pickup_fill_mag = dict_entity.pickup_fill_mag;									// Should this pickup fill the weapon's magazine? (True for weapon pickups. False for ammo boxes.)


//------------------------------------------------------
// Grenade Settings
//------------------------------------------------------
gren_fuselength = dict_entity.gren_fuselength;                                  // How long the fuse lasts before triggering the explode hook. -1 for no fuse.
gren_explosion_fx = dict_entity.gren_explosion_fx;                              // The explosion effect to draw. 1 for no effect.
gren_explosion_hbox = dict_entity.gren_explosion_hbox;                          // Explosion hitbox index. (Index from nspecial.gml. Set to "noone" for no hitbox.)
gren_explosion_hbox_friendly = dict_entity.gren_explosion_hbox_friendly;        // Friendly fire explosion hitbox index. (Index from nspecial.gml. Set to "noone" for no friendly fire hitbox.)
gren_explosion_earshot = dict_entity.gren_explosion_earshot;        			// Maximum which the explosion can be heard.
gren_explodeonimpact_timer = dict_entity.gren_explodeonimpact_timer;            // How long while holding this before the grenade explodes on impact. -1 to never explode on impact.


//------------------------------------------------------
// Plantable Settings
//------------------------------------------------------
plnt_sticky = dict_entity.plnt_sticky;                                          // Can this plantable be stuck to objects?
plnt_detonatable = dict_entity.plnt_detonatable;                                // Can this plantable be detonated?


//------------------------------------------------------
// Sound Settings
//------------------------------------------------------
sfx_ready = dict_entity.sfx_ready;
sfx_throw = dict_entity.sfx_throw;
sfx_bounce = dict_entity.sfx_bounce;
sfx_on_hit = dict_entity.sfx_on_hit;
sfx_gren_explode = dict_entity.sfx_gren_explode;


//------------------------------------------------------
// Optimization Settings
//------------------------------------------------------
cleanup_time = dict_entity.cleanup_time;
cleanup_distance = dict_entity.cleanup_distance;




//======================================================
// FUNCTIONS
//======================================================

//-----------------------------------------
// Give Equipment
//-----------------------------------------
#define give_equipment(_ply, _idx, _ammo, _fill_magazine)															// Give an item. Specify the given ammo, and whether or not it should fill the magazine.
with(_ply) {
    
    var _given_equipment = dict_equipment[_idx];
    var _equipment_already_owned = _given_equipment.is_owned;                                       // Was this equipment already owned? Used to prevent unnecessarily chambering the firearm.
    
    // Give Equipment
    dict_equipment[_idx].is_owned = true;																		                    // Give the player the equipment.
    
    // Give Ammo
    if (_given_equipment.uses_ammo) {																								// If the given equipment uses ammo...
    	
    	var _should_fill_mag = _fill_magazine;
    	if (_equipment_already_owned) _should_fill_mag = false;                                                                 // Don't fill the magazine if the equipment was already owned.
    	
    	give_ammo(_ply, _idx, _ammo, _should_fill_mag);																			// Give the player the desired ammo.
    	
    	if (!_equipment_already_owned)                                                                                          // If this weapon wasn't already owned...
    	    dict_equipment[_idx].is_chambered = (_given_equipment.ammo_mag > 0) ? true : false;									// If the mag has ammo, chamber it. If the mag comes empty, don't chamber it.
    
    	
    }
    
    inventory_refresh();																						                    // Rebuild the inventory lists.

}



//-----------------------------------------
// Give Ammo
//-----------------------------------------
#define give_ammo(_ply, _idx, _ammo, _fill_magazine)
with(_ply) {
    
    var _given_equipment = dict_equipment[_idx];
    
    // Give Ammo
    dict_equipment[_idx].ammo_total = clamp(dict_equipment[_idx].ammo_total + _ammo, 0, _given_equipment.ammo_total_max);		// Give the player the desired ammo.
    
    // Fill Magazine
    if (_fill_magazine == true && _given_equipment.uses_magazines == true) {													// Should the magazine be filled?
    	dict_equipment[_idx].ammo_mag = clamp(_given_equipment.ammo_total, 0, _given_equipment.ammo_mag_max);	                // Fill the magazine, if specified.
    	if (_given_equipment.mag_bullet_queue < 1)																				// If the mag bullet queue is less than 1...
    		dict_equipment[_idx].mag_bullet_queue = clamp(_given_equipment.mag_bullet_queue + _ammo, -_given_equipment.ammo_mag_max, _given_equipment.ammo_mag_max);	// Reset the mag bullet queue.
    }
    
}



//-----------------------------------------
// Give Suppressors
//-----------------------------------------
#define give_suppressors(_ply, _idx, _suppressors)
with(_ply) {
    
    if (_suppressors <= 0) exit;                                                // Don't run this function if no suppressors are given.
    
    var _given_equipment = dict_equipment[_idx];
    
    // Give Suppressors
    if (_given_equipment.uses_suppressors) {                                                                                // If the given weapon uses suppressors...
        if (_given_equipment.suppressor_durability > 0 ) {                                                                  // If the player has at least one working suppressor...
            dict_equipment[_idx].num_suppressors = clamp(dict_equipment[_idx].num_suppressors + _suppressors, 0, 99);		// Give the player the desired number of suppressors.
        }
        else {                                                                                                              // If the player has no backup suppressors, and the suppressor is deteriorated...
            dict_equipment[_idx].suppressor_durability = 100;                                                               // Restore the suppressor durability.
        }
    }
    
}



//-----------------------------------------
// Remove Equipment
//-----------------------------------------
#define remove_equipment(_ply, _idx )														// Remove an item. Specify the given ammo, and whether or not it should fill the magazine.
with(_ply) {
    
    var _taken_equipment = dict_equipment[_idx];
    
    dict_equipment[_idx].is_owned = false;												// Remove the equipment.
    
    inventory_refresh();																// Rebuild the inventory lists.

}


#define inv_update_firearm_index 												// Update the current firearm index.
inv_firearm = inv_firearm_containers[inv_firearm_container];

if (inv_firearm != EQ_EMPTY) inv_firearm_prev = inv_firearm;					// If you didn't switch to an empty slot, update your previously equipped firearm to the currently equipped one.

#define inv_update_throwable_index 												// Update the current throwable index.
inv_throwable = inv_throwable_containers[inv_throwable_container];

#define inv_update_plantable_index 												// Update the current plantable index.
inv_plantable = inv_plantable_containers[inv_plantable_container];

#define inv_update_item_index 													// Update the current item index.
inv_item = inv_item_containers[inv_item_container];


//-----------------------------------------
// Refresh Inventory
//-----------------------------------------
#define inventory_refresh                                                       // Go through the equipment dictionary, and add the owned equipment to the inventory.
inv_firearm_containers = [];
inv_throwable_containers = [];
inv_plantable_containers = [];
inv_item_containers = [];

var _len = array_length(dict_equipment);
for (var _i = 0; _i < _len; _i++) {
    var _category = dict_equipment[_i].category;
    
    // Add an empty container to the firearms category, by default.
    if (_i == EQ_EMPTY) array_push(inv_firearm_containers, EQ_EMPTY);				// By default, add an empty container to the firearms category. THIS IS REQUIRED!!!
    
    else {																			// Skip EQ_EMPTY, since whether or not you "own" it shouldn't affect anything.
    	
    	// Add the rest of the owned weapons.
	    if (dict_equipment[_i].is_owned) {                                          // If the weapon is owned...
	        
	        if (_category == 0) array_push(inv_firearm_containers, _i);              // Add the equipment IDs to the inventory slots.
	        else if (_category == 1) array_push(inv_throwable_containers, _i);
	        else if (_category == 2) array_push(inv_plantable_containers, _i);
	        else if (_category == 3) array_push(inv_item_containers, _i);
	        
	    }
    
    }
    
}

// Handle container categories with no equipment:
if (array_length(inv_throwable_containers) == 0) array_push(inv_throwable_containers, EQ_EMPTY);	// If you have an empty category, add an empty container to each empty category.
if (array_length(inv_plantable_containers) == 0) array_push(inv_plantable_containers, EQ_EMPTY);
if (array_length(inv_item_containers) == 0) array_push(inv_item_containers, EQ_EMPTY);


inventory_retain_selection();                                                   // Retain the current inventory selection.

// Update the inventory equipment IDs
inv_update_firearm_index();														// Update the currently selected inventory indexes.
inv_update_throwable_index();
inv_update_plantable_index();
inv_update_item_index();



//-----------------------------------------
// Retain Inventory Selections
//-----------------------------------------
#define inventory_retain_selection												// Retain the inventory selection. Used after adding/removing an inventory item.

// Firearms
var _len = array_length(inv_firearm_containers);
for (var i = 0; i < _len; i++) {				// Loop through the firearm containers, and find the currently equipped firearm.
	
	if (inv_firearm_containers[i] == inv_firearm)								// If you find the previously equipped firearm index...
		inv_firearm_container = i;												// Set the current firearm container to this one.
	
	else if (i == _len - 1) {				    // If you haven't found your last equipped firearm...
		
		inv_firearm_container = clamp(inv_firearm_container, 0, i);				// Clamp the current container, in case it's over the array length.
		
	}
	
}

// Throwables
var _len = array_length(inv_throwable_containers);
for (var i = 0; i < _len; i++) {				// Loop through the throwable containers, and find the currently equipped throwable.
	
	if (inv_throwable_containers[i] == inv_throwable)							// If you find the previously equipped throwable index...
		inv_throwable_container = i;											// Set the current throwable container to this one.
	
	else if (i == _len - 1) {		// If you haven't found your last equipped throwable...
		
		inv_throwable_container = clamp(inv_throwable_container, 0, i);			// Clamp the current container, in case it's over the array length.
		
	}
	
}

// Plantables
var _len = array_length(inv_plantable_containers);
for (var i = 0; i < _len; i++) {				// Loop through the plantable containers, and find the currently equipped plantable.
	
	if (inv_plantable_containers[i] == inv_plantable)							// If you find the previously equipped plantable index...
		inv_plantable_container = i;											// Set the current plantable container to this one.
	
	else if (i == _len - 1) {		// If you haven't found your last equipped plantable...
		
		inv_plantable_container = clamp(inv_plantable_container, 0, i);			// Clamp the current container, in case it's over the array length.
		
	}
	
}

// Items
var _len = array_length(inv_item_containers);
for (var i = 0; i < _len; i++) {					// Loop through the item containers, and find the currently equipped item.
	
	if (inv_item_containers[i] == inv_item)										// If you find the previously equipped item index...
		inv_item_container = i;													// Set the current item container to this one.
	
	else if (i == _len - 1) {						// If you haven't found your last equipped item...
		
		inv_item_container = clamp(inv_item_container, 0, i);					// Clamp the current container, in case it's over the array length.
		
	}
	
}


