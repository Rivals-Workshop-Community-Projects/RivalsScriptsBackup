if (img_spd == 0)
    visible = get_gameplay_time() % 4 <= 2
vsp += grav;

if (y > room_height + 512) {
    instance_destroy()
    exit;
}

image_index += img_spd;