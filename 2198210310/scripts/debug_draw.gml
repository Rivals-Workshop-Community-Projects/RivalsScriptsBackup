/*
with obj_article_solid {
    if player_id == other.id {
        draw_debug_text(x, y, string(power));
        if willExplode {
            draw_debug_text(x, y + 20, string(explodeTimer));
        }
    }
}

with pHitBox {
    if player_id == other.id && attack == AT_NSPECIAL && hbox_num == 1 {
        draw_debug_text(x, y, string(power));
        if willExplode {
            draw_debug_text(x, y + 20, string(explodeTimer));
        }
    }
}

if holdingCube {
    draw_debug_text(x, y, string(heldPower))
    if heldExplode {
        draw_debug_text(x, y + 20, string(heldExplodeTimer));
    }
}
*/