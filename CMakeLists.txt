

function(build package)

    byd__package__check_component(${package})
    byd__package__split_package_component_name(${package} package_name component_name)


    byd__package__get_components(${package_name} components)
    list(REMOVE_ITEM components ${component_name})

    foreach(component IN LISTS components)
        byd__cmake__configure__add_arg(${package} LIBVNCSERVER_BUILD_${component} OFF)
    endforeach()
    byd__cmake__configure__add_arg(${package} LIBVNCSERVER_BUILD_${component_name} ON)


    # TODO enable this
    byd__cmake__configure__add_arg(${package} LIBVNCSERVER_use_jpeg_compression OFF)
    byd__cmake__configure__add_arg(${package} LIBVNCSERVER_use_png_compression  OFF)
    byd__cmake__configure__add_arg(${package} LIBVNCSERVER_use_zlib_compression OFF)
    byd__cmake__configure__add_arg(${package} LIBVNCSERVER_use_openssl          OFF)


    byd__cmake__add(${package} SKIP test)

endfunction()


build(${package})
