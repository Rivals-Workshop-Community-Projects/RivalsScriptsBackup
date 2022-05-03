// Got Hit

//=========================================================
// BOX DAMAGE
//=========================================================
if (sna_box_is_equipped) {														// If the box is equipped...
	sna_box_dmg += enemy_hitboxID.damage;
	sound_play(sound_get("sfx_box_hit"), false, noone, 1 );						// Play the box hit sound effect.
}

//=========================================================
// VOICE CLIPS
//=========================================================
var _vel = abs(point_distance(x, y, x + hsp, y + vsp));					// Get the velocity Snake was launched at.

if (vox_hurt_cooldown == 0) {
        
    if (_vel < 8) {                                                       // Light attacks
        
        var rand = random_func(0, 3, true);
        
        switch (rand){
            case 0:
            vox_play(vox_hurt_light_01);
            vox_hurt_cooldown = 30;
            break;
            
            case 1:
            vox_play(vox_hurt_light_02);
            vox_hurt_cooldown = 30;
            break;
            
            //case 2:
            //vox_play(vox_hurt_light_03);
            //vox_hurt_cooldown = 30;
            //break;
        }
        
    }
    else if (_vel > 8 && _vel <= 16) {                              // Medium attacks
        
        var rand = random_func(0, 4, true);
        
        switch (rand){
            case 0:
            vox_play(vox_hurt_mid_01);
            vox_hurt_cooldown = 35;
            break;
            
            case 1:
            vox_play(vox_hurt_mid_02);
            vox_hurt_cooldown = 35;
            break;
            
            case 2:
            vox_play(vox_hurt_mid_03);
            vox_hurt_cooldown = 35;
            break;
        }
        
    }
    else if (_vel > 16) {                                                 // Heavy attacks
        
        var rand = random_func(0, 2, true);
        
        switch (rand){
            case 0:
            vox_play(vox_hurt_heavy_01);
            vox_hurt_cooldown = 40;
            break;
            case 1:
            vox_play(vox_hurt_heavy_02);
            vox_hurt_cooldown = 40;
            break;
        }
        
    }
}




//=========================================================
// FUNCTIONS
//=========================================================

#define vox_play(vox)                                                           // Play voice clip; Overwrites already playing voice clips.

sound_stop(vox_prev);                                                           // Stop the previous voice clip, if one is currently playing.
sound_play(vox);                                                                // Play the voice clip.
vox_prev = vox;                                                                 // Update the previous voice clip

