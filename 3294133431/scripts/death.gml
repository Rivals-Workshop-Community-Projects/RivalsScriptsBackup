
user_event(3);//Cancel Invis
invisAlpha = 1;
invisTimer = 0;

crits = 0;

user_event(2);//Cancel Disguise

inTauntMenu = false;
inTerminalTauntMenu = false;
tauntAnimTimer1 = 0;
terminalTauntAnimTimer = 0;

if(doVoiceLines && sprite_index != buddy_starko_sprite && sprite_index != buddy_screenko_sprite)
    PlayRandomVoiceLine("spy_paincrticialdeath01", "spy_paincrticialdeath02", "spy_paincrticialdeath03", "spy_sf12_falling01", "spy_sf12_falling02");


//ALL SFX need to be killed on death
sound_stop(terminalLoopSfx);
sound_stop(terminalStartSfx);
sound_stop(terminalStopSfx);
sound_stop(tauntKnifeSfx);
sound_stop(helicopterSfx);
sound_stop(whooshSfx);
sound_stop(ustrongChargeSfx);
sound_stop(spy_disguiseSfx);
sound_stop(sfx_hod_steam_chargeSfx);
sound_stop(sfx_ell_overheatSfx);
sound_stop(sfx_ell_hoverSfx);


//copied to other files
#define PlayRandomVoiceLine()
{
    var randSound = random_func(0, argument_count, true);
    PlayVoiceLine(argument[randSound]);
}
#define PlayVoiceLine()
{
	var clipName = argument[0];
	var volume = argument_count > 1 ? argument[1] : 1;
    sound_stop(lastVoiceLine);
    lastVoiceLine = sound_play(sound_get(clipName), false, noone, volume);
}
#define PlayRandomVoiceLineFromOpponent()
{
    var randSound = random_func(0, ds_list_size(opponentLines), true);
    PlayVoiceLine(opponentLines[|randSound]);
}
