var samCount, sockets, size, type, alignment, bufferSize, i;
samCount = (ds_list_size(samusList) - ds_list_size(deadList))
if (global.event[308] > 0)
    samCount = 0
sockets = ds_list_size(playerList)
buffer_delete(buffer)
size = 1024
type = buffer_grow
alignment = 1
buffer = buffer_create(size, type, alignment)
buffer_seek(buffer, buffer_seek_start, 0)
buffer_write(buffer, buffer_u8, 113)
buffer_write(buffer, buffer_u8, global.saxmode)
buffer_write(buffer, buffer_u8, global.lobbyLocked)
buffer_write(buffer, buffer_u8, samCount)
buffer_write(buffer, buffer_string, string(global.damageMult))
buffer_write(buffer, buffer_u8, global.experimental)
bufferSize = buffer_tell(buffer)
buffer_seek(buffer, buffer_seek_start, 0)
buffer_write(buffer, buffer_s32, bufferSize)
buffer_write(buffer, buffer_u8, 113)
buffer_write(buffer, buffer_u8, global.saxmode)
buffer_write(buffer, buffer_u8, global.lobbyLocked)
buffer_write(buffer, buffer_u8, samCount)
buffer_write(buffer, buffer_string, string(global.damageMult))
buffer_write(buffer, buffer_u8, global.experimental)
for (i = 0; i < sockets; i++)
    network_send_packet(ds_list_find_value(playerList, i), buffer, buffer_tell(buffer))
alarm[11] = 30
