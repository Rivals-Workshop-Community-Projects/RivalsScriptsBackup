// Cardboard Box - Update

// Not grounded
if (free) {                                                                     // If in the air...
    
    // Wall Collision
    if (hit_wall) hsp_float *= -0.5;                                            // If a wall is hit, and the entity has horizontal speed, bounce off the wall.
    
    // Gravity
    vsp_float = clamp(vsp_float + gravity_speed, -1000, max_fall );             // Increase the gravity.
    
    // Air Friction
    hsp_float = lerp(hsp_float, 0, air_friction);                               // Apply air friction
    
}

// Apply physics
hsp = round(hsp_float);                                                         // Convert hsp_float to a whole number.
if (free) vsp = round(vsp_float);                                               // Convert vsp_float to a whole number.

// Hitbox Detection
hitbox_detection();                                                             // Detect Hitboxes.
if !(instance_exists(self)) exit;

// Damage Sprites
if (dmg > dmg_threshold * 0.5) sprite_index = sprite_get("ent_box_idle_dmg");   // Change the sprite to the damaged sprite, if over halfway damaged.

// Damage
if (dmg >= dmg_threshold) {                                                     // If the box takes enough damage...
    sound_play(sound_get("sfx_box_destroy"));                                   // Play the box destroy sound.
    with (player_id) { spawn_hit_fx(other.x, other.y, vfx_box_destroy); }       // Create the box destruction sprite.
    instance_destroy();                                                         // Remove the article.
    exit;                                                                       // Stop running this script.
}

// Distance Cleanup
if (cleanup_distance > -1 && point_distance(x, y, player_id.x, player_id.y) >= cleanup_distance) {
    on_despawn();                                                               // Destroy the entity.
    exit;                                                                       // Stop running this script.
}



//======================================================
// Despawn Hook
//======================================================
#define on_despawn

// Destroy Entity
instance_destroy();                                                             // Destroy the entity.



//======================================================
// Hitbox Detection
//======================================================
#define hitbox_detection

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
var _col_hbox = noone;

// Get the hitboxes that this entity is colliding with.
with(pHitBox){
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

// Phase bullets through cover.
if (variable_instance_exists(_col_hbox.player_id, "sna_cover_obj") &&
self == _col_hbox.player_id.sna_cover_obj &&
_col_hbox.attack == AT_FSPECIAL) return;                                        // Ignore Snake's bullets, if this object is being used as cover.

if (_col_hbox.effect == 13) return;                                             // Ignore flashbang hitbxoes.

// Set hitpause.
hitstop = _col_hbox.hitpause;                                                   // Set hitpause.

// Play Sound Effects
sound_play(sound_get("sfx_box_hit"), false, noone, 1 );                         // Play the box hit sound effect.
// Draw hit effeects
spawn_hit_fx(x, y, _col_hbox.hit_effect);                                       // Draw the visual hit effect.

// Hitbox Damage
dmg += _col_hbox.damage;                                                        // Increase the entity's damage percent.

// Destroy the hitbox, if necessary.
if (_col_hbox.type == 2 && !_col_hbox.transcendent)                             // If the hitbox is a non-transcendent projectile...
    _col_hbox.destroyed = true;                                                 // destroy the hitbox.


