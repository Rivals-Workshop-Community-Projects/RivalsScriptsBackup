for (var i = 0; i <= 1; i++) {
    if (instance_exists(sword_id[i])) {
        if (sword_id[i].follow_type == 0 && sword_id[i].committed) {
            sword_id[i].state = PS_IDLE 
            sword_id[i].state_timer = 0 
            sword_id[i].attack = -1 
        }
    }
}

var kb_sword = knockoff_sword();
if (kb_sword.follow_type == 0 && orig_knock >= sword_knockoff_threshold) {
    kb_sword.follow_type = 1;
    kb_sword.state = PS_HITSTUN;
    kb_sword.state_timer = 0;
    kb_sword.orig_knock = orig_knock;
    kb_sword.kb_angle = 45;
}

if (sprite_index == sprite_get("taunt_2") && image_index >= 6 && image_index < 17) {
    create_hitbox(AT_TAUNT_2, 3, round(x), round(y - 37))
}


#define knockoff_sword()
var kb_sword = nspecial_sword
if (instance_exists(sword_id[kb_sword])) {
    if (sword_id[kb_sword].follow_type == 1 || sword_id[kb_sword].state == PS_DEAD || sword_id[kb_sword].state == PS_RESPAWN) {
        kb_sword = !nspecial_sword
    }
}

return sword_id[kb_sword];
