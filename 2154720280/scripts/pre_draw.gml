///

if golden != 0 and get_gameplay_time() % 2 == 0{
       draw_debug_text(x - 66, y - 120,"LOL look, a cheapie.");
}


shader_start();


if attack = AT_EXTRA_1 and window >= 2 && window <= 3 and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
    draw_sprite_ext(sprite_get("dark"), 0, view_get_xview(), view_get_yview(), view_get_hview() * 2, view_get_wview(), 0, c_white, 0.5);
}




    draw_sprite_ext(sprite_get("supply"),   supply  , hudx - 52, hudy + 48, 1, 1, 0 ,-1 , 0.5 + suppfade/60 );
    draw_sprite_ext(sprite_get("batt"),   batt  , hudx - 26, hudy - 54, 1, 1, 0 ,-1 , 0.3 + battfade/45  );
    draw_sprite_ext(sprite_get("batt"),  6 + batt2/8.6  , hudx - 26, hudy - 54, 1, 1, 0 ,-1 , 0.3 + battfade/45 );

if battfade > 45 {
    draw_sprite_ext(sprite_get("batt"), 17  , hudx - 26, hudy - 54, 1, 1, 0 ,-1 , 0.3 + (battfade - 45)/45 );
    draw_sprite_ext(sprite_get("batt"), 17  , hudx - 26, hudy - 54, 1, 1, 0 ,-1 , 0.3 + (battfade - 45)/45 );
    draw_sprite_ext(sprite_get("batt"), 17  , hudx - 26, hudy - 54, 1, 1, 0 ,-1 , 0.3 + (battfade - 45)/45 );
}
shader_end();

if sharpi == true{
gpu_set_blendmode(bm_add);
  draw_sprite_ext(sprite_get("XHalo"), 0  , x, y - 32, .5 + supply/16, .5 + supply/16, get_gameplay_time()*(1) ,-1 , 0.35 - supply/90 );
  draw_sprite_ext(sprite_get("XHalo"), 0  , x, y - 32, .75 + supply/12, .75 + supply/12, get_gameplay_time()*(1.5) ,-1 , 0.25 - supply/90 );
gpu_set_blendmode(bm_normal);
}

