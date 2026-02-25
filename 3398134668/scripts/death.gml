// death is a script that is called when your character reaches a blastzone and is knocked out.
sound_play(sound_get("Xdeath"),false);
side_b_used = false;
up_b_used = up_b_max;
comboTimeout = 60;
comboCount = 0;

ultimateTarget = [];
ultimateDarkness = 0;