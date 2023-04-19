var player_marked = false;
with (oPlayer) {
    if (("mamizou_mark_id" in self) && mamizou_mark_id == other.id) {
        player_marked = true;
    }
}

with (obj_article2) {
    if (("mamizou_mark_id" in self) && mamizou_mark_id == other.id) {
        player_marked = true;
    }
}

//Remote Tanuki attacks 
/*if (is_attack_pressed(DIR_ANY)) {
    with (obj_article2) {
        if (!committed) {
        	next_attack = AT_EXTRA_3;
        	ai_attack_cooldown = 30;
        	ai_attack_timer = 0;
        }
    }
}*/

if (player_marked) {
    if (attack == AT_NSPECIAL)
        attack = AT_NSPECIAL_2;
    if (attack == AT_USPECIAL)
        attack = AT_USPECIAL_2;
        
    hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
}