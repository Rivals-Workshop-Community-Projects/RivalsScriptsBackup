switch (state){
    case PS_AIR_DODGE:
        liveWirePos = [x, y];
    break;
}
wallSlide = false;
if !has_rune("D") incrementDspecial = 2;
else incrementDspecial = 5;
nspecialCycleTimer = 5*itemCycleFrequency;

ultimateTarget = [];
ultimateDarkness = 0;
ultimateLoop = clamp(ultimateLoops + (plus_active*2) + comboLevel, 0, ultimateMaxLoops);

