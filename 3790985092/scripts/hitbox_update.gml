//hitbox_update

var inkposx = floor(x/16)*16 +8;
var inkposy = floor(y/16)*16 +8;

switch (attack) {
    case AT_JAB:
        if (hbox_num == 3) {
            draw_xscale = 2*spr_dir;
            draw_yscale = 2;
            spawn_ink_series(inkposx+8*spr_dir, inkposy+24, 2, spr_dir);
        }
        break;
    case AT_UTILT:
        if (hbox_num == 5) {
            draw_xscale = 2*spr_dir;
            draw_yscale = 2;
            proj_angle = 50*spr_dir;
            vsp += 2;
            hsp -= 2*spr_dir;
        }
        break;
    case AT_NSPECIAL:
        draw_xscale = 2*spr_dir;
        draw_yscale = 2;
        if (hbox_num != 4) {
            fall_through = true;
            grounds = 1;
            if (place_meeting(x, y, asset_get("par_block") ) ) || (groundedTimer > 0) {
                hsp = 0;
                vsp = 0;
                if (explosion) {
                    create_hitbox(AT_NSPECIAL, 4, x, y+5);
                }
                groundedTimer += 1;
                if (groundedTimer >= 1) {
                    destroyed = true;
                }
            } else {
                angle = darctan2(-vsp * spr_dir, hsp * spr_dir);
            }

            proj_angle = angle
        }
        break;
    case AT_DATTACK:
        through_platforms = 1;
        draw_xscale = 2*spr_dir;
        draw_yscale = 2;
        if (hbox_num != 1) {
            if (destroyed) {
                spawn_ink_series(inkposx-8*spr_dir, inkposy+8, 3, spr_dir)
            }
            if (free) {
                angle = darctan2(-vsp * spr_dir, hsp * spr_dir);
            }

            proj_angle = angle
            
            //custom shot arc thx to Muno!
            /*var drop_time = 12; // frames before bullet enters drop mode
            var drop_ease_time = 16; // frames before bullet enters drop mode
            var drop_hsp = 4; // hsp limit when drop mode begins
            var drop_grav = 1.25; // extra gravity applied during drop mode (in addition to normal gravity)

            if hitbox_timer > drop_time {
                if (abs(hsp) > drop_hsp) {
                    hsp = ease_linear(hsp*spr_dir, drop_hsp*spr_dir, hitbox_timer-drop_time, drop_ease_time-drop_time)
                } else {
                    hsp = clamp(hsp, -drop_hsp, drop_hsp); 
                }
                vsp += drop_grav;
            }*/
        }
        break;
    case AT_FAIR:
    case AT_BAIR:
        draw_xscale = 2*spr_dir;
        draw_yscale = 2;
        if (hbox_num != 1) {
            if (destroyed) {
                spawn_ink_series(inkposx-8*spr_dir, inkposy+8, 3, spr_dir)
            }
            if (free) {
                angle = darctan2(-vsp * spr_dir, hsp * spr_dir);
            }

            proj_angle = angle
            
            // if (hitbox_timer >= 15) {
            //     hitstun_factor = -1;
            //     force_flinch = 2;
            //     kb_value = 0;
            //     kb_scale = 0;
            // }

            //custom shot arc thx to Muno!
            /*var drop_time = 15; // frames before bullet enters drop mode
            var drop_ease_time = 20; // frames before bullet enters drop mode
            var drop_hsp = 4; // hsp limit when drop mode begins
            var drop_grav = 1.25; // extra gravity applied during drop mode (in addition to normal gravity)

            if hitbox_timer > drop_time {
                if (abs(hsp) > drop_hsp) {
                    hsp = ease_linear(hsp*spr_dir, drop_hsp*spr_dir, hitbox_timer-drop_time, drop_ease_time-drop_time)
                } else {
                    hsp = clamp(hsp, -drop_hsp, drop_hsp); 
                }
                vsp += drop_grav;
            }*/
        }
        break;
    case AT_DAIR:
        draw_xscale = 2*spr_dir;
        draw_yscale = 2;
        if (hitbox_timer < 3) {
            image_xscale = 0;
            image_yscale = 0;
        } else if (hitbox_timer < 9) {
            image_xscale = .25;
            image_yscale = .4;
        } else {
            image_xscale = 0;
            image_yscale = 0;
        }
        break;
    case AT_USTRONG:
        if (hbox_num == 3 || hbox_num == 6) {
            if (hitbox_timer >= 3) {
                image_xscale = 0;
                image_yscale = 0;
            }
        }
        if (hbox_num == 4) {
            if (has_hit || hitbox_timer == 7) {
                with (player_id) {
                    create_hitbox(AT_USTRONG, 5, other.x, other.y);
                    create_hitbox(AT_USTRONG, 6, other.x, other.y);
                }
                destroyed = true;
                sound_play( sound_get( "blaster_explo" ) )
            }
        }
        break;
    case AT_DSPECIAL:
        if (hbox_num == 1 || hbox_num == 2) {
            if (hitbox_timer >= 5) {
                image_xscale = 0;
                image_yscale = 0;
            }
        }
        if (hbox_num == 3 || hbox_num == 4) {
            if (hitbox_timer == 1) {
                hsp = hsp + (2 - random_func(81754, 3, false));
                vsp = vsp + (2 - random_func(19823, 3, false));
            }
            draw_xscale = 2*spr_dir;
            draw_yscale = 2;
            if (destroyed) {
                with(obj_article3){
                if (player_id == other.player_id && !was_pocketed) {
                spawn_ink_series(inkposx-8*other.spr_dir, inkposy+8, 3, other.spr_dir)
            }
                }
            }
            if (free) {
                angle = darctan2(-vsp * spr_dir, hsp * spr_dir);
            }
            // if (hitbox_timer >= 6) {
            //     hitstun_factor = -1;
            //     force_flinch = 2;
            //     kb_value = 0;
            //     kb_scale = 0;
            // }
            if (was_parried) {
                with (obj_article3) {
                    if (player_id == other.player_id) {
                        if (type == 2) {
                            shoulddie = true; 
                        }
                    }
                }
            }

            proj_angle = angle

            //custom shot arc thx to Muno!
            /*var drop_time = 15; // frames before bullet enters drop mode
            var drop_ease_time = 20; // frames before bullet enters drop mode
            var drop_hsp = 4; // hsp limit when drop mode begins
            var drop_grav = 1.25; // extra gravity applied during drop mode (in addition to normal gravity)

            if hitbox_timer > drop_time {
                if (abs(hsp) > drop_hsp) {
                    hsp = ease_linear(hsp*spr_dir, drop_hsp*spr_dir, hitbox_timer-drop_time, drop_ease_time-drop_time)
                } else {
                    hsp = clamp(hsp, -drop_hsp, drop_hsp); 
                }
                vsp += drop_grav;
            }*/
        }
        break;
}

//Isabelle
with(oPlayer){
if(url = 3529055124){
if(nspecial_pocket_status.ref = other){
with(other){
if(attack = AT_NSPECIAL || attack = AT_JAB || attack = AT_DATTACK || attack = AT_BAIR || attack = AT_FAIR || attack = AT_UTILT){
player_id.pocketed_icons_index = 0;
}
}
}
}
}

#define ground_at_pos(xpos, ypos)
    return position_meeting(xpos, ypos, asset_get("par_block")) || (position_meeting(xpos, ypos, asset_get("par_jumpthrough")) && !position_meeting(xpos, ypos-2, asset_get("par_jumpthrough")));

/*#define spawn_ink(xpos, ypos, id)
    if ground_at_pos(xpos, ypos) var g = spawn_hit_fx(xpos, ypos, player_id.fx_inktile[id]);
    else return noone;
    g.spr_dir = 1;
    return g;

#define spawn_ink_series(startx, starty, num, dir)
    var main = noone;
    var n = 0;
    var r = 0;
    var am = player_id.am;
    var spr = floor(startx/16)%am;
    var arr = player_id.ink_sprites;
    repeat(num){
        var h = spawn_ink(startx + 16*r*dir, starty, arr[spr]);
        if h != noone n++;
        if main = noone && h != noone main = h;
        else if h = noone || r+1 = num{
            with main if "ink_data" not in self ink_data = n*dir;
            main = noone;
            n = 0;
        }
        spr = (spr+dir)%am;
        if spr < 0 spr = am -1;
        r++;
    }*/

#define spawn_ink(xpos, ypos)
    if (ground_at_pos(xpos, ypos) && !ground_at_pos(xpos, ypos-8)) {
        var g = instance_create(xpos, ypos, "obj_article2");
        g.spr_dir = 1;
        return g;
    }
    else return noone;

#define spawn_ink_series(startx, starty, num, dir)
    var main = noone;
    var n = 0;
    var r = 0;
    repeat(num){
        var h = spawn_ink(startx + 16*r*dir, starty);
        r++;
    }