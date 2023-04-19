//article1_update
if !free {
    if pf {
        sound_play(sound_get("perch_land"));
    }
    if perch_article == noone {
        
        var wait_im_stuck = false;
        if x != spawn_x {
            
            if instance_place(spawn_x,y,asset_get("par_block")) || instance_place(spawn_x, y, obj_article_solid) || instance_place(spawn_x,y, obj_stage_article_solid) {
                x = spawn_x;
                y -= 20;
                wait_im_stuck = true;
            } else {
                spawn_x = x;
            }
        }
        
        if !wait_im_stuck with player_id {
            if !joy_pad_idle && !free {
                var perch_launch = instance_create(other.x,other.y + 19, "obj_article2");
                var joy_angle = joy_dir
                if joy_dir > 180 {
                    joy_angle = 360 - joy_dir;
                }
                var angle = round(clamp(abs(joy_angle),40,140) / 22.5) * 22.5;
                
                perch_launch.hit_x = -lengthdir_x(300,angle);
                perch_launch.hit_y = -lengthdir_y(220,angle);
                perch_launch.x -= perch_launch.hit_x;
                perch_launch.y -= perch_launch.hit_y;
                perch_launch.pulling = false;
                perch_launch.base_article = other.id;
                other.perch_article = perch_launch;
                other.perch_deployed = true;
                perch_launch.base_x_offset = perch_launch.x - other.x;
                perch_launch.base_y_offset = perch_launch.y - other.y;
                sound_play(sound_get("perch_launch"));
            } 
            // else if free {
            //     var perch_launch = instance_create(other.x,other.y + 10, "obj_article2");
            //     var joy_angle = point_direction(other.x,other.y, x, y);
            //     if joy_dir > 180 {
            //         joy_angle = 360 - joy_dir;
            //     }
            //     var angle = round(clamp(abs(joy_angle),40,140) / 22.5) * 22.5;
                
            //     perch_launch.hit_x = -lengthdir_x(300,angle);
            //     perch_launch.hit_y = -lengthdir_y(200,angle);
            //     perch_launch.x -= perch_launch.hit_x;
            //     perch_launch.y -= perch_launch.hit_y;
            //     perch_launch.pulling = false;
            //     kill_me = true;
                
            // }
        }
        
    }
} else {
    vsp = 20;
}

pf = free;
if destroyed || (perch_article != noone && perch_article.hp < 0) || (perch_article == noone && perch_deployed){
    instance_destroy(self);
}