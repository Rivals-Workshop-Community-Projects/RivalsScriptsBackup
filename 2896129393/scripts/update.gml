//b


//alt recoloring stuff
init_shader();

//particle stuff
if free {
    is_bloody = false;
} else {
    if get_gameplay_time() mod 30 == 0 { //occasional backup check in case puddles all disappear at the same time
        puddles_exist = false;
        for(var aj=0; aj < array_length(particle_array);aj++) {
            if particle_array[aj].part_id == 1 && !particle_array[aj].dead {
                puddles_exist = true;
            }
        }
        if !puddles_exist {
            is_bloody = false;
        }
    }
}

//nspecial vspeed clamp once per airtime
if !free {
    nspecial_has_stall = true;
}

update_particle();
#define update_particle
//particle code by bernardo woooo yeah
if particle_array != null {
    for(var ao=0; ao < array_length(particle_array);ao++) {
         with(particle_array[ao]) {
             if !dead {
                 //animation
                if anim_speed == -2 { //go until last frame
                    if image_index < num_frames-1 {
                        image_index += 1/num_frames;
                    } else {
                        image_index = num_frames-1;
                    }
                } else if anim_speed == -1 { //linear until end
                    image_index = ease_linear(num_frames_init,num_frames_init+num_frames,timer,lifetime);
                } else { //looping
                    image_index += anim_speed;
                }
                //physics
                x += speed_x;
                y += speed_y;
                speed_x = lerp(speed_x,0,frict_h);
                speed_y = lerp(speed_y,0,frict_v);
                if speed_y < max_grav {
                    speed_y += grav;
                }
                //timer
                if timer >= lifetime {
                    dead = true;
                }
                timer += 1;
                
                //unique stuff
                switch(part_id) {
                    case 0: //blood drop
                        //collision check to spawn floor blood
                        with(other) {
                            if collision_point(other.x,other.y - 2,asset_get("par_block"),false,true) or (other.speed_y > 0 && collision_point(other.x,other.y - 2,asset_get("par_jumpthrough"),false,true) && collision_point(other.x,other.y + 20,asset_get("par_jumpthrough"),false,true)) {
                                other.dead = true;
                                make_particle(sprite_get("blood_floor"),0,-2,0,4,true,420,ceil(other.x/32)*32,ceil(other.y/16)*16 - 16,1,1,0,1,c_white,0,0,0,0,0,0,0,0,1);
                            }
                        }
                        break;
                    case 1: //blood floor
                        if dead {
                            with(other) {
                                make_particle(sprite_get("blood_floor_despawn"),0,-1,0,3,true,20,other.x,other.y,1,1,0,1,c_white,0,0,0,0,0,0,0,0,0);
                            }
                        }
                        if timer == 1 { //fuycking with iun a with to check if space is currently occupied then reset the puddle
                            with(oPlayer) {
                                if "is_rawberry" in self {
                                    for(var ak=0; ak < array_length(particle_array);ak++) {
                                        if other != particle_array[ak] && particle_array[ak].part_id == 1 && point_distance(particle_array[ak].x,particle_array[ak].y,other.x,other.y) < 16 {
                                            particle_array[ak].dead = true;
                                        }
                                    }
                                }
                            }
                            with(other) {
                                if collision_point(other.x,other.y - 4,asset_get("par_block"),false,true) or !(collision_point(other.x,other.y,asset_get("par_block"),false,true) or collision_point(other.x,other.y,asset_get("par_jumpthrough"),false,true)) {
                                    other.dead = true;
                                }
                                if collision_point(other.x,other.y,asset_get("par_jumpthrough"),false,true) {
                                    var track_article = instance_create(other.x,other.y,"obj_article1");
                                    track_article.floord = other;
                                }
                            }
                            //stop_checking = false;
                            player_checked = [0,0,0,0];
                            
                        }
                        
                        //blood detection
                        player_id = other; //puddle's player id
                        //rawberries check their own and the opponent's puccle arrays, if they're affected then make other puddles stop
                        //checking n other stuff
                        with(oPlayer) { //this dog is fucked up bruh
                            if "is_rawberry" in self {
                                if !(free or point_distance(x,y,other.x,other.y) > 64) {
                                    if (other.player_checked[player-1] == 0) {
                                        if point_distance(x,y,other.x,other.y) <= 36 {
                                            is_bloody = true;
                                            nearest_puddle = other;
                                            for(var aj=0; aj < array_length(particle_array);aj++) {
                                                if particle_array[aj] != nearest_puddle && particle_array[aj].part_id == 1 {
                                                    particle_array[aj].player_checked[player-1] = 1;
                                                }
                                            }
                                            for(var al=0; al < array_length(other.player_id.particle_array);al++) {
                                                if other.player_id.particle_array[al] != nearest_puddle && other.player_id.particle_array[al].part_id == 1 {
                                                    other.player_id.particle_array[al].player_checked[player-1] = 1;
                                                }
                                            }
                                        } else {
                                            is_bloody = false;
                                            for(var aj=0; aj < array_length(particle_array);aj++) {
                                                if particle_array[aj].part_id == 1 {
                                                    particle_array[aj].player_checked[player-1] = 0;
                                                }
                                            }
                                            for(var al=0; al < array_length(other.player_id.particle_array);al++) {
                                                if other.player_id.particle_array[al].part_id == 1 {
                                                    other.player_id.particle_array[al].player_checked[player-1] = 0;
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    other.player_checked[player-1] = 0;
                                }
                                
                            }
                        }
                        /*
                        if !(other.free or point_distance(x,y,other.x,other.y) > 64) {
                            if !stop_checking {
                                if point_distance(x,y,other.x,other.y) <= 36 {
                                    other.is_bloody = true;
                                    for(var aj=0; aj < array_length(other.particle_array);aj++) {
                                        with(other.particle_array[aj]) {
                                            if other != self && part_id == 1 {
                                                stop_checking = true;
                                            }
                                        }
                                    }
                                } else {
                                    other.is_bloody = false;
                                    for(var aj=0; aj < array_length(other.particle_array);aj++) {
                                        with(other.particle_array[aj]) {
                                            if part_id == 1 {
                                                stop_checking = false;
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            stop_checking = false;
                        }*/
                        break;
                }
                
            }
        }
    }
}

#define make_particle
/// make_particle(_sprite, _subimage, _anim_speed, _num_frames_init, _num_frames_total, _post_drawn, _lifetime, _x, _y, _scale_x = 1, _scale_y = 1, _angle = 0, _alpha = 1, _col = c_white, _fx = 0, _fx2 = 0, _speed_x = 0, _speed_y = 0, _frict_h = 0, _frict_v = 0, _grav = 0, _max_grav = 6, _id = 0)
var _sprite = argument[0], _subimage = argument[1], _anim_speed = argument[2], _num_frames_init = argument[3], _num_frames_total = argument[4], _post_drawn = argument[5], _lifetime = argument[6], _x = argument[7], _y = argument[8];
var _scale_x = argument_count > 9 ? argument[9] : 1;
var _scale_y = argument_count > 10 ? argument[10] : 1;
var _angle = argument_count > 11 ? argument[11] : 0;
var _alpha = argument_count > 12 ? argument[12] : 1;
var _col = argument_count > 13 ? argument[13] : c_white;
var _fx = argument_count > 14 ? argument[14] : 0;
var _fx2 = argument_count > 15 ? argument[15] : 0;
var _speed_x = argument_count > 16 ? argument[16] : 0;
var _speed_y = argument_count > 17 ? argument[17] : 0;
var _frict_h = argument_count > 18 ? argument[18] : 0;
var _frict_v = argument_count > 19 ? argument[19] : 0;
var _grav = argument_count > 20 ? argument[20] : 0;
var _max_grav = argument_count > 21 ? argument[21] : 6;
var _id = argument_count > 22 ? argument[22] : 0;
part_created = false;
//second part of the particle code by bernardo woo yeah
//set stuff
var new_part = {
    dead: false, //true when timer is above lifetime, makes particle invisible & particle slot re-usable
    timer: 0, //current timer
    lifetime: _lifetime, //total lifetime
    post_drawn: _post_drawn, //if true, draw in post_draw, else in pre_draw
    effect: _fx, //optional special effects, defaults to none
    effect_2: _fx2,
    color: _col, //color tint for draw_sprite_ext
    sprite_index: _sprite, //sprite
    image_index: _subimage, //current frame
    anim_speed: _anim_speed, //anim_speed, if set to -1 then animation is linear based on lifetime
    num_frames: _num_frames_total, //total frames that the animation has in case anim_speed is -1
    num_frames_init: _num_frames_init, //first frame of the linear animation
    scale_x: _scale_x, //x scale (left or right)
    scale_y: _scale_y, //y scale (upside down or nah)
    angle: _angle, //angle
    alpha: _alpha, //transparency (from 0 to 1)
    init_alpha: _alpha,
    x: _x, // x position
    y: _y, // y position
    speed_x: _speed_x, //x speed
    speed_y: _speed_y, //y speed
    frict_h: _frict_h, //horizontal friction
    frict_v: _frict_v, //vertical friction
    grav: _grav, //gravity
    max_grav: _max_grav, //max gravity
    part_id: _id
}

//put it in array
for(var ie=0;ie < array_length(particle_array);ie++) {
    if part_created {
        break;
    }
    if particle_array[ie].dead == true {
        particle_array[ie] = new_part;
        part_created = true;
    } else if ie == array_length(particle_array)-1 {
        var ar_length = array_length(particle_array);
        particle_array[ar_length] = new_part;
        part_created = true;
    }
}

#define spawn_blood_num
/// spawn_blood_num(_num_blood, _x, _y, _xspeed_var, _yspeed_var, _minx, _miny, _add_sprdir)
var _num_blood = argument0, _x = argument1, _y = argument2, _xspeed_var = argument3, _yspeed_var = argument4, _minx = argument5, _miny = argument6, _add_sprdir = argument7;
//leave last one as 1 for not sprdir effect
for(bl=0;bl<_num_blood;bl++) {
    make_particle(sprite_get("blood_drop"),bl,0.25,0,8,true,60,_x,_y, 1,1,0,1,c_white,0,0,
    (random_func(bl,_xspeed_var*2,true) - _xspeed_var  + _minx) * _add_sprdir,
    (random_func(bl+1,_yspeed_var,true) + _miny )*-1,
    0.015,0,0.5,12,0);
}