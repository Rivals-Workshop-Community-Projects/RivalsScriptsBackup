if(attack == AT_USPECIAL && hbox_num == 1) {
    if(instance_exists(player_id.hook)) {
        x = player_id.hook.x;
        y = player_id.hook.y;
    }
}

//Nut Behavior
if (attack == AT_NSPECIAL_AIR) {
    if (hitbox_timer == 1) {
        charge = 0; //The electric charge applied to the nut. Affects knockback and angle flipper.
        orig_kb = kb_value; //Original knockback value so it can be changed back when charge is changed.
        orig_kb_scale = kb_scale;
    }

    if (instance_exists(parent)) {
        switch (parent.charge) {
            case -1:
                kb_value = orig_kb * player_id.negative_kb_modifier;
                kb_scale = orig_kb_scale * player_id.negative_kb_modifier;
                hit_flipper = 0;
                break;
            case 0:
                kb_value = orig_kb;
                kb_scale = orig_kb_scale;
                hit_flipper = 0;
                break;
            case 1:
                kb_value = orig_kb;
                kb_scale = orig_kb_scale;
                hit_flipper = 5;
                break;
        }
    }
}

//Dirt Behavior
if (!free) {
    destroyed = 1;
}