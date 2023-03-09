var size, type, alignment, bufferSize, result, itemList, itemString;
itemString = ""
if global.looting
{
    itemList = ds_list_create()
    ds_list_set(itemList, 0, global.item)
    itemString = ds_list_write(itemList)
    itemString = strict_compress(itemString)
    ds_list_destroy(itemList)
}
size = 1024
type = buffer_grow
alignment = 1
buffer11 = buffer_create(size, type, alignment)
buffer_seek(buffer11, buffer_seek_start, 0)
buffer_write(buffer11, buffer_u8, 36)
buffer_write(buffer11, buffer_s8, oCharacter.mirror)
buffer_write(buffer11, buffer_s16, room)
buffer_write(buffer11, buffer_s16, global.currX)
buffer_write(buffer11, buffer_s16, global.currY)
buffer_write(buffer11, buffer_s8, global.sax)
buffer_write(buffer11, buffer_u8, global.killedBy)
buffer_write(buffer11, buffer_u8, global.clientID)
buffer_write(buffer11, buffer_string, itemString)
bufferSize = buffer_tell(buffer11)
buffer_seek(buffer11, buffer_seek_start, 0)
buffer_write(buffer11, buffer_s32, bufferSize)
buffer_write(buffer11, buffer_u8, 36)
buffer_write(buffer11, buffer_s8, oCharacter.mirror)
buffer_write(buffer11, buffer_s16, room)
buffer_write(buffer11, buffer_s16, global.currX)
buffer_write(buffer11, buffer_s16, global.currY)
buffer_write(buffer11, buffer_s8, global.sax)
buffer_write(buffer11, buffer_u8, global.killedBy)
buffer_write(buffer11, buffer_u8, global.clientID)
buffer_write(buffer11, buffer_string, itemString)
result = network_send_packet(socket, buffer11, buffer_tell(buffer11))
buffer_delete(buffer11)
