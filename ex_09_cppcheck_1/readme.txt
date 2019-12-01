cppcheck calls for root scr folder using

add_custom_target(cpp_check ALL COMMAND cppcheck --output-file=${MY_PROJ_DIR}/lint/result.txt ${MY_PROJ_DIR}/imp)

