exit;
if initing{
    initing = 0;
    or1 = [slope_pos1[0], slope_pos1[1]];
    or2 = [slope_pos2[0], slope_pos2[1]];
    len = point_distance(slope_pos1[0], slope_pos1[1], slope_pos2[0], slope_pos2[1]);
}

if wall{
    with oPlayer if instance_exists(collision_line(other.slope_pos1[0] + other.dir*2, other.slope_pos1[1], other.slope_pos2[0] + other.dir*2, other.slope_pos2[1], self, 1, 0)){
        var h = (mask_index = 6? 61: sprite_get_height(mask_index));
        var dis = (mask_index = 6? 19: sprite_get_width(mask_index)/2);
        var spy = y - (other.dir = sign(t)? 1: h-1);
        var coeff = clamp((spy-other.slope_pos1[1])/(other.slope_pos2[1]-other.slope_pos1[1]), 0, 1);
        x = floor(lerp(other.slope_pos1[0], other.slope_pos2[0], coeff)) + dis*other.dir;
        with other sp_coll(floor(lerp(slope_pos1[0], slope_pos2[0], coeff)), clamp(spy, min(slope_pos1[1], slope_pos2[1]), max(slope_pos1[1], slope_pos2[1])), "obj_stage_article_solid");
    }
}else{
    with oPlayer{
        vbaioygoeuitrhliewrrli743t785926tgflkwhvfsd = 0;
        var coeff = clamp((x-other.slope_pos1[0])/(other.slope_pos2[0]-other.slope_pos1[0]), 0, 1);
        var ypos = ceil(lerp(other.slope_pos1[1], other.slope_pos2[1], coeff));
        if array_find_index(other.slope_peeps, self) >= 0 && vsp >= 0 && y != ypos{
            y = ypos;
            sp_coll(other.x + other.hsp, other.y + other.vsp, "obj_stage_article_platform");
            vbaioygoeuitrhliewrrli743t785926tgflkwhvfsd = 1;
            exit;
        }
        other.slope_peeps = [];
        if instance_exists(collision_line(other.slope_pos1[0], other.slope_pos1[1]-1, other.slope_pos2[0], other.slope_pos2[1]-1, self, 1, 0)) && y >= ypos - 10{
            vbaioygoeuitrhliewrrli743t785926tgflkwhvfsd = 1;
            array_push(other.slope_peeps, self);
            fall_through = 0;
            if vsp >= 0 && y != ypos y = ypos;
            with other sp_coll(other.x + other.hsp, other.y + other.vsp, "obj_stage_article_platform");
        }
    }
}


#define sp_coll(xpos, ypos, type)
var g = instance_create(floor(xpos), floor(ypos), type, 7);
g.mask_index = sprite_get(wall? "wall": "slope");
g.image_xscale = dir;
return g;