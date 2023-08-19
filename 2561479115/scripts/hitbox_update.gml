draw_xscale = spr_dir;

if (attack == AT_FSPECIAL && hbox_num == 1 && changed != 1) {
    //print(grounds);
    if ((!free && grounds == 0) || force_fspec_fall) {
        //destroyed = 1;
        hit_priority = 0;
        unbashable = true;
        vsp = -4;
        hsp *= 0.3;
        grav = 0.6;
        grounds = 1;
        enemies = 1;
        walls = 1;
        through_platforms = 999;
        hitbox_timer = 0;
        sound_play(asset_get("sfx_shovel_hit_light1"),false,-4,0.4,1.04);
        spawn_hit_fx(x,y,302);
        in_hitpause = 3;
        sprite_index = transp_spr;
        changed = 3;
    } else if grounds == 1 {
        if !in_hitpause {
            hsp *= 0.96;
        } else in_hitpause--;
    }
}
if (hits_tag && !tagged) {
    with (oPlayer) {
        if (id != other.player_id && roke_mark > 0 
        //&& (roke_mark_id == other.player_id || get_player_team(roke_mark_id.player) == get_player_team(player))
        ) && ds_list_find_index(roke_mark_id,other.player_id) != -1{
            var col = collision_ellipse(x-(lengthdir_x((abs(sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*roke_mark_inc),180)),
            y-(abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+lengthdir_y((abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*roke_mark_inc),90),
            x-(lengthdir_x(abs((sprite_get_bbox_left(cur_spr)-sprite_get_bbox_right(cur_spr))/2)+(roke_mark*roke_mark_inc),0)),
            y-(abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+lengthdir_y((abs(sprite_get_bbox_top(cur_spr)-sprite_get_bbox_bottom(cur_spr))/2)+(roke_mark*roke_mark_inc),270),
            other,
            true,
            true);
            if (col != noone) {
                sound_play(asset_get("sfx_clairen_fspecial_dash"));
                spawn_hit_fx(other.x,other.y,305);
                other.x = x-(10*other.spr_dir);
                other.y = y-(char_height/2)-10;
                roke_mark = 0;
                tagged = 1;
                //if roke_mark <= 0 {
                    ds_list_clear(roke_mark_id);
                    ds_list_clear(roke_mark_anim);
                    roke_mark_destroytimer = 0;
                //}
            }
        }
    }
}

if attack == AT_DSPECIAL && hbox_num == 1 {
    player_id.move_cooldown[AT_DSPECIAL] = player_id.beacon_cd;
    if !free && !bashed && !was_parried with player_id {
        if instance_exists(beacon) && beacon.state == 1 {
            beacon.state = 2;
            beacon.state_timer = 0;
        }
        beacon = instance_create(other.x+16*other.spr_dir,other.y+32,"obj_article2");
        beacon.player_id = id;
        //beacon.orig_player = player;
        beacon.orig_player_id = id;
        move_cooldown[AT_DSPECIAL] = 180;
        instance_destroy(other);
        exit;
    } else if !free && (bashed || was_parried) {
        instance_destroy();
        exit;
    }
    if getting_bashed {
        damage = 3;
        hit_priority = 2;
        kb_value = 5;
        kb_angle = 90;
    }
    if (point_distance(x,y,player_id.x,player_id.y-30) <= 50) {
        player_id.touching_proj = true;
    } else {
        player_id.touching_proj = false;
    }
    with (obj_article1) {
        if (player_id == other.player_id && !passed_field) {
            if (point_distance(other.x,other.y,x,y-30) <= 40) {
                passed_field = true;
                spawn_hit_fx(x,y-30,305);
                sound_play(asset_get("sfx_absa_dattack"));
            }
        }
    }
}
if attack == AT_FSPECIAL && changed == 2 {
    with (player_id) spr = sprite_get("test_particle");
    if (hitbox_timer%4) createParticle(1,10,24,spr,x,y-4,-hsp/3,-vsp/3,0,0,1.4,-0.1,50,true);
}

if (attack == AT_NSPECIAL && hbox_num == 1) {
    var spr;
    with (player_id) spr = sprite_get("line_part");
    if (hitbox_timer%4-2*big == 0) createParticle(1,10,24+10*big,spr,x,y-4,-hsp/3,-vsp/3,sign(hsp)*0.1,sign(vsp)*0.1,1.4,-0.1,50,true);
    if hitbox_timer == length-1 {
        var fx = spawn_hit_fx(x, y, dissipation)
        fx.hsp = hsp/4;
        fx.spr_dir = spr_dir;
    }
}

#define createParticle(amt,xvar,yvar,sprite,x,y,hsp,vsp,hAccel,vAccel,alpha,alpha_rate,lifetime,uses_shader)
var ind = 0;
repeat(amt) {
    var newParticle = {
        sprite: sprite,     //sprite
        x: (x+random_func((ind++)%25,xvar,true)-floor(xvar/2))&~1,      //x
        y: (y+random_func((ind++)%25,yvar,true)-floor(yvar/2))&~1,      //y
        hsp: hsp,      //hsp
        vsp: vsp,      //vsp
        hAccel: hAccel,      //hAccel
        vAccel: vAccel,      //vAccel
        alpha: alpha,      //alpha
        alpha_rate: alpha_rate,      //alpha rate
        timer: 0,      //particle timer
        lifetime: lifetime,       //particle lifetime
        shader: uses_shader
        };
    ds_list_add(player_id.particles,newParticle);
}