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

//Final Smash
if (attack == 49 && hbox_num = 1)
{
    if (hitbox_timer <= 10) {
        draw_xscale = lerp(0.5, 1, hitbox_timer / 10) * spr_dir;
        draw_yscale = lerp(0.5, 1, hitbox_timer / 10);
    }
    else {
        draw_xscale = spr_dir;
        draw_yscale = 1;
    }
    
    if (hitbox_timer % 8 == 0) {
        var _fx = spawn_hit_fx(floor(x), floor(y), player_id.hfx_dspec_smoke)
        _fx.depth = depth - 1;
    }
    
    if (hitbox_timer % 30 == 0) {
        for (var i = 0; i < 20; i++) can_hit[i] = true;
    }
}