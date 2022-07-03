if (state == PS_IDLE && up_down) { sprite_index = sprite_get("lookup") }

//Sleep Animation Handler, Don't touch this!
if(ssl_sleep_enabled and "ssl_sleep_lag" in self and ssl_sleep_lag > 0 and (state == PS_PRATFALL or state == PS_PRATLAND)){
    sprite_index = sprite_get("ssl_sleep");
    image_index = (ssl_sleep_lag*ssl_sleep_anim_speed)%ssl_sleep_anim_frames;
}