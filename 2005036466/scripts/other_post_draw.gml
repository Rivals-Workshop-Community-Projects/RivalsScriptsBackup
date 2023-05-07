// Draw's the C4 on the opponent.
//draw_debug_text(x, y+32, "Can Det: " + string(pen_can_det))

if penny_strapped and other_player_id == strapped_id{
    var anim_mine = 4;
    var mine_sprite = asset_get("empty_sprite");
    // With the strapped id
    with strapped_id{
        var charged_sprite = sprite_get("mine_chargedstrapped")
        // check if mine is active
        shader_start();
        if mine_active == 1{
            // Okay so now we set the speed
            mine_sprite = sprite_get("mine_strapped");
            anim_mine = mineblinktimer;
        } else {
            mine_sprite = sprite_get("mine_strapped_off");
        }
    }
    if strapped_id.mine_active == 1{
        draw_sprite_ext(mine_sprite, anim_mine, x, y - 30, 1, 1, 0, strapped_id.col_penc4, 1);
        draw_sprite_ext(charged_sprite, anim_mine, x, y - 30, 1, 1, 0, strapped_id.penny_charge_col, strapped_id.pen_mine_unstable);
    } else {
        draw_sprite_ext(mine_sprite, 0, x, y - 30, 1, 1, 0, c_white, 1);
    }
    draw_sprite_ext(charged_sprite, anim_mine, x, y - 30, 1, 1, 0, c_white, penny_mine_indi);
    shader_end();
}

//post-draw
if penny_charged_id != noone{
    if (penny_is_charged && other_player_id == penny_charged_id){
        var charge_sprite = -1;
        with (penny_charged_id){
            //sprite_get can only be called directly by the workshop character
            if (other.land_time < 6)
                charge_sprite = sprite_get("mark_small_top");
            else
                charge_sprite = sprite_get("mark_top");
            shader_start();
        }
        if (charge_sprite != -1)
            draw_sprite(charge_sprite, get_gameplay_time()*.15, x, y-char_height*.5);
            //draw_debug_text(x, y + 16, "CHARGED");
        with (penny_charged_id){
            shader_end();
        }
    }
}