// pre-draw

if curry_timer > 0 {
    var range = 5;
    draw_sprite_ext(sprite_index,image_index,x-range+random_func(0,1+range*2,true),y-range+random_func(1,1+range*2,true),spr_dir*(small_sprites+1),small_sprites+1,0,$FF0000,1);
    draw_sprite_ext(sprite_index,image_index,x-range+random_func(2,1+range*2,true),y-range+random_func(3,1+range*2,true),spr_dir*(small_sprites+1),small_sprites+1,0,c_red,1);
    draw_sprite_ext(sprite_index,image_index,x-range+random_func(4,1+range*2,true),y-range+random_func(5,1+range*2,true),spr_dir*(small_sprites+1),small_sprites+1,0,c_red,1);
}  
if has_rune("N") && metal_timer > 0 {
    spawn_dust_fx(random_func(24,32,true)-16+x,y-random_func(23,64,true),sprite_get("super_star_glimmer"),30);
}
with asset_get("hit_fx_obj") if player_id == other {
    if hit_fx == other.shadow_hit_fx {
        if i_am_a_shadow_bug == true && (position_meeting(x,y+5,asset_get("par_block")) || (vspeed > 0 && position_meeting(x,y+5,asset_get("par_jumpthrough")))) {
            speed = 0;
            gravity = 0;
            x = xprevious;
            y = yprevious;
            i_am_a_shadow_bug = false;
        } 
    } else if hit_fx == other.shadow_indicator_fx {
        
            with other {
                var total = 0;
                //do {
                    var bug = spawn_hit_fx(other.x,other.y-8,shadow_hit_fx);
                    bug.spr_dir = 2;
                    bug.image_yscale = 2;
                    bug.direction = random_func(total,360,true);// + (v_mag * v_dir);
                    bug.speed = 3;
                    bug.gravity_direction = 270;
                    bug.gravity = 0.15;
                    bug.solid = false;
                    bug.friction = 0.04;
                    bug.depth = depth + 5;
                    with bug i_am_a_shadow_bug = true;
                //} while ( ++total < 15);
            }
    }else if hit_fx == other.shadow_indicator_fx2 {
        
            with other {
                var total = 0;
                //do {
                    var bug = spawn_hit_fx(other.x,other.y-8,shadow_hit_fx);
                    bug.spr_dir = 2;
                    bug.image_yscale = 2;
                    bug.direction = other.hit_angle - 15 + random_func(total,30,true);// + (v_mag * v_dir);
                    bug.speed = 5;
                    bug.gravity_direction = 270;
                    bug.gravity = 0.15;
                    bug.solid = false;
                    bug.friction = 0.04;
                    bug.depth = depth + 5;
                    with bug i_am_a_shadow_bug = true;
                //} while ( ++total < 15);
            }
    }
}
shader_start();
with pHitBox if player_id == other && type == 2 && attack == AT_NSPECIAL && vsp == 0 {
    draw_sprite_ext(other.item_arrow_sprite,0,x,y-32,1,1,0,get_player_hud_color(other.player),1);
}
shader_end();