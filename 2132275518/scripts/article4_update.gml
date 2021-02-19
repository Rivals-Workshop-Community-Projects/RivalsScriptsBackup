if (sprite_index == sprite_get("fx_firepillar_start")) {
    if (visible) {
        image_index += 0.4;
    }
    else {
        timer ++
        
        if (timer % 6 == 0) {
                create_hitbox(AT_NSPECIAL, 3, x, y);
        }
        if (timer >= 90) {
            instance_destroy();
            exit;
        }
    }
}
else if (sprite_index == sprite_get("fx_swirlfire")) {
    
    var image_end = 3 / 0.1;
            
    if (image_index >= 3) {
        image_index += 0.4;
        if (get_gameplay_time() % 4 == 0) {
            create_hitbox(AT_NSPECIAL, 4, round(x), round(y));
        }
        timer ++;
        counter += 1;
        x = xstart + lengthdir_x(48 + (timer) * 3, counter % 360 * spr_dir);
        y = ystart + lengthdir_y(48 + (timer) * 3, counter % 360 * spr_dir);
        image_angle = counter * spr_dir + 60 + (90 * (spr_dir == -1));
    }
    else {
        image_index += 0.1;
        x = xstart + lengthdir_x(48 + timer * 3, counter % 360 * spr_dir);
        y = ystart + lengthdir_y(48 + timer * 3, counter % 360 * spr_dir);
    }
    if (timer >= 240) {
        instance_destroy();
        exit;
    }
    if (image_index >= image_number - 1)
        image_index = 3;
}
else if (sprite_index == sprite_get("dracula1_bat")) {
    timer += 1;
    
    image_index += 0.4;
    
    if (timer == counter + 8) {
        hsp = -3 * spr_dir;
    }
    if (timer >= counter + 20 && timer < counter + 48) {
        hsp += 0.8 * spr_dir;
        hsp = clamp (hsp, -12, 12)
    }
    if (timer >= counter + 40) {
        if (abs(hsp) > 0.1) {
            hsp -= min(abs(hsp), 0.4) * spr_dir;
        }
        else {
            hsp = 0;
        }
    }
}
else if sprite_index = asset_get("empty_sprite") {
    timer ++;
    depth = -2;
    if (timer >= 120) {
        instance_destroy();
    }
}
else if (sprite_index == sprite_get("fx_transform")) {
    timer += 1;
    visible = true;
    image_index = ease_sineOut(0, 4, timer, 48)
    x = xstart + lengthdir_x(ease_sineOut(512, 0, timer, 48), counter)
    y = ystart + lengthdir_y(ease_sineOut(512, 0, timer, 48), counter)
    
    if (timer >= 48) {
        instance_destroy();
        exit;
    }
}
else if (sprite_index == sprite_get("fx_shock")) {
    image_index += 0.5
    image_xscale += 0.15;
    image_yscale += 0.05;
    
    if (image_index >= image_number){
        instance_destroy();
        exit;
    }
}
else if (sprite_index == sprite_get("fx_fire2start")) {
    timer ++;
    image_index = lerp(0, image_number, timer / 48);
    if (instance_exists(parent)) {
        x = parent.x + 80 * parent.spr_dir;
        y = parent.y - 144;
    }
    if (timer >= 48) {
        instance_destroy();
        exit;
    }
}
else if (sprite_index == sprite_get("fx_shock2")) {
    image_index = 0;
	image_xscale += 0.5;
	image_yscale = 0.5;
	visible = true;
	if (image_xscale >= 15) {
	    image_alpha -= 0.05;
	    if (image_alpha <= 0) {
            instance_destroy();
            exit;
        }
	}
}