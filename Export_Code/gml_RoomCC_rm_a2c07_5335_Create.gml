init_monster_trigger(12, -1)
global.event[109] = 1
if (global.metdead[11] == 0 || global.event[109] == 0)
    instance_destroy()
