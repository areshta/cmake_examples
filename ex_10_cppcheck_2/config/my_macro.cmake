macro(MYCHECK)

   cmake_parse_arguments(
        MYCHECK_PREFIX
        ""        #list if name of boolen
        "MYTRG"   #list of name of single arguments
        "FILES"   #list of name of lists
        ${ARGN}   #origin
    )
   message( "+++ MYCHECK MACRO +++ ")
   message( "+++ MY_PROJ_DIR = ${MY_PROJ_DIR}")
   message( "+++ MYCHECK_PREFIX_MYTRG = ${MYCHECK_PREFIX_MYTRG}" )
   message( "+++ MYCHECK_PREFIX_FILES =${MYCHECK_PREFIX_FILES}" )

   foreach(loop_var ${MYCHECK_PREFIX_FILES} )
   add_custom_command(TARGET ${MYCHECK_PREFIX_MYTRG}
       PRE_BUILD
          COMMAND ${MY_PROJ_DIR}/build/run_cppcheck.sh ${loop_var} ${MY_PROJ_DIR}
       VERBATIM
   )
   endforeach(loop_var)


endmacro()

