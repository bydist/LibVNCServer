include("${CMAKE_CURRENT_LIST_DIR}/id.cmake")






byd__package__get_components_to_build(${package} components_to_build)
byd__package__get_components(${package} components)
if(components_to_build)
    foreach(component IN LISTS components)
        if(component IN_LIST components_to_build)
            set(flag ON)
        else()
            set(flag OFF)
        endif()
        byd__cmake__configure__add_arg(${package} LIBVNCSERVER_BUILD_${component} ${flag})
    endforeach()
endif()



byd__cmake__configure__add_arg(${package} LIBVNCSERVER_use_jpeg_compression OFF)
byd__cmake__configure__add_arg(${package} LIBVNCSERVER_use_png_compression  OFF)
byd__cmake__configure__add_arg(${package} LIBVNCSERVER_use_zlib_compression OFF)
byd__cmake__configure__add_arg(${package} LIBVNCSERVER_use_openssl          OFF)


byd__cmake__add(${package} SKIP test)
