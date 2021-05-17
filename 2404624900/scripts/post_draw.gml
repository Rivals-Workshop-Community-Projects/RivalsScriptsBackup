//post-draw

//draw_debug_text( x, y - 60, string(clone_timer_hud));

//draw_debug_text( x, y - 40, string(charge_cont));

//draw_debug_text( x, y - 20, string(max_reach));

//draw_debug_text( x, y - 1, string(hsp));



if (attack == AT_DSPECIAL && (window == 2 || window == 3) && clone_alive == true 
&& (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR)){
    draw_sprite_ext(sprite_get("fireball"), get_gameplay_time()*.5, 
    shadow_clone.x-50, shadow_clone.y-80, 1, 1, 0, c_white, 1 );
}

if (attack == AT_DSPECIAL && (window == 2 || window == 3) && (clone_alive == false || runeE || has_rune("E")) 
&& (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR)){
    draw_sprite_ext(sprite_get("fireball"), get_gameplay_time()*.5, 
    x-50, y-80, 1, 1, 0, c_white, 1 );
}

shader_start();
if (attack == AT_USPECIAL && (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && window = 5){
    
    if (runeF || has_rune("F")){
        if (spr_dir == 1){
            draw_sprite_ext(sprite_get("izuna"), get_gameplay_time()*.3, x+25, y+10, 1, 1, 0, c_white, 1 );
        }
        if (spr_dir == -1){
            draw_sprite_ext(sprite_get("izuna"), get_gameplay_time()*.3, x, y+10, 1, 1, 0, c_white, 1 );
        }
    }
    else {
        if (spr_dir == 1){
            draw_sprite_ext(sprite_get("izuna"), get_gameplay_time()*.3, x+25, y-30, 1, 1, 0, c_white, 1 );
        }
        if (spr_dir == -1){
            draw_sprite_ext(sprite_get("izuna"), get_gameplay_time()*.3, x, y-30, 1, 1, 0, c_white, 1 );
        }
    }
     
    
}

if (attack == AT_FSPECIAL && (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR)){
    if (window == 1 && window_timer > 3){
        draw_sprite_ext(sprite_get("proj_smoke"), window_timer, x, y, spr_dir, 1, 0, c_white, 1 );
    }
    if (window == 2 && proj_tap == 0){
        draw_sprite_ext(sprite_get("proj_draw1"), window_timer, x, y, spr_dir, 1, 0, c_white, 1 );
    }
    if (window == 2 && proj_tap == 1){
        draw_sprite_ext(sprite_get("proj_draw2"), window_timer, x, y, spr_dir, 1, 0, c_white, 1 );
    }
    if (window == 3 && proj_tap == 0){
        draw_sprite_ext(sprite_get("proj_draw1"), 14, x, y, spr_dir, 1, 0, c_white, 1 );
    }
    if (window == 3 && proj_tap == 1){
        draw_sprite_ext(sprite_get("proj_draw2"), 14, x, y, spr_dir, 1, 0, c_white, 1 );
    }
    if (window <= 3){
    if ((joy_pad_idle || right_down || left_down) && !up_down && !down_down){
            draw_sprite_ext(sprite_get("arrow_indicator"), 0, x, y, spr_dir, 1, 0, c_white, 1 );
        }
        if (up_down){
            draw_sprite_ext(sprite_get("arrow_indicator"), 2, x, y, spr_dir, 1, 0, c_white, 1 );
        }
        if (down_down){
            draw_sprite_ext(sprite_get("arrow_indicator"), 1, x, y, spr_dir,1, 0, c_white, 1 );
        }
    }
}

if (move_cooldown[AT_NSPECIAL] != 0){
    if (move_cooldown[AT_NSPECIAL] <= 500 && move_cooldown[AT_NSPECIAL] > 280){
        draw_sprite_ext(sprite_get("clone_hud"), 14, x-35, y-70, 1, 1, 0, c_white, 0.3);
    }
    if (move_cooldown[AT_NSPECIAL] <= 280 && move_cooldown[AT_NSPECIAL] > 240){
        draw_sprite_ext(sprite_get("clone_hud"), 14, x-35, y-70, 1, 1, 0, c_white, 0.3);
    }
    if (move_cooldown[AT_NSPECIAL] <= 240 && move_cooldown[AT_NSPECIAL] > 220){
        draw_sprite_ext(sprite_get("clone_hud"), 13, x-35, y-70, 1, 1, 0, c_white, 0.3);
    }
    if (move_cooldown[AT_NSPECIAL] <= 220 && move_cooldown[AT_NSPECIAL] > 200){
        draw_sprite_ext(sprite_get("clone_hud"), 12, x-35, y-70, 1, 1, 0, c_white, 0.3);
    }
    if (move_cooldown[AT_NSPECIAL] <= 200 && move_cooldown[AT_NSPECIAL] > 180){
        draw_sprite_ext(sprite_get("clone_hud"), 11, x-35, y-70, 1, 1, 0, c_white, 0.3);
    }
    if (move_cooldown[AT_NSPECIAL] <= 180 && move_cooldown[AT_NSPECIAL] > 160){
        draw_sprite_ext(sprite_get("clone_hud"), 10, x-35, y-70, 1, 1, 0, c_white, 0.3);
    }
    if (move_cooldown[AT_NSPECIAL] <= 160 && move_cooldown[AT_NSPECIAL] > 140){
        draw_sprite_ext(sprite_get("clone_hud"), 9, x-35, y-70, 1, 1, 0, c_white, 0.3);
    }
    if (move_cooldown[AT_NSPECIAL] <= 140 && move_cooldown[AT_NSPECIAL] > 120){
        draw_sprite_ext(sprite_get("clone_hud"), 8, x-35, y-70, 1, 1, 0, c_white, 0.3);
    }
    if (move_cooldown[AT_NSPECIAL] <= 120 && move_cooldown[AT_NSPECIAL] > 100){
        draw_sprite_ext(sprite_get("clone_hud"), 7, x-35, y-70, 1, 1, 0, c_white, 0.3);
    }
    if (move_cooldown[AT_NSPECIAL] <= 100 && move_cooldown[AT_NSPECIAL] > 80){
        draw_sprite_ext(sprite_get("clone_hud"), 6, x-35, y-70, 1, 1, 0, c_white, 0.3);
    }
    if (move_cooldown[AT_NSPECIAL] <= 80 && move_cooldown[AT_NSPECIAL] > 60){
        draw_sprite_ext(sprite_get("clone_hud"), 5, x-35, y-70, 1, 1, 0, c_white, 0.3);
    }
    if (move_cooldown[AT_NSPECIAL] <= 60 && move_cooldown[AT_NSPECIAL] > 40){
        draw_sprite_ext(sprite_get("clone_hud"), 4, x-35, y-70, 1, 1, 0, c_white, 0.3);
    }
    if (move_cooldown[AT_NSPECIAL] <= 40 && move_cooldown[AT_NSPECIAL] > 20){
        draw_sprite_ext(sprite_get("clone_hud"), 3, x-35, y-70, 1, 1, 0, c_white, 0.3);
    }
    if (move_cooldown[AT_NSPECIAL] <= 20 && move_cooldown[AT_NSPECIAL] > 10){
        draw_sprite_ext(sprite_get("clone_hud"), 2, x-35, y-70, 1, 1, 0, c_white, 0.3);
    }
    if (move_cooldown[AT_NSPECIAL] <= 10 && move_cooldown[AT_NSPECIAL] > 0){
        draw_sprite_ext(sprite_get("clone_hud"), 1, x-35, y-70, 1, 1, 0, c_white, 0.3);
    }
}

shader_end();

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
&& (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) && window == 1){
    if (strong_charge > 5 && strong_charge < 55){
        draw_sprite_ext(sprite_get("strongf1"), get_gameplay_time()*.2, x, y, spr_dir, 1, 0, c_white, .75 );
    }  

    if (strong_charge > 55){
        draw_sprite_ext(sprite_get("strongf2"), get_gameplay_time()*.3, x, y, spr_dir, 1, 0, c_white, .75 );
    }
}

if (strong_max == true){
    draw_sprite_ext(sprite_get("strongf2"), get_gameplay_time()*.3, x-(10*spr_dir), y, spr_dir, 1, 0, c_white, .35 );
}


/*

if (attack == AT_NSPECIAL && (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR)){
    draw_sprite_ext(sprite_get("joystick"), 0, x-30, y-105, 1, 1, 0, c_white, 1 );
}

if (attack == AT_NSPECIAL && (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR)){
    if (up_down){
       draw_sprite_ext(sprite_get("joystick"), 1, x-30, y-105, 1, 1, 0, c_white, 1 ); 
    }
    if (right_down){
       draw_sprite_ext(sprite_get("joystick"), 2, x-30, y-105, 1, 1, 0, c_white, 1 ); 
    }
    if (down_down){
       draw_sprite_ext(sprite_get("joystick"), 3, x-30, y-105, 1, 1, 0, c_white, 1 ); 
    }
    if (left_down){
       draw_sprite_ext(sprite_get("joystick"), 4, x-30, y-105, 1, 1, 0, c_white, 1 ); 
    }
    if (jump_down){
       draw_sprite_ext(sprite_get("joystick"), 5, x-30, y-105, 1, 1, 0, c_white, 1 ); 
    }
    if (attack_down){
       draw_sprite_ext(sprite_get("joystick"), 6, x-30, y-105, 1, 1, 0, c_white, 1 ); 
    }
    if (right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed){
       draw_sprite_ext(sprite_get("joystick"), 7, x-30, y-105, 1, 1, 0, c_white, 1 ); 
    }
}

*/


if "abysspostdrawenabled" not in self abysspostdrawenabled = true; // tell buddy you have post draw code
if "abyssPostDrawing" in self && abyssPostDrawing abyssPostDraw(); // actually do post draw code

user_event(12);
#define abyssPostDraw 
/// abyssPostDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_postDrawArray" in self && ds_list_valid(abyss_postDrawArray))  {
    if (ds_list_size(abyss_postDrawArray) > 0) {
        for (var _i = 0; _i < ds_list_size(abyss_postDrawArray);_i++) {
            var _text = abyss_postDrawArray[| _i];
            if draw_get_halign() != _text[6] {
                draw_set_halign(_text[6]);
            }
            switch (_text[0]) {
                case 0:
                    draw_debug_text(floor(_text[1]),floor(_text[2]),(_text[3]));
                    break;
                case 1:
                    draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
                    break;
                case 2:
                    draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
                    break;
                case 3:
                    if draw_get_font() != 1 draw_set_font(1);
                    draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
                    break;
                default:
                break;
            }
        }
    }
    //finished drawing, so clear the table for the next frame.
    ds_list_clear(abyss_postDrawArray);
}
#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.

if draw_get_font() != argument[3] {
    draw_set_font(argument[3]);
}
draw_text_color(argument[0]+2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1],argument[2],argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,1);




