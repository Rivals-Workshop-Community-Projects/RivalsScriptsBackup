//The variable used to randomize the stage's music, set to -1 for the randomizer in update.gml to work.
cur_song = -1

portal = 1

if is_aether_stage() {
    portal = 2
}

glados_taunt = 19
current_option = 1
timer = 0

death_quote[0] = "[GLaDOS]: Now you're thinking with stupidity."
death_quote[1] = "[GLaDOS]: Just stop flailing around like an incompetent."
death_quote[2] = "[GLaDOS]: I honestly, truly didn't think you'd fall for that."
death_quote[3] = "[GLaDOS]: Oh, you are kidding me."
death_quote[4] = "[GLaDOS]: Just stop it already."
death_quote[5] = "[GLaDOS]: You really don't need to keep failing."
death_quote[6] = "[GLaDOS]: If at first, you don't succeed... Fail five more times."
death_quote[7] = "[GLaDOS]: Did you think that would be funny?"
death_quote[8] = "[GLaDOS]: How can you fail at this... It isn't even a test."
death_quote[9] = "[GLaDOS]: I hope that was some kind of joke."
death_quote[10] = "[GLaDOS]: And here I thought this room was dangerously unlethal."
death_quote[11] = "[GLaDOS]: Was that necessary?"
death_quote[12] = "[GLaDOS]: You're doing a great job of disappointing me."
death_quote[13] = "[GLaDOS]: Did something happen? ...[Yawn] I wasn't watching."
death_quote[14] = "[GLaDOS]: If you're going to hit each other, at least aim for the head."
death_quote[15] = "[GLaDOS]: Are you expecting applause?"
death_quote[16] = "[GLaDOS]: Yes, I see you, and no, I don't care."
death_quote[17] = "[GLaDOS]: Are you trying to impress me? ...What would impress me more is if you never did that again."
death_quote[18] = "[GLaDOS]: Now you're thinking with stupidity."
death_quote[19] = " "