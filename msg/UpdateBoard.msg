string piece_name
uint64 source_tile_index
uint64 destination_tile_index
int64 slain_piece_tile_index # -1 means nothing was jumped
uint64 game_state # 0 - connecting, 1 - black to move, 2 - red to move, 3 - game complete