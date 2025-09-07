/*if (obj_stage_main.current_stage_state == 2)
{
    if (obj_stage_main.fight_timer >= 0)
    {
        var timer_display = "";
        var xx = 480;
        var yy = 16;
        var timer = obj_stage_main.fight_timer + 60;
        if (obj_stage_main.fight_timer > 3540)
        {
            var secs = floor((timer % 3600) / 60);
            timer_display += (string(floor(timer / 3600)) + " : " + (secs < 10 ? "0 " : "") + string(secs))
        }
        else
        {
            timer_display += string(floor(timer / 60));
        }
        
        draw_set_font(asset_get("roaLBLFont"));
        draw_set_halign(fa_center);
        draw_set_valign(fa_top);
        draw_text_color(xx + 2, yy - 2, timer_display, c_black, c_black, c_black, c_black, 1);
        draw_text_color(xx - 2, yy + 2, timer_display, c_black, c_black, c_black, c_black, 1);
        draw_text_color(xx + 2, yy + 2, timer_display, c_black, c_black, c_black, c_black, 1);
        draw_text_color(xx - 2, yy - 2, timer_display, c_black, c_black, c_black, c_black, 1);
        draw_text_color(xx - 2, yy, timer_display, c_black, c_black, c_black, c_black, 1);
        draw_text_color(xx, yy, timer_display, c_white, c_white, c_white, c_white, 1);
    }
}*/
if (obj_stage_main.current_stage_state == 0)
{
    draw_set_halign(fa_left);
    draw_set_valign(fa_bottom);
    draw_outlined_text(100, 480, "Attack: Select");
}
if (obj_stage_main.current_stage_state == 1)
{
    draw_set_halign(fa_left);
    draw_set_valign(fa_bottom);
    var yy = 480;
    draw_outlined_text(100, yy, "Attack: Place");
    draw_outlined_text(100, yy + 16, "Dodge: Rotate");
    draw_outlined_text(100, yy + 32, "Special: Flip");
}



#define draw_outlined_text(xx, yy, text)
{
    draw_set_font(asset_get("fName"));
    draw_text_color(xx + 2, yy - 2, text, c_black, c_black, c_black, c_black, 1);
    draw_text_color(xx - 2, yy + 2, text, c_black, c_black, c_black, c_black, 1);
    draw_text_color(xx + 2, yy + 2, text, c_black, c_black, c_black, c_black, 1);
    //draw_text_color(xx - 2, yy - 2, text, c_black, c_black, c_black, c_black, 1);
    draw_text_color(xx + 2, yy, text, c_black, c_black, c_black, c_black, 1);
    draw_text_color(xx - 2, yy, text, c_black, c_black, c_black, c_black, 1);
    draw_text_color(xx, yy + 2, text, c_black, c_black, c_black, c_black, 1);
    draw_text_color(xx, yy - 2, text, c_black, c_black, c_black, c_black, 1);
    //draw_text_color(xx - 2, yy, text, c_black, c_black, c_black, c_black, 1);
    draw_text_color(xx, yy, text, c_white, c_white, c_white, c_white, 1);
}