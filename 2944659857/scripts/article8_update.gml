var bl = bbox_left;
var br = bbox_right;
var bb = bbox_bottom;

for (var i = 0; i < num_blocks; i += 1) {
    if blocks[i].draw_y != blocks[i].y {
        blocks[i].draw_y += 2;
    }
}

with oPlayer {
    if "smb_stage_prev_vsp" not in self { continue; }
    
    var pv = smb_stage_prev_vsp;
    if (vsp >= 0 && pv < 0) && collision_line(bl, bb - pv, br, bb - pv, self, false, false) {
        if smb_stage_prev_vsp > 0 continue;
        for (var i = 0; i < other.num_blocks; i += 1) {
            var b = other.blocks[i];
            var xx = other.x + i * 38;
            if b.draw_y != b.draw_y || x > xx + 18 + (i == other.num_blocks - 1) * 24 {
                continue;
            }
            else {
                b.draw_y = b.y - 10;
                sound_play(other.sfx_block);
                with other {
                    var hb = create_hitbox(8, 8, xx, y - 6);
                    hb.player = other.player;
                    hb.depth = 0;
                    if random_func_2(99, 4, true) == 0 {
                        var fx = spawn_hit_fx(xx, y - 6, obj_stage_main.fx_coin);
                        fx.vsp = -3;
                        fx.depth = -5;
                        fx.uses_shader = false;
                        sound_play(sound_get("coin"));
                    }
                }
                break;
            }
        }
    }
}
