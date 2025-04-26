//got hit

if (state != PS_RESPAWN && state != PS_DEAD) visible = true;

if (setting_visible) {
    setting_visible = false;
    visible = true;
}