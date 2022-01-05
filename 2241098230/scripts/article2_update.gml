timer++;

if (timer <= 120)
    y = ease_circOut(round(start_y), round(end_y), timer, 120);
    
if (timer <= 45) {
    image_index = ease_linear(0, 4, timer, 45);
}

if (timer > 45 && timer <= 180) {
    image_index = ease_linear(4, 7, timer % 12, 12);
}

if (timer == 180) {
    sound_play(asset_get("sfx_forsburn_reappear"));
}
if (timer > 180) {
    image_index += 0.25;
    
    if (floor(image_index) >= image_number) {
        instance_destroy();
        exit;
    }
}