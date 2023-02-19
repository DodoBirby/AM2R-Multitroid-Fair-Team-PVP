var damageToDeal;
if (hspeed > 0)
    facing = 1
else
    facing = -1
if (fadeout == 0)
{
    damageToDeal = damage
    damage_player_push(damage, facing, 110, 0, 3.5)
    fadeout = 1
    speed = 0
}
