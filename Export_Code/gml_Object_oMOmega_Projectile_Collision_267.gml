var combo, damageToDeal;
combo = global.difficulty >= 2
if (fadeout == 0 && (combo == 1 || other.invincible == 0) && other.state != 40)
{
    damageToDeal = damage
    damage_player_knockdown(damageToDeal, image_xscale, 90, 0, 3.5)
    fadeout = 1
    speed = 0
    sfx_play(sndGFTrooperHit)
}
