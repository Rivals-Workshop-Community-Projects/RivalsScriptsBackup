//post-draw
if fuse_overlay_timer > 0 {
    shader_start()
    draw_sprite_ext(fuse_overlay_sprite, image_index, x, y, spr_dir, 1, 0, c_white, fuse_overlay_timer/6)
    shader_end()
    
    gpu_set_alphatestenable(true);
    gpu_set_fog(1, c_white, 0, 1);
    
    draw_sprite_ext(fuse_overlay_sprite, image_index, x, y, spr_dir, 1, 0, c_white, fuse_overlay_timer/20)
    
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);
    
}


//fuse rings
shader_start()
with pHitBox if player_id == other.id && ("state" in self) && state == 9 {
    if attack == AT_NSPECIAL || attack == AT_JAB {
        with player_id var spr = sprite_get("ruby_fuse_ring_back")
        draw_sprite_ext(spr, 0, x, y, 1, 1, -hitbox_timer*8*spr_dir, c_white, 0.8)
        with player_id var spr = sprite_get("ruby_fuse_ring_front")
        draw_sprite_ext(spr, 0, x, y, 1, 1, hitbox_timer*8*spr_dir, c_white, 0.8)
    }
}

with obj_article_platform if player_id == other.id && ("state" in self) && state == 9 {
    draw_sprite_ext(sprite_get("ruby_fuse_ring_back"), 0, x, y, 1, 1, -timer*4*spr_dir, c_white, 0.8)
    draw_sprite_ext(sprite_get("ruby_fuse_ring_front"), 0, x, y, 1, 1, timer*4*spr_dir, c_white, 0.8)
}

if ftilt_draw_vfx > 0 {
    draw_sprite_ext(sprite_get("ruby_fuse_ring_back"), 0, x + 50*spr_dir, y - 20, 1, 1, -timer*4*spr_dir, c_white, ftilt_draw_vfx/4)
    draw_sprite_ext(sprite_get("ruby_fuse_ring_front"), 0, x + 50*spr_dir, y - 20, 1, 1, timer*4*spr_dir, c_white, ftilt_draw_vfx/4)
}
shader_end()

with pHitBox if ("srlink2_fuse_item" in self) && srlink2_fuse_item {
    script = 2
    user_event(0)
}

//intro anim
shader_start()
var intro_time = get_gameplay_time();
var offsetx = 20*(50 - intro_time)*spr_dir
var offsety = 15*(50 - intro_time)
if intro_time < 50 {
    draw_sprite_ext(sprite_get("intro"), 0, x - offsetx, y + 20 - offsety, 1, 1, 0, c_white, 1)
}
shader_end()