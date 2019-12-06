add_executable(
    unit_tests
    v_test.cpp
    )

target_link_libraries(
    unit_tests
    gtest_main
    _a
    )

install(TARGETS unit_tests DESTINATION bin)

add_test(
  NAME
    unit
  COMMAND
    ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_BINDIR}/unit_tests
  )
