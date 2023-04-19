//
enum _ {
    PS_NA, // not applicable
    PS_PULLING, // pulling perch
    PS_HANGING, // hanging from perch
    PS_GRAPPLING, // grappling to object
}
var bother_hittest = false;
var movement = 0;
if instance_exists(base_article) {
    base_movement += abs(init_x - base_article.x);
    init_x = base_article.x;
    init_y = base_article.y + 19;
    x = base_article.x + base_x_offset;
    y = base_article.y + base_y_offset;
    
    if (base_article.y > room_height) {
        hp = -5;
    }
    
} else {
    base_article = noone;
}

  
hit_x *= 0.8;
hit_y *= 0.8;

if !pulling  && max_perch_distance >= 300 {
    max_perch_distance = length;
}
var endp = verlet_points[verlet_count - 1];
var stap = verlet_points[0];
if hp > 0 && !cut_down {
    length =  point_distance(init_x,init_y,x,y);
    highlight = false;
    var temp_highlight = false;
    with oPlayer if is_valid_parrot(id) {
        temp_highlight = (free && perch_state == _.PS_NA && point_distance_sq(x,y-30, other.x, other.y) < 14400); // 14400 = 120 * 120
        other.highlight = other.highlight || temp_highlight;
    
        if perch_cooldown <= 0 && temp_highlight && state != PS_PRATFALL && ((jump_pressed && !jb && prev_state != PS_JUMPSQUAT) || (jump_down && vsp > 0)) {
            djumps = 0
            perch_target = other.id;
            sound_play(sound_get("grab_perch"));
            var vfx = spawn_hit_fx((x + other.x) * 0.5, (other.y + y - 30) * 0.5, grab_vfx);
            vfx.depth = depth - 1;
            perch_state = _.PS_HANGING;
            other.hp -= 40;
            // var p = point_distance(x,y,other.x,other.y) + 0.01
            // var d = [(other.x - x) / p, (other.y - y) / p]
            // hsp = d[1] * spr_dir
            // vsp = -d[0] * spr_dir
            other.parrot = id;
            sleep_simulation = 0;
        }
        if attack == AT_DSPECIAL && ( state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
            bother_hittest = true;
        }
    }
    
    stap.x = init_x;
    stap.y = init_y - 20;
    endp.x = x + hit_x;
    endp.y = y + hit_y;
    endp.locked = true;
    
} else {
    highlight = false;
    endp.locked = false;
    if base_proj_following != noone && instance_exists(base_proj_following) {
        endp.x = base_proj_following.x;
        endp.y = base_proj_following.y;
        endp.oldx = base_proj_following.x;
        endp.oldy = base_proj_following.y;
        endp.locked = true;
        stap.locked = false;
    }
    despawn_timer ++;
}
var section_length = ( length * 1.01) / verlet_count;

if (cut_down || hitstop_remaining <= 0) {
    if sleep_simulation < 20 {
        for (var i = 0; i < verlet_count; i ++) {
            // verlet_points[i].still = !(abs(verlet_points[j].oldy - verlet_points[j].y) > 0.65 || verlet_points[j].oldx != verlet_points[j].x);
            movement += 0.1 * verlet_move(verlet_points[i],0,1.15);
        }
    }
    if bother_hittest {
        for (var i = 0; i < verlet_count; i ++) {
            verlet_cut(verlet_points[i], i);
        }
    }
}

stap.still = false;

// 
if !cut_down || hitstop_remaining <= 0 {
    move_flair_verlet(sleep_simulation >= 20)
}

// break the perch when hp is below zero, but only once
if destroy == false && hp < 0 {
    for (var i = 0; i < verlet_count; i ++) {
        var cur_point = verlet_points[i];
        cur_point.oldx += random_func(verlet_count * i + i,4,false) - 2;
        cur_point.oldy += random_func(verlet_count * i + i + 1,4,false) + 8;
        if random_func(verlet_count * i + i + 3,5,true) == 0 {
            cur_point.broken = true;
        }
    }
    sound_play(sound_get("crunch"));;
    destroy = true;
}
if despawn_timer > 120 {
    instance_destroy();
    exit;
}

hitstop_remaining -= (hitstop_remaining > 0);
 
if destroyed {
    hp = -5;
}
sleep_simulation += (sleep_simulation < 30);
if movement > 1.0 || hp < 0 || abs(base_movement) > 1.0 {
    sleep_simulation = 0;
    base_movement = 0;
}
#define move_flair_verlet(sleeping)
    verlet_move(flair_verlet_point, 0.2*dsin(get_gameplay_time()),0.65);
    var rigidity = 0.2;
    if !sleeping {
    // for (var i = 0; i < 1; i ++) {
        for (var j = 0; j < verlet_count - 1; j ++) {
            var this_point = verlet_points[j];
            var next_point = verlet_points[j+1];
            if this_point.broken == false && next_point.broken == false && !this_point.still {
                verlet_constrain(this_point,next_point,25,rigidity);
            }
        }
    // }
    }
    verlet_constrain(flair_verlet_point,verlet_points[verlet_count - 1],25,0.2);

#define verlet_cut(point, index)

    var this_article = id;

    if (hp >= 0 && index < verlet_count - 1 && !cut_down && hitstop_remaining <= 0) 
        with collision_line(point.x,point.y,verlet_points[index+1].x,verlet_points[index+1].y,pHitBox,false,true) 
            if (hit_priority > 0 && attack == AT_DSPECIAL  && hbox_num < 3 && is_valid_parrot(player_id)) 
    {
                var dx2 = 0;
                var dy2 = 0;
                // point.broken = true;
                spawn_hit_fx(0.5*  (point.x + x), 0.5 * (point.y + y), HFX_SYL_WOOD_SMALL);
                var this_parrot = player_id;
                with this_article {
                    dx2 = this_article.x - this_article.init_x;
                    dy2 = this_article.y - this_article.init_y;
                    cut_down = true;
                    hitstop_remaining = 3 + other.hitpause + other.extra_hitpause;
                    destroy = true;
                    hp = -5;
                    sleep_simulation = 0;
                    sound_play(sound_get("crunch"));
                }
                with this_parrot {
                    spawn_hit_fx(0.5*  (point.x + x), 0.5 * (point.y + y), get_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT));
                    if perch_target == this_article {
                        perch_target = noone;
                        perch_state = _.PS_NA;
                        // hsp += 0.05 * dx2;
                        // vsp += 0.05 * dy2;
                    }
                    hitstop += 3;
                    hitstop_full += 3;
                    hitpause = true;
                    old_hsp = hsp;
                    old_vsp = vsp;
                    hsp = 0;
                    vsp = 0;
                    
                    has_hit = true;
                    
                    
                    var p = create_hitbox(AT_DSPECIAL, 3, this_article.init_x, this_article.init_y);
                    p.hsp = dx2 * 0.05;
                    p.vsp = dy2 * 0.1;
                    p.spr_dir = (p.hsp == 0) ? p.spr_dir : sign(p.hsp);
                    this_article.base_proj_following = p;
                }
                if index != 0 {
                    point.x += lengthdir_x(kb_value * 1.5,get_hitbox_angle(self));
                    point.y += lengthdir_y(kb_value * 1.5,get_hitbox_angle(self));
                }
                return true; 
    }
    return false;
// verlet_points[7] = {"x" : x, "y" : y,"locked":true,"oldx":x,"oldy":y};
#define verlet_move(point,force_x,force_y)
    var dx = point.x - point.oldx + force_x;
    var dy = point.y - point.oldy + force_y;
    
    point.oldx = point.x;
    point.oldy = point.y;
    
    point.x += dx * 0.96;
    point.y += dy * 0.96;
    
    return point_distance_sq(point.oldx, point.oldy, point.x, point.y);

#define point_distance_sq(x1, y1, x2, y2) 
    var dx = x1 - x2;
    var dy = y1 - y2;
    return dx * dx + dy * dy;

#define is_valid_parrot(obj_id)
    return variable_instance_exists(obj_id, "_parrot_identifier_") && obj_id._parrot_identifier_;

#define verlet_constrain(point1,point2,size,softness)
    var l = point_distance(point1.x,point1.y,point2.x,point2.y);
    var m = size / l;
    
    var dx = (point2.x - point1.x) * m;
    var dy = (point2.y - point1.y) * m;
    
    var in_soft = 1 - softness;
    if !point1.locked {
        point1.x = (point1.x) * in_soft + (point2.x - dx) * softness;
        point1.y = (point1.y) * in_soft + (point2.y - dy) * softness;
    }
    if !point2.locked {
        point2.x = (point2.x) * in_soft + (point1.x + dx) * softness;
        point2.y = (point2.y) * in_soft + (point1.y + dy) * softness;
    }
    

#define clamp_distance(distance, anchor_x, anchor_y, free_x, free_y)
    var dsq = point_distance_sq(anchor_x,anchor_y,free_x,free_y);
    if (dsq < distance * distance || distance < 0) return [free_x,free_y];
    var d = sqrt(dsq);
    var dif_x = free_x - anchor_x;
    var dif_y = free_y - anchor_y;
    var mult = distance / d;
    dif_x *= mult;
    dif_y *= mult;
    return [anchor_x + dif_x, anchor_y + dif_y];