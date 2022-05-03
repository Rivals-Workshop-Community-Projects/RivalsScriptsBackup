// //post-draw

// if draw_e = 1 //draws the negative effect
// {
//     gpu_set_blendmode_ext_sepalpha(bm_inv_dest_colour,bm_inv_src_colour,bm_src_alpha,bm_src_alpha);
//     gpu_set_colorwriteenable(true,true,true,true);
//     draw_circle_color(obj_article1.x,obj_article1.y, size ,c_white,c_white,false);
//     draw_set_alpha(1);
//     gpu_set_blendmode(bm_normal);
// }

// if shoc2= 1 //makes the colors go bacc to normal
// { 
//     gpu_set_blendmode_ext_sepalpha(bm_inv_dest_colour,bm_inv_src_colour,bm_src_alpha,bm_src_alpha);
//     gpu_set_colorwriteenable(true,true,true,true);
//     draw_circle_color(x,y, size2 ,c_white,c_white,false);
//     draw_set_alpha(1);
//     gpu_set_blendmode(bm_normal);
// }

// ///cool visual effects for the ball
// with (obj_article1)
// {
    
//     if state!= 2 || state != 4
//     {
//     if (dustframes < 5 && spd >= 100)
//     {
//         draw_sprite_ext(sprite_get("dust"),dustframes,sposdx,sposdy,dustttt,1,oldangledust,c_white,dustalpha);
//     }
//     if dustframes > 4
//     {
//         dustalpha = 0;
//     }
//     if can_i_be_hit = false && state == 3 //if the ball is on hitstop then it draws the angle the ball is going to go
//     {
//         draw_sprite_ext(sprite_get("angleindicator"),0,x,y,spr_dir,1,image_angle,c_white,1);
    
//     }
//     if can_i_be_hit = true && spd >= 100 && state != 4// if the ball is going fast, then it will create a smear effect
//     {
//         draw_sprite_ext(sprite_get("smear"),0,save_oldposX ,save_oldposY ,(smearxscale*spr_dir)-0.1,smearyscale-0.1,smeardirection,c_white,smear_alpha);
//     }
//     }
//     if (state != 1) && spd >= 240
//     {
//         draw_sprite(sprite_get("actionlines"),other.actionlinesi,view_get_xview(),view_get_yview())
//     }

// }
