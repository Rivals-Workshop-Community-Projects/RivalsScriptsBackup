// set_state.gml

if (state == PS_IDLE_AIR && had_airdodge_pre_dash == true)
{
    has_airdodge = true;
    had_airdodge_pre_dash = false;
}