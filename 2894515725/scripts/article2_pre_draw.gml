
if instance_exists(base_proj_following)
{
    var alpha = clamp( point_distance(0,0,base_proj_following.hsp, base_proj_following.vsp) * 0.05, 0.0, 1.0 );
    if alpha > 0.0 {
        var frame = (get_gameplay_time() >> 1) & 1;
        draw_sprite_ext(sprite_get("perch_projectile"), frame, base_proj_following.x, base_proj_following.y, 1, 1, point_direction(0,0,base_proj_following.hsp, base_proj_following.vsp), c_white, alpha);
    }
    
}

// if mode == 0 
{
    var hp_spr_index = 2 - clamp(floor(hp / 80), 0, 2);
    if (parrot.perch_target == id) {
        var flash_alpha = 0.5 * (sin(sqrt(max(0,hp * 50))) + 1);
        var flash_col = get_stress_color(hp);
        var p1 = verlet_points[0];
        var p2 = verlet_points[1];
        for (var i = 1; i <= verlet_count - 1; i ++) if verlet_points[i].broken == false {
            draw_rope_and_outline(p1.x,p1.y,p2.x,p2.y,hp_spr_index, flash_alpha * 0.8 + 0.2, flash_col);
            p1 = p2;
            if (i != verlet_count - 1) p2 = verlet_points[i+1];
        }
    } else {
        var p1 = verlet_points[0];
        var p2 = verlet_points[1];
        for (var i = 1; i <= verlet_count - 1; i ++) if verlet_points[i].broken == false {
            draw_rope(p1.x,p1.y,p2.x,p2.y, hp_spr_index);
            p1 = p2;
            if (i != verlet_count - 1) p2 = verlet_points[i+1];
        }
    }
}

var end_point = verlet_points[verlet_count - 1];

draw_sprite_ext(sprite_get("perch_colored"),get_gameplay_time() * 0.05,end_point.x,end_point.y,2,2,point_direction(end_point.x,end_point.y,flair_verlet_point.x,flair_verlet_point.y),flair_color,1);
    
draw_sprite_ext(sprite_get("perch"),0,end_point.x,end_point.y,2,2,0,-1,1);

if highlight {
    draw_sprite_ext(sprite_get( "perch_indicator"),get_gameplay_time() * 0.25,end_point.x,end_point.y,2,2,0,flair_color,1);
}


#define get_stress_color(hp)
    if (hp >= 160) return $FFFFFF;
    if (hp > 80) return merge_color($00FFFF,$FFFFFF,ease_sineInOut(0,1,hp - 80, 80));
    return merge_color($0000FF, $00FFFF,ease_sineInOut(0,1,max(hp, 0), 80));
    
#define draw_rope_and_outline(x1, y1, x2, y2, index, alpha, tint)
    var l = point_distance(x1,y1,x2,y2) * 0.5;
    var d = point_direction(x2,y2,x1,y1)+90;
    draw_sprite_general(sprite_get("rope_outline"),index,0,0,8,l + 1,x2 - lengthdir_x(4,d),y2 - lengthdir_y(4,d),2, 2, d,tint,tint,tint,tint, alpha);
    draw_sprite_general(sprite_get("rope"),index,2,0,4,l + 1,x2,y2,2, 2,d,c_white,c_white,c_white,c_white,1);
    return;

#define draw_rope(x1,y1,x2,y2, index)
    draw_sprite_general(sprite_get("rope"),index,2,0,4,point_distance(x1,y1,x2,y2)*0.5 + 1,x2,y2,2, 2,point_direction(x2,y2,x1,y1)+90,c_white,c_white,c_white,c_white,1);