include("${CMAKE_CURRENT_LIST_DIR}/id.cmake")

byd__package__add_component(${package}
    vncclient
    vncserver
    )
