string piece_name
uint64 source_tile_index
uint64 destination_tile_index
bool king_piece # If true, king the piece at destination_tile_index
int64 slain_piece_tile_index # -1 means nothing was jumped
string mandatory_piece_name # If not empty, this piece must jump to continue the turn
uint64 game_state # 0 - connecting, 1 - connected, 2 - black to move, 3 - red to move, 4 - game complete