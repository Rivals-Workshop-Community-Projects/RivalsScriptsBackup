//article16_update, Local Sound

if !_init {
    visible = true;
    _init = 1;
    text = spawn_variables[0];
    halign = spawn_variables[1];
    valign = spawn_variables[2];
    font = spawn_variables[3];
    if (halign == 0)
        halign = fa_center;
    if (valign == 0)
        valign = fa_top;
    if (font == 0) {
        font = asset_get("medFont")
    }
    exit;
}