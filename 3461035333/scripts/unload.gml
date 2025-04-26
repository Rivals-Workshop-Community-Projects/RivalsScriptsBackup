if (sage_mode == 1)
{
    set_ui_element(UI_WIN_PORTRAIT, sprite_get("sage_portrait"))
    set_ui_element(UI_WIN_SIDEBAR, sprite_get("sage_result_small"))
}
else
{
    set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait"))
    set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small"))
}