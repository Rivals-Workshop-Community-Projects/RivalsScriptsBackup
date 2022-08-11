//
if (attack == AT_FSPECIAL && hbox_num > 2){
    spr_dir = 1;
    damage = 0;
    kb_value = 0;
    hit_priority = 0;
}
if (attack == AT_DSPECIAL && hbox_num == 4){
    if (player_id.attack == AT_DSPECIAL_2 && player_id.window == 2){
        destroyed = true;
    }
}
if (attack == AT_FSPECIAL){
    throws_rock = 2;
}

if (attack == 49){
    can_tech = 3;
}
if (attack == AT_DSTRONG && type == 2){
    if (free == true){
        hitbox_timer = 999;
    }
}
if (attack == AT_NSPECIAL && was_parried && !useless && hbox_num < 3){
    destroyed = true;
}



if (attack == AT_USTRONG && type == 2){
    spr_dir = 1;
    draw_xscale = spr_dir;
    player_id.ustrong_proj_angle = proj_angle;
    if (useless == true){
        
        damage = 0;
        kb_value = 0;
        hits_rock = 2;
        hit_priority = 0;
        mask_index = 0;
    }
    proj_angle = darctan2(-vsp, hsp);
    if (hitbox_timer < 14){
    var y_pos;
    if (proj_angle == 90){
        y_pos = 40;
    }
    if (proj_angle == 270){
        y_pos = -40;
    }
    if (proj_angle == 45 or proj_angle == 135){
        y_pos = 40;
    }
    if (proj_angle == 225 or proj_angle == 315){
        y_pos = -40;
    }
    if (proj_angle == 0 or proj_angle == 180){
        y_pos = 0;
    }
    var x_pos;
    if (proj_angle == 90){
        x_pos = 4;
    }
    if (proj_angle == 270){
        x_pos = -4;
    }
    if (proj_angle == 45 or proj_angle == 0 or proj_angle == 315){
        x_pos = -40;
    }
    if (proj_angle == 135 or proj_angle == 180 or proj_angle == 225){
        x_pos = 0;
    }
    var trail = spawn_hit_fx(x + x_pos, y + y_pos,player_id.flame_trail);
    }
    if (hitbox_timer > 14){
        useless = true;
    } else useless = false;
    trail.draw_angle = proj_angle;
    if (portal_proj_angle != 0 && teleported == false){
        hitbox_timer = 0;
        player_id.move_cooldown[AT_USTRONG] = 30;
        image_index = 0;
        if (portal_proj_angle == 21){
            vsp = -8;
            hsp = 0;
        }
        if (portal_proj_angle == 22){
            vsp = -8;
            hsp = 8;
        }
        if (portal_proj_angle == 23){
            vsp = 0;
            hsp = 8;
        }
        if (portal_proj_angle == 24){
            vsp = 8;
            hsp = 8;
        }
        if (portal_proj_angle == 25){
            vsp = 8;
            hsp = 0;
        }
        if (portal_proj_angle == 26){
            vsp = 8;
            hsp = -8;
        }
        if (portal_proj_angle == 27){
            vsp = 0;
            hsp = -8;
            proj_angle = 0;
        }
        if (portal_proj_angle == 28){
            vsp = -8;
            hsp = -8;
        }
        if (portal_proj_angle == 15){
            vsp = -8;
            hsp = 0;
            proj_angle = 90;
        }
        if (portal_proj_angle == 16){
            vsp = -8;
            hsp = 8;
            proj_angle = 45;
        }
        if (portal_proj_angle == 17){
            vsp = 0;
            hsp = 8;
            proj_angle = 0;
        }
        if (portal_proj_angle == 18){
            vsp = 8;
            hsp = 8;
            proj_angle = -45;
        }
        if (portal_proj_angle == 11){
            vsp = 8;
            hsp = 0;
            proj_angle = -90;
        }
        if (portal_proj_angle == 12){
            vsp = 8;
            hsp = -8;
            proj_angle = -45;
        }
        if (portal_proj_angle == 13){
            vsp = 0;
            hsp = -8;
            proj_angle = 0;
        }
        if (portal_proj_angle == 14){
            vsp = -8;
            hsp = -8;
            proj_angle = 45;
        }
        teleported = true;
    }
}
if (attack == AT_BAIR){
    if (hitbox_timer == 20){
        spawn_hit_fx(x,y,112);
    }
    proj_angle = darctan2(-vsp, hsp*spr_dir);
    if (portal_proj_angle != 0 && teleported == false){
        hitbox_timer = 0;
        hit_flipper = 3;
        if (portal_proj_angle == 21){
            spr_dir = 1;
            vsp = -10;
            hsp = 0;
            proj_angle = 90;
        }
        if (portal_proj_angle == 22){
            spr_dir = 1;
            vsp = -10;
            hsp = 10;
            proj_angle = 45;
        }
        if (portal_proj_angle == 23){
            spr_dir = 1;
            vsp = 0;
            hsp = 10;
            proj_angle = 0;
        }
        if (portal_proj_angle == 24){
            spr_dir = 1;
            vsp = 8;
            hsp = 8;
            proj_angle = -45;
        }
        if (portal_proj_angle == 25){
            spr_dir = 1;
            vsp = 10;
            hsp = 0;
            proj_angle = -90;
        }
        if (portal_proj_angle == 26){
            spr_dir = -1;
            vsp = 8;
            hsp = -8;
            proj_angle = -45;
        }
        if (portal_proj_angle == 27){
            spr_dir = -1;
            vsp = 0;
            hsp = -10;
            proj_angle = 0;
        }
        if (portal_proj_angle == 28){
            spr_dir = -1;
            vsp = -8;
            hsp = -8;
            proj_angle = 45;
        }
        if (portal_proj_angle == 15){
            spr_dir = 1;
            vsp = -10;
            hsp = 0;
            proj_angle = 90;
        }
        if (portal_proj_angle == 16){
            spr_dir = 1;
            vsp = -10;
            hsp = 10;
            proj_angle = 45;
        }
        if (portal_proj_angle == 17){
            spr_dir = 1;
            vsp = 0;
            hsp = 10;
            proj_angle = 0;
        }
        if (portal_proj_angle == 18){
            spr_dir = 1;
            vsp = 8;
            hsp = 8;
            proj_angle = -45;
        }
        if (portal_proj_angle == 11){
            spr_dir = 1;
            vsp = 10;
            hsp = 0;
            proj_angle = -90;
        }
        if (portal_proj_angle == 12){
            spr_dir = -1;
            vsp = 8;
            hsp = -8;
            proj_angle = -45;
        }
        if (portal_proj_angle == 13){
            spr_dir = -1;
            vsp = 0;
            hsp = -10;
            proj_angle = 0;
        }
        if (portal_proj_angle == 14){
            spr_dir = -1;
            vsp = -8;
            hsp = -8;
            proj_angle = 45;
        }
        teleported = true;
    }
}
if (attack == AT_NSPECIAL){
    through_platforms = 999;
    if (portal_proj_angle != 0 && teleported == false){
        if (state != 2){
        state = 1;
        state_timer = 0;
        }
        if (portal_proj_angle == 21){
            vsp = -10;
            hsp = 0;
            proj_angle = 90;
        }
        if (portal_proj_angle == 22){
            spr_dir = 1;
            vsp = -10;
            hsp = 10;
            proj_angle = 45;
        }
        if (portal_proj_angle == 23){
            spr_dir = 1;
            vsp = 0;
            hsp = 10;
            proj_angle = 0;
        }
        if (portal_proj_angle == 24){
            spr_dir = 1;
            vsp = 8;
            hsp = 8;
            proj_angle = -45;
        }
        if (portal_proj_angle == 25){
            vsp = 10;
            hsp = 0;
            proj_angle = -90;
        }
        if (portal_proj_angle == 26){
            spr_dir = -1;
            vsp = 8;
            hsp = -8;
            proj_angle = -45;
        }
        if (portal_proj_angle == 27){
            spr_dir = -1;
            vsp = 0;
            hsp = -10;
            proj_angle = 0;
        }
        if (portal_proj_angle == 28){
            spr_dir = 1;
            vsp = -8;
            hsp = -8;
            proj_angle = 45;
        }
        if (portal_proj_angle == 15){
            vsp = -10;
            hsp = 0;
            proj_angle = 90;
        }
        if (portal_proj_angle == 16){
            spr_dir = 1;
            vsp = -10;
            hsp = 10;
            proj_angle = 45;
        }
        if (portal_proj_angle == 17){
            spr_dir = 1;
            vsp = 0;
            hsp = 10;
            proj_angle = 0;
        }
        if (portal_proj_angle == 18){
            spr_dir = 1;
            vsp = 8;
            hsp = 8;
            proj_angle = -45;
        }
        if (portal_proj_angle == 11){
            vsp = 10;
            hsp = 0;
            proj_angle = -90;
        }
        if (portal_proj_angle == 12){
            spr_dir = -1;
            vsp = 8;
            hsp = -8;
            proj_angle = -45;
        }
        if (portal_proj_angle == 13){
            spr_dir = -1;
            vsp = 0;
            hsp = -10;
            proj_angle = 0;
        }
        if (portal_proj_angle == 14){
            spr_dir = 1;
            vsp = -8;
            hsp = -8;
            proj_angle = 45;
        }
        teleported = true;
    }
    if (state != 2){
        if (player_id.attack == AT_NSPECIAL){
            if (player_id.window == 3 or player_id.window == 6 or player_id.window == 9){
                if (player_id.window_timer == 1){
                    state = 2;
                    state_timer = 0;
                    image_index = 0;
                }
            }
        }
    }
    if (useless == true){
        damage = 0;
        kb_value = 0;
        hits_rock = 2;
        hit_priority = 0;
        mask_index = 0;
        hit_effect = 420;
    }
    if (teleported == true && state < 1){
        state = 1;
        state_timer = 0;
    }
    if (hbox_num == 1){
        if (has_hit && state != 2){
            state = 2;
            state_timer = 0;
            image_index = 0;
        }
        if (state == 0){
            if (state_timer == 14){
                state = 1;
                state_timer = 0;
                image_index = 0;
            }
        }
        if (state == 1){
            if (hsp < 8 && spr_dir == 1 && !teleported or hsp > -8 && spr_dir == -1 && !teleported){
                if (!teleported){
                hsp += .5*spr_dir;
                }
            }
            sprite_index = sprite_get("orb");
        }
        if (state == 2){
            sprite_index = sprite_get("orb_despawn");
            useless = true;
            hsp = 0;
            vsp = 0;
        	destroy_fx = 1;
            if (state_timer == 14){
                destroyed = true;
            }
        }
        if (state < 2){
            trail_timer ++;
            if (trail_timer == 6){
                trail_timer = 0;
                spawn_hit_fx(x - 8*spr_dir,y - 16,player_id.orb_trail);
            }
            if (player_id.up_down == false && player_id.down_down == false){
                if (proj_angle == 0){
                if (vsp > 0){
                    vsp -= .5;
                }
                if (vsp < 0){
                    vsp += .5;
                }
                }
            }
            if (!was_parried && proj_angle == 0){
                if (player_id.up_down){
                    if (vsp > -3){
                        vsp -= .5;
                    }
                }
                if (player_id.down_down){
                    if (vsp < 3){
                        vsp += .5;
                    }
                }
            }
        }
    }
    if (hbox_num == 2){
        if (state < 2){
            trail_timer ++;
            if (trail_timer == 6){
                trail_timer = 0;
                spawn_hit_fx(x - 8*spr_dir,y + 12,player_id.orb_trail);
                spawn_hit_fx(x - 8*spr_dir,y - 12,player_id.orb_trail);
                spawn_hit_fx(x - 8*spr_dir,y - 42,player_id.orb_trail);
            }
        }
        if (has_hit && state != 2){
            state = 2;
            state_timer = 0;
            image_index = 0;
        }
        if (state == 0){
            if (state_timer == 14){
                state = 1;
                state_timer = 0;
                image_index = 0;
            }
        }
        if (state == 1){
            if (hsp < 12 && spr_dir == 1 or hsp > -12 && spr_dir == -1){
                if (!teleported){
                hsp += .5*spr_dir;
                }
            }
            sprite_index = sprite_get("rev");
        }
        if (state == 2){
            sprite_index = sprite_get("rev_despawn");
            useless = true;
            hsp = 0;
            vsp = 0;
        	destroy_fx = 1;
            if (state_timer == 14){
                destroyed = true;
            }
        }
        
    }
    if (hbox_num == 3){
        if (state != 2){
        trail_timer ++;
            if (trail_timer == 6){
                trail_timer = 0;
                spawn_hit_fx(x - 8*spr_dir,y + 20,3);
                spawn_hit_fx(x - 8*spr_dir,y - 20,3);
            }
        }
        if (state == 2){
            sprite_index = sprite_get("flame_despawn");
            useless = true;
            hsp = 0;
            vsp = 0;
        	destroy_fx = 1;
            if (state_timer == 14){
                destroyed = true;
            }
        }
        
    }
    state_timer ++;
}