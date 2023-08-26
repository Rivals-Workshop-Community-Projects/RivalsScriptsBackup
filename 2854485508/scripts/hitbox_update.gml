if (attack == AT_NSPECIAL && hbox_num == 1) {
    proj_angle = point_direction(0,0,hsp,vsp)
    if (!free) destroyed = true;
}

if (attack == AT_NSPECIAL_2 && hbox_num == 1) {
    if (instance_exists(mamizou_enemy)) {
        x = mamizou_enemy.x;
        y = mamizou_enemy.y;
    }
}

//Attacking hitboxes take priority over Tanukis
if (attack == AT_FSPECIAL && hbox_num = 1)
{
    var hbox = instance_place(floor(x), floor(y), pHitBox);
    if (instance_exists(hbox)) {
        var valid_player = 0;
        var hurtb = instance_place(floor(hbox.x), floor(hbox.y), pHurtBox);
        
        if (instance_exists(hurtb) && hurtb > 0 && hbox.type != 2 && hurtb.player == hbox.player) {
            valid_player = hurtb.player
        }
        
        if (valid_player != 0)
            can_hit[valid_player] = false;
    }
}