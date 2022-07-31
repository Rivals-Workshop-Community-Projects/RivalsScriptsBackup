//drawRocketLauncher
if(launchDir > 90 and launchDir < 270)
{
    generalDir = -1;	launchDir = launchDir + 180;	} // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
else
{
    generalDir = 1}//this turns the default looking direction left if facing left and not holding any direction on the joystick // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
if(0 = up_down + down_down + left_down + right_down and spr_dir = -1)
{
    
    generalDir = -1    if(launchDir < 90 and launchDir > 270)    {        generalDir = 1;    }} // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.


//rockets are drawn here

if(state != PS_TUMBLE) and (state != PS_ROLL_FORWARD) and (state != PS_ROLL_BACKWARD) and (state != PS_WALL_JUMP) and (state != PS_AIR_DODGE) and (state != PS_PARRY) and (state != PS_TECH_GROUND) and (state != PS_TECH_BACKWARD) and (state != PS_TECH_FORWARD) and (state != PS_HITSTUN)
{
    switch (state){
        
        case PS_LAND:
        case PS_RESPAWN:
        case PS_PRATLAND:
        case PS_LANDING_LAG:
        case PS_WALK_TURN:
        case PS_DASH_START:
        case PS_DASH:
        case PS_DASH_TURN:
        case PS_DASH_STOP:
        case PS_JUMPSQUAT:
        case PS_IDLE_AIR:
        case PS_FIRST_JUMP:
        case PS_DOUBLE_JUMP:
        case PS_WAVELAND:
            draw_sprite_ext (sprite_get(launcherSkin[get_player_color(player)]), launcherFrame, x -(generalDir * 9), y  - 55, generalDir, 1, launchDir, -1, 1);
        break;
    }
    switch (state_cat){
        case SC_GROUND_NEUTRAL:
            draw_sprite_ext (sprite_get(launcherSkin[get_player_color(player)]), launcherFrame, x -(generalDir * 9), y  - 55, generalDir, 1, launchDir, -1, 1);
        break;
    }
    if(attack == AT_NSPECIAL)
    {
        draw_sprite_ext (sprite_get(launcherSkin[get_player_color(player)]), launcherFrame, x -(generalDir * 9), y  - 55, generalDir, 1, launchDir, -1, 1);
    }
}



//this resets the launcher frame to 0
launcherFrame = 0 // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.