// pre-draw

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL {
    var _w = 60;
    var col_1 = c_white;
    var col_2 = c_black;
    
    var size = 3; //board dimensions in termes of num squares per with/height
    
    var max_alpha = 0.6;
    var _alpha = max_alpha;
    switch window {
        case 1: //draw chessboard
        _alpha = max_alpha*0.1*window_timer
        break;
        
        case 2:
        _alpha = max_alpha;
        break;
        
        case 3:
        _alpha = max_alpha*(1 - 0.1*window_timer)
        break;
        
        default:
        _alpha = 0;
        break;
    }
    
    var directions = [0,0,0,0,0,0,0,0]; //[up, up-right, right, down-right, down, down-left, left, up-left]
    
    switch piece {
        case "P":
        directions = [1,0,0,0,0,0,0,0];
        break;
        
        case "N":
        directions = [1,0,1,0,1,0,1,0];
        break;
        
        case "B":
        directions = [0,1,0,1,0,1,0,1];
        break;
        
        case "R":
        directions = [1,0,1,0,1,0,1,0];
        break;
        
        case "K":
        directions = [1,1,1,1,1,1,1,1];
        break;
        
        case "Q":
        directions = [1,1,1,1,1,1,1,1];
        break;
    }
    
    for (var i = 0; i < size; i++) {
        for (var j = 0; j < size; j++) {
            var draw_col = (i+j) mod 2 == 0 ? col_1 : col_2;
            draw_set_alpha(_alpha)
            draw_rectangle_color(x - (i-(size/2))*_w, y-(char_height/2) - (j-(size/2))*_w, x-(_w) - (i-(size/2))*_w, y-_w-(char_height/2) - (j-(size/2))*_w,draw_col,draw_col,draw_col,draw_col,false)
            draw_set_alpha(1)
        }
    }
    
    for (var dir = 0; dir < 8; dir++) {
        if directions[dir] == 1 {
            var arrow_x = x;
            if dir == 1 || dir == 2 || dir == 3 arrow_x -= _w;
            else if dir == 5 || dir == 6 || dir == 7 arrow_x += _w;
            
            var arrow_y = y - (char_height/2);
            if dir == 0 || dir == 1 || dir == 7 arrow_y -= _w;
            else if dir == 3 || dir == 4 || dir == 5 arrow_y += _w;
            
            var arrow_col = uspec_dir == dir ? c_lime : c_gray;
            
            draw_sprite_ext(sprite_get("arrow"), 0, arrow_x, arrow_y, 1, 1, dir*45, arrow_col, _alpha*2)
        }
    }
}

//after images
for (var i = array_length(uspec_afterimages) - 1; i >= 0; i--) {
    if uspec_afterimages[i,2] > 0 {
        shader_start();
        draw_sprite_ext(piece == "P" ? sprite_get("idle") : sprite_get(piece + "idle"),0,uspec_afterimages[i,0],uspec_afterimages[i,1],spr_dir,1,0,c_white,uspec_afterimages[i,2]*0.05)
        shader_end();
    }
}

//rook cannon
if rook_cannon != undefined {
    shader_start();
    draw_sprite_ext(sprite_get("Rfspecial_barrel"), rook_cannon[3], rook_cannon[0], rook_cannon[1], spr_dir, 1, rook_cannon[2], c_white, 1);
    shader_end();
}

//final smash
if sprite_index == sprite_get("finalsmash_chessatron") {
    draw_sprite_ext(sprite_get("finalsmash_vfx_back"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
}

//TRAILER STUFF, DELETE LATER
/*
var spr = sprite_get("trailer_gif");
if trailer_mode {
    draw_sprite_ext(spr, trailer_frame, trailer_x, trailer_y, 1, 1, 0, c_white, 1);
}
*/