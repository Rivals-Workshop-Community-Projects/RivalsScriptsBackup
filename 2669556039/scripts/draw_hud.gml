//

var xx = temp_x + 8;
var yy = temp_y - 32;

if(variable_instance_exists(self, "nspecialType"))
{
    if(nspecialType == 0)
        draw_sprite_ext(sprite_get("nspecialMenuSmall"), nspecialType, xx, yy, 2, 2, 0, nspecialAvailable ? c_white : c_gray, 1);
    else if(nspecialType == 1)
        draw_sprite_ext(sprite_get("nspecialMenuSmall"), nspecialType, xx, yy, 2, 2, 0, ds_list_size(toxicArticles) < toxicArticleMax ? c_white : c_gray, 1);
    else
        draw_sprite_ext(sprite_get("nspecialMenuSmall"), nspecialType, xx, yy, 2, 2, 0, c_white, 1);
}