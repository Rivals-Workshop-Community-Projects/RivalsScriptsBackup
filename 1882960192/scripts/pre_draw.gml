//pre_draw
shader_start();
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
    
    if ((attack == AT_DSPECIAL || attack == AT_DSPECIAL_2) && (window == 3 || window == 4 || window == 6)) {
        
        var my_hook = noone;
        with (pHitBox) {
            if (player_id == other.id && (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2) && hbox_num == 1) {
                my_hook = id;
            }
        }

        if (my_hook != noone) {
            var origin_x = x + (48 * spr_dir);
            var origin_y = y - 32;
            
            var chain_spr = sprite_get("dspecial_chain");
            var num_balls = 10; 
            
            // le bézier
            var p1_x = (origin_x + my_hook.x) / 2;
           
            var p1_y = origin_y; 
            
            for (var i = 1; i <= num_balls; i++) {
                
                var t = i / (num_balls + 1);
                
                // le bézier
                // (1-t)^2 * P0 + 2(1-t)t * P1 + t^2 * P2
                var draw_x = power(1 - t, 2) * origin_x + 2 * (1 - t) * t * p1_x + power(t, 2) * my_hook.x;
                var draw_y = power(1 - t, 2) * origin_y + 2 * (1 - t) * t * p1_y + power(t, 2) * my_hook.y;
                
                // Draw your balls
                draw_sprite_ext(chain_spr, 0, draw_x, draw_y, 1, 1, 0, c_white, 1);
            }
        }
    }
}

//le bézier
shader_end();