// article#_pre_draw.gml, bottom of file but above defines recommended:
// THIS DRAWS THE ARTICLE.
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
stored_image_alpha = image_alpha; // store image alpha
image_alpha = 0; // set real image alpha to 0 so the article doesn't draw itself and we can use sprite_index in a sane way, without image_index acting weird.