timer++;

vsp += grav;
if (vsp_max >= 0)
    vsp = min(vsp, vsp_max);
image_index += img_spd;

if (timer_max > 0 && timer > timer_max) {
    instance_destroy(id);
    exit;
}