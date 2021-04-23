//
timer++;

image_xscale+=0.1;
image_yscale+=0.1;

image_xscale = clamp(image_xscale, 1, 3 + dsin((timer*10))*0.5);
image_yscale = clamp(image_yscale, 1, 3 + dsin((timer*10))*0.5);

image_angle = dsin((timer*5))*15;

can_deal_damage = true;

if timer > 200 {
    image_alpha -= 0.1;
    if image_alpha < 0 {
        instance_destroy();
    }
}

