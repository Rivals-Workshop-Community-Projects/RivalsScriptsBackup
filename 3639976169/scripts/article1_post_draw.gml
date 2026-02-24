var time = get_gameplay_time();
var orbType = player_id.orb_slots[orbID];
shader_end();
if (orbType == 1)
    draw_sprite_ext(spr_orb_lightning, time / 6, round(x), round(y), 2, 2, 0, c_white, 1);
else if (orbType == 2)
    draw_sprite_ext(spr_orb_frost, time / 9, round(x), round(y), 2, 2, 0, c_white, 1);    
else if (orbType % 10 == 3)
{
    draw_sprite_ext(spr_orb_dark, time / 9, round(x), round(y), 2, 2, 0, c_white, 1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_font(asset_get("fName"))
    draw_text_color(round(x), round(y), string(floor(orbType / 10)), c_white, c_white, c_white, c_white, 1);
}
else if (orbType == 4)
    draw_sprite_ext(spr_orb_plasma, time / 9, round(x), round(y), 2, 2, 0, c_white, 1);

if (orb_evoke_time < 60)
{
    var scale = (2 + (orb_evoke_time / 30.0)) * 2;
    var alpha = 1 - (orb_evoke_time / 60.0);
    //var yoffs = orb_evoke_time / 5.0;
    var sprite = noone;
    switch (orb_evoked)
    {
        case 1:
            sprite = spr_orb_lightning;
            break;
        case 2:
            sprite = spr_orb_frost;
            break;
        case 3:
            sprite = spr_orb_dark;
            break;
        case 4:
            sprite = spr_orb_plasma;
            break;
    }
    draw_sprite_ext(sprite, 0, round(x), round(y), scale, scale, 0, c_white, alpha);
}
if (instance_exists(attached_projectile))
{
    draw_sprite_ext(sprite_get("orb_slot_outline"), 0, round(x), round(y), 2, 2, 0, c_white, 1);
}