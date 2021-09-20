//draw-hud
if !("timer" in self) exit;

shader_start()

var reticle_col = c_lime;
var reticle_x = temp_x + 180;
var reticle_y = temp_y - 8;
if move_cooldown[AT_FTHROW] > 0 reticle_col = c_red;
draw_sprite_ext(sprite_get("reticle"), 0, reticle_x, reticle_y, 1, 1, 0, reticle_col, 1)

if move_cooldown[AT_FTHROW] < 10 {
    var arm_dist = move_cooldown[AT_FTHROW] * 15;
    for (var i = 0; i < 4; i++) {
        draw_sprite_ext(sprite_get("reticle_arm"), 0, reticle_x + arm_dist*dcos(90*i - 45), reticle_y - arm_dist*dsin(90*i - 45), 1, 1, 90*i, reticle_col, 1 - move_cooldown[AT_FTHROW]/20)
    }
}

shader_end()

if codec_active user_event(3)

//munophone
muno_event_type = 5;
user_event(14);