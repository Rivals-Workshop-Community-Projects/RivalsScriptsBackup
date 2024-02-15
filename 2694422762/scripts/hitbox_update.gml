if ((attack == AT_NSPECIAL && hbox_num == 1) || (attack == AT_USTRONG && hbox_num == 2) || (attack == AT_DSTRONG && hbox_num == 1)) {
    spr_dir = 1;
    draw_xscale = spr_dir;
    if ("stuck_dir" not in self) {
        stuck_dir = point_direction(0,0,hsp,vsp);
        stuck_dist = point_distance(0,0,hsp,vsp);
        stuck_extended = false;
        wall_stuck = false;
        
        if (lucy_card_charge >= 7 && lucy_card_charge < 14) {
            sprite_index = sprite_get("card_proj2");
                damage *= 1.5;
                kb_value *= 1.125;
                damage = round(damage);
        }
        else if (lucy_card_charge >= 14) {
            sprite_index = sprite_get("card_proj3");
            damage *= 3;
            kb_value *= 1.25
        }
        else {
            sprite_index = sprite_get("card_proj1");
        }
    }
    if (!wall_stuck) {
        if (hitbox_timer > 0) {
            if (position_meeting(x + hsp, y, asset_get("par_block")) || (position_meeting(x+ hsp, y, asset_get("par_jumpthrough")) && vsp >= 0)) {
                wall_stuck = true;
                var i = 0;
                while (collision_point(x, y, asset_get("par_block"), 1, 1) || collision_point(x, y, asset_get("par_jumpthrough"), 1, 1)) {
                    i ++;
                    if (hsp > 0) {
                        x += -1
                    }
                    if (hsp < 0) {
                        x += 1
                    }
                    if (i > 300) {
                        break;
                    }
                }
            }
            if (vsp > 0) {
                if (position_meeting(x, y + vsp, asset_get("par_block")) || (position_meeting(x, y + vsp, asset_get("par_jumpthrough")) && vsp >= 0)) {
                    wall_stuck = true;
                    var i = 0;
                    while (collision_point(x, y, asset_get("par_block"), 1, 1) || collision_point(x, y, asset_get("par_jumpthrough"), 1, 1)) {
                        i ++;
                        if (vsp > 0) {
                            y += -2
                        }
                        if (vsp < 0) {
                            y += 2
                        }
                        if (i > 300) {
                            break;
                        }
                    }
                }
            }
        }
        stuck_dir = point_direction(0,0,hsp,vsp);
        if (attack != AT_DSTRONG || stuck_extended) {
            hsp *= 0.91;
            vsp *= 0.91;
        }
        
        if (wall_stuck) {
            destroyed = true;
        }
    }
    else {
        wall_stuck_time = 0;
        hitbox_timer = 0;
        hsp = 0;
        vsp = 0;
        grav = 0;
    }
    image_index = round(ease_linear(0, 16, round(stuck_dir), 360));
    
    var meeting_article1 = instance_place(x, y, obj_article1) 
    if (instance_exists(meeting_article1))
    {
        with (meeting_article1) {
            if (is_ditto(player_id, other.player_id)) {
                if (state != 4) {
                        var attacking_hb = other.attack;
                        var attacking_num = other.hbox_num;
                        state = 0;
                        state_timer = 0;
                        window = 1;
                        window_timer = 0;
                        if ("card_sound" in self) sound_stop(card_sound);
                        card_sound = sound_play(asset_get("sfx_shovel_brandish"));
                        with (pHitBox) {
                            if (attack == attacking_hb && hbox_num == attacking_num) {
                                if (!wall_stuck && !stuck_extended) {
                                stuck_extended = true;
                                lucy_card_charge = 7; 
                                hitbox_timer = 0;
                                x = other.x;
                                y = other.y;
                                sprite_index = sprite_get("card_proj2");
                                damage *= 2;
                                kb_value *= 1.5;
                                transcendent = 1;
                                damage = ceil(damage);
                                hsp = lengthdir_x(stuck_dist, stuck_dir);
                                if (vsp > 0)
                                    vsp = lengthdir_y(stuck_dist, stuck_dir) * -1;
                                else
                                    vsp = lengthdir_y(stuck_dist, stuck_dir);
                            }
                        }
                    }
                }
            }
        }
    }
}

#define is_ditto(_source, _target) 
return (_source.url == _target.url && get_char_info(_source.player, INFO_STR_NAME) == get_char_info(_target.player, INFO_STR_NAME))