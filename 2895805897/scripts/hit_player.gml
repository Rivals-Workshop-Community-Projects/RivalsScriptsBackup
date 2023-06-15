//hitbox_update

// FStrong Cancel
if (my_hitboxID.attack == AT_FSTRONG) {
    switch (my_hitboxID.hbox_num) {
        case 1:
        sound_play(sound_get("fstronger"));
        sound_play(asset_get("sfx_blow_heavy1"));
        break;
        case 2:
        has_hit = true;
        break;
    }
}



if (my_hitboxID.attack == AT_USPECIAL_GROUND || my_hitboxID.attack == AT_USPECIAL) {
    sound_play(sound_get("Skill2"), false, noone, 1, 0.7);
    sound_play(asset_get("sfx_mol_norm_explode"));
}

if (my_hitboxID.attack == AT_DATTACK) {
    //sound_play(sound_get("stab"));
    sound_play(asset_get("sfx_shovel_hit_med2"));
}
// The COMMAND GRAB Code
// By Wabungus!

// Detection for hitboxes

// Gets info from grabbed player
if (grabCanPlayer == true && hit_player_obj.grabObjectType == 1 && grabId == 0 && attack == my_hitboxID.attack && !custom_clone) {
    
    // Check for armor variants (won't run grab if they have armor)
    if (hit_player_obj.super_armor == false && (hit_player_obj.soft_armor == 0 || hit_player_obj.soft_armor < orig_knock) && (hit_player_obj.attack_invince != 2 || my_hitboxID.type != 2)) {
        
        // Grabbed Player's Id (long number attached to the player)
        grabId = hit_player_obj.id;
        // Starting positions for grab movement
        grabStartX = hit_player_obj.x;
        grabStartY = hit_player_obj.y;
        
        // Opponent's damage at start of grab (used for falling out early)
        grabOpponetDamage = get_player_damage( hit_player_obj.player );
        
        // Values stored from grabbing hitbox (used if player should somehow fall out of the grab early)
        grabKnockbackScaling = my_hitboxID.kb_scale;
        grabHitBoxDamage = my_hitboxID.damage;
        GrabKnockback = my_hitboxID.kb_value;
        GrabLaunchAngle = get_hitbox_angle( my_hitboxID );
        
        // Prevents grab from making the screen purple
        hit_player_obj.should_make_shockwave = false;
    }
}

// The ADVANCED ARTICLE Code
// By Wabungus

// sets hitboxes custom variable for who they hit
if (!variable_instance_exists(my_hitboxID, "playerHitIDs")) {
    my_hitboxID.playerHitIDs = [0,0,0,0,0,0,0,0]; // gets the id of any player hit
    my_hitboxID.playerHitChecked = [false,false,false,false,false,false,false,false]; // tells article this has already had something activate for it
}

// check if slots are empty
var empty_slot = false;
for (var i = 0; i < 8; i++) {
    if (my_hitboxID.playerHitIDs[@i] == 0) {
        my_hitboxID.playerHitIDs[@i] = hit_player_obj;
        if (i < 7) {
            empty_slot = true;
            if (my_hitboxID.playerHitIDs[@i + 1] != 0) {
                my_hitboxID.playerHitIDs[@i + 1] = 0;
                my_hitboxID.playerHitChecked[@i + 1] = false;
            }
        }
        break;
    }
}
// If all slots would be full next time this runs, loop around to start
if (empty_slot == false) {
    my_hitboxID.playerHitIDs[@0] = 0;
    my_hitboxID.playerHitChecked[@0] = false;
}
