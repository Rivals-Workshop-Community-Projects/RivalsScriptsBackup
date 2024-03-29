if (burst = 1){
var kx = x + floor(char_height/2) - random_func(0, char_height, true);
var ky = y - random_func(2, char_height + 15, true);
           spawn_hit_fx(kx, ky, esps_fx1);
    } 
    

if !free {
if (attack == AT_DSPECIAL && window == 2 && window_timer == 1 && state == PS_ATTACK_GROUND) 
|| (attack == AT_DSPECIAL_AIR && window == 4 && window_timer == 1 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
if burst = 0 {
    
   var frontx = x + (spr_dir * 90);
   var backx = x - (spr_dir * 60);
  
   //landed: try finding an edge
            var depth_check = 5;
//            var length_check = 50;
            //landed on leftmost side?
            left_test = (noone == collision_line(frontx, y, frontx, y+depth_check, 
                                      asset_get("par_block"), true, true))
                         && (noone == collision_line(frontx, y, frontx, y+depth_check, 
                                      asset_get("par_jumpthrough"), true, true));
                                          
            //landed on rightmost side?
            right_test = (noone == collision_line(backx, y, backx, y+depth_check, 
                                       asset_get("par_block"), true, true))
                          && (noone == collision_line(backx, y, backx, y+depth_check, 
                                       asset_get("par_jumpthrough"), true, true));



if (!left_test) {
   spawn_hit_fx(frontx, y, spikes_fx1);
   spikehitboxleft = true;
}

if (!right_test) {
   spawn_hit_fx(backx, y, spikes_fx2); 
   spikehitboxright = true;
}

}}

// Returns TRUE if ground is detected, FALSE if not.
#define test_for_ground(pos_x, pos_y)
{
   var depth_check = 4; //"depth" of the check, in pixels (in case you're slightly off the ground, still lets you see that ground)
   var found_ground = (noone != collision_line(pos_x, pos_y, pos_x, pos_y + depth_check, 
                                               asset_get("par_block"), true, true))
                   || (noone != collision_line(pos_x, pos_y, pos_x, pos_y + depth_check, 
                                               asset_get("par_jumpthrough"), true, true));
   return found_ground;
}