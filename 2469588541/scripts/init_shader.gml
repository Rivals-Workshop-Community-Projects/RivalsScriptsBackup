if (object_index == asset_get("draw_result_screen") && gpu_get_alphatestfunc())
{
    if (results_timer == 1)
    {
        coins_earned = 999999 - coins_started;
        coininc_earned = coins_earned;
        winner_name = "Your wish came true!";
    }
}