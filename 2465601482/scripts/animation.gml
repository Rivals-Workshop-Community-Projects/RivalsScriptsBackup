
        if item_held == "squeaky_hammer" {
            image_index = floor(get_gameplay_time()/3)%4;
            sprite_index = sprite_get("taunt")
        }
var doing_bair = false;
var top_angle = 0;
var range = 90;
var that_speed = 2;
var offx = -15;
var offy = -35;
var count = 1;
switch (state){
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
        if attack == AT_BAIR && window ==2 {
            top_angle = -10;
            range = 110;
            that_speed = 7;
            count = 2;
        }
        if attack == AT_UAIR && window == 2 {
            top_angle = 80;
            range = 20;
            
            that_speed = 7*((window_timer % 2)*2 - 1);
        }
        if attack == AT_UTILT {
            offx = 0;
            offy = -25;
            top_angle = -30;
            range = 60;
            if window == 2 {
                that_speed = 7;
                count = 3;
            }
        }
        break;
    case PS_HITSTUN:
        total = 2;
        range = 360;
        that_speed = 5;
        break;
    case PS_CROUCH:
        top_angle = 15;
        offy = -25;
        offx = -12;
        break;
    default: 
        break;
}
var total = 0;
if (get_gameplay_time() % 4 == 0 || count > 1) && visible do {
    var bug = spawn_hit_fx(x+offx*spr_dir*player_scale,y+offy*player_scale,shadow_hit_fx);
    bug.spr_dir = 2;
    bug.image_yscale = 2;
    bug.direction = (90+(top_angle+random_func(total,range,true))*spr_dir);// + (v_mag * v_dir);
    bug.speed = that_speed*player_scale;
    bug.gravity_direction = 270;
    bug.gravity = 0.15;
    bug.solid = false;
    bug.friction = 0.04;
    bug.depth = depth + 5;
    with bug i_am_a_shadow_bug = true;
} while ( ++total < count);

