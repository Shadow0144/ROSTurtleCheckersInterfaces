cmake_minimum_required(VERSION 3.5)
project(turtle_checkers_interfaces)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++17
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 17)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# Find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/ChatMessage.msg"
  "msg/ClientHeartbeat.msg"
  "msg/DeclareWinner.msg"
  "msg/DrawDeclined.msg"
  "msg/DrawOffered.msg"
  "msg/Forfit.msg"
  "msg/GameStart.msg"
  "msg/KickPlayer.msg"
  "msg/LeaveLobby.msg"
  "msg/LogOutAccount.msg"
  "msg/OfferDraw.msg"
  "msg/PlayerBanned.msg"
  "msg/PlayerJoinedLobby.msg"
  "msg/PlayerKicked.msg"
  "msg/PlayerLeftLobby.msg"
  "msg/PlayerLoggedOut.msg"
  "msg/PlayerReadied.msg"
  "msg/PlayerReady.msg"
  "msg/ReportPlayer.msg"
  "msg/ServerHeartbeat.msg"
  "msg/SetPlayerBanned.msg"
  "msg/TimerChanged.msg"
  "msg/UpdateBoard.msg"
  "msg/UpdateChat.msg"
  "msg/UpdateLobbyOwner.msg"
  "msg/UpdateTimer.msg"
  "srv/ConnectToGameMaster.srv"
  "srv/CreateAccount.srv"
  "srv/CreateLobby.srv"
  "srv/GetLobbyList.srv"
  "srv/GetStatistics.srv"
  "srv/JoinLobby.srv"
  "srv/LogInAccount.srv"
  "srv/RequestBoardState.srv"
  "srv/RequestPieceMove.srv"
  "srv/RequestReachableTiles.srv"
  "srv/ResyncBoard.srv"
)

ament_export_dependencies(rosidl_default_runtime)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()