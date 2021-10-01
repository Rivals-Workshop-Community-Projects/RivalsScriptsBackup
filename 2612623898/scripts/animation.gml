if("ssl_sleep_lag" in self and ssl_sleep_lag > 0 and (state == PS_PRATFALL or state == PS_PRATLAND)){
    sprite_index = sprite_get("hurt");
    image_index = (ssl_sleep_lag*ssl_sleep_anim_speed)%ssl_sleep_anim_frames;
}