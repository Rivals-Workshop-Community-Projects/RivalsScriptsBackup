gs[GS_EXISTS] = true;
gs_spr_dir = spr_dir;
gs[GS_X] = x + 10*spr_dir;
gs[GS_Y] = y - 50;
gs[GS_STATE] = 0;
gs[GS_STATE_TIMER] = 0;
gs[GS_TIMER] = 0;
gs[GS_USES] = 0;
gs[GS_MAX_USES] = 1;

#macro GS_X 0
#macro GS_Y 1
#macro GS_TIMER 2
#macro GS_EXISTS 3
#macro GS_STATE 4
#macro GS_STATE_TIMER 5
#macro GS_USES 6
#macro GS_MAX_USES 7