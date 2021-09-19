//article1_init

// Animation

sprite_index = sprite_get("cannonballair");
image_index = 0;  
new_sprite = sprite_get("cannonballair"); 
animation_type = 0;
anim_timer = 0;
anim_type = 0;
uses_shader = true;

// Stats

//can_be_grounded = false;
ignores_walls = false;

// Variables

if (player_id.spr_dir == 1) {
    if (hsp > 0) {
        if (player_id.CannNSpcCharge == 0) {
            vsp = -0.5;
            hsp = 3 + (player_id.hsp);
        }
        
        if (player_id.CannNSpcCharge == 1) {
            vsp = -1;
            hsp = 6 + (player_id.hsp);
        }
        
        if (player_id.CannNSpcCharge == 2) {
            vsp = -1.5;
            hsp = 9 + (player_id.hsp);
        }
        
        if (player_id.CannNSpcCharge == 3) {
            vsp = -1.5;
            hsp = 12 + (player_id.hsp);
        }
    } else {
        if (player_id.CannNSpcCharge == 0) {
            vsp = -0.5;
            hsp = 3;
        }
        
        if (player_id.CannNSpcCharge == 1) {
            vsp = -1;
            hsp = 6;
        }
        
        if (player_id.CannNSpcCharge == 2) {
            vsp = -1.5;
            hsp = 9;
        }
        
        if (player_id.CannNSpcCharge == 3) {
            vsp = -1.5;
            hsp = 12;
        }
    }
} else {
    if (hsp < 0) {
        if (player_id.CannNSpcCharge == 0) {
            vsp = -0.5;
            hsp = (3 + (player_id.hsp * -1)) * -1;
        }
        
        if (player_id.CannNSpcCharge == 1) {
            vsp = -1;
            hsp = (6 + (player_id.hsp * -1)) * -1;
        }
        
        if (player_id.CannNSpcCharge == 2) {
            vsp = -1.5;
            hsp = (9 + (player_id.hsp * -1)) * -1;
        }
        
        if (player_id.CannNSpcCharge == 3) {
            vsp = -1.5;
            hsp = (12 + (player_id.hsp * -1)) * -1;
        }
    } else {
        if (player_id.CannNSpcCharge == 0) {
            vsp = -0.5;
            hsp = -3;
        }
        
        if (player_id.CannNSpcCharge == 1) {
            vsp = -1;
            hsp = -6;
        }
        
        if (player_id.CannNSpcCharge == 2) {
            vsp = -1.5;
            hsp = -9;
        }
        
        if (player_id.CannNSpcCharge == 3) {
            vsp = -1.5;
            hsp = -12;
        }
    }
}

cannonball_enemy_idX = 0;
cannonball_enemy_idY = 0;

cannonball_dir = player_id.spr_dir;

// States

state = 0;
state_timer = 0;
