//post-draw

if (state == PS_IDLE || state == PS_WALK || state == PS_PARRY_START || state == PS_RESPAWN) {
    shader_start();
    draw_sprite_ext(sprite_get("walkidle"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 1);
    shader_end();
}

if (state == PS_ATTACK_AIR && attack == AT_NAIR) {
    if (spr_dir == 1) {
        shader_start();
        draw_sprite_ext(sprite_get("nair_r"), -1, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_end();
    } else {
        shader_start();
        draw_sprite_ext(sprite_get("nair_l"), -1, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_end();
    }
}

// Intro
if (state == PS_SPAWN) {
    if (SpamNeoIntroTimer <= 50) {
        draw_sprite_ext(sprite_get("intro"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 1);
    } else if (SpamNeoIntroTimer > 50 && SpamNeoIntroTimer <= 56) {
        draw_sprite_ext(sprite_get("intro"), 7, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_start();
        draw_sprite_ext(sprite_get("eyepink"), 0, x + 6 * spr_dir, y - 82, 1, 1, 0, c_white, 1);
        draw_sprite_ext(sprite_get("eyeyellow"), 0, x - 6 * spr_dir, y - 76, 1, 1, 0, c_white, 1);
        shader_end();
        
    } else if (SpamNeoIntroTimer > 56 && SpamNeoIntroTimer <= 64) {
        draw_sprite_ext(sprite_get("intro"), 7, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_start();
        draw_sprite_ext(sprite_get("eyepink"), 1, x + 6 * spr_dir, y - 82, 1, 1, 0, c_white, 1);
        draw_sprite_ext(sprite_get("eyeyellow"), 1, x - 6 * spr_dir, y - 76, 1, 1, 0, c_white, 1);
        shader_end();
        
    } else if (SpamNeoIntroTimer > 64 && SpamNeoIntroTimer <= 70) {
        draw_sprite_ext(sprite_get("intro"), 7, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_start();
        draw_sprite_ext(sprite_get("eyepink"), 1, x + 6 * spr_dir, y - 82, 1, 1, 0, c_white, 1);
        draw_sprite_ext(sprite_get("eyeyellow"), 1, x - 6 * spr_dir, y - 76, 1, 1, 0, c_white, 1);
        shader_end();
        
    } else if (SpamNeoIntroTimer > 70 && SpamNeoIntroTimer <= 76) {
        shader_start();
        draw_sprite_ext(sprite_get("walkidle"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_end();
        draw_sprite_ext(sprite_get("intro"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 0.8);
        
    } else if (SpamNeoIntroTimer > 76 && SpamNeoIntroTimer <= 82) {
        shader_start();
        draw_sprite_ext(sprite_get("walkidle"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_end();
        draw_sprite_ext(sprite_get("intro"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 0.6);

    } else if (SpamNeoIntroTimer > 82 && SpamNeoIntroTimer <= 88) {
        shader_start();
        draw_sprite_ext(sprite_get("walkidle"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_end();
        draw_sprite_ext(sprite_get("intro"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 0.4);
        
    } else if (SpamNeoIntroTimer > 88 && SpamNeoIntroTimer <= 94) {
        shader_start();
        draw_sprite_ext(sprite_get("walkidle"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_end();
        draw_sprite_ext(sprite_get("intro"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 0.2);

    } else if (SpamNeoIntroTimer > 94) {
        shader_start();
        draw_sprite_ext(sprite_get("walkidle"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_end();
    }
}

if (state == PS_RESPAWN) {
    if (spr_dir = 1) {
        shader_start();
        draw_sprite(sprite_get("plat_overdraw"), 0, x, y);
        shader_end();
    } else if (spr_dir = -1) {
        shader_start();
        shader_start();
        draw_sprite(sprite_get("plat_overdraw"), 0, x, y);
        shader_end();
    }
}
