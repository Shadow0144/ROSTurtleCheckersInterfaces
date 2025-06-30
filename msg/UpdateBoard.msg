string lobby_name
string lobby_id
uint64 black_time_remaining_seconds
uint64 red_time_remaining_seconds
uint64 source_tile_index
uint64 destination_tile_index
bool king_piece # If true, king the piece at destination_tile_index
int64 slain_piece_tile_index # -1 means nothing was jumped
uint64[] movable_tile_indices # For highlighting turtles that can move next turn
uint64 game_state # 0 - connecting, 1 - connected, 2 - black to move, 3 - red to move, 4 - game complete
uint64 board_hash # The state of the board as a hash; if it does not match the player's version, request a full update
uint64 checksum_sig