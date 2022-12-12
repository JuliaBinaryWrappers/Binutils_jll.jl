# Autogenerated wrapper script for Binutils_jll for x86_64-linux-gnu
export addr2line, ar, binutils_size, binutils_strip, c++filt, elfedit, libbfd, libctf, libopcodes, nm, objcopy, objdump, ranlib, readelf, strings

JLLWrappers.@generate_wrapper_header("Binutils")
JLLWrappers.@declare_library_product(libbfd, "libbfd-2.39.so")
JLLWrappers.@declare_library_product(libctf, "libctf.so.0")
JLLWrappers.@declare_library_product(libopcodes, "libopcodes-2.39.so")
JLLWrappers.@declare_executable_product(addr2line)
JLLWrappers.@declare_executable_product(ar)
JLLWrappers.@declare_executable_product(binutils_size)
JLLWrappers.@declare_executable_product(binutils_strip)
JLLWrappers.@declare_executable_product(c++filt)
JLLWrappers.@declare_executable_product(elfedit)
JLLWrappers.@declare_executable_product(nm)
JLLWrappers.@declare_executable_product(objcopy)
JLLWrappers.@declare_executable_product(objdump)
JLLWrappers.@declare_executable_product(ranlib)
JLLWrappers.@declare_executable_product(readelf)
JLLWrappers.@declare_executable_product(strings)
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libbfd,
        "lib/libbfd.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libctf,
        "lib/libctf.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libopcodes,
        "lib/libopcodes.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        addr2line,
        "bin/addr2line",
    )

    JLLWrappers.@init_executable_product(
        ar,
        "bin/ar",
    )

    JLLWrappers.@init_executable_product(
        binutils_size,
        "bin/size",
    )

    JLLWrappers.@init_executable_product(
        binutils_strip,
        "bin/strip",
    )

    JLLWrappers.@init_executable_product(
        c++filt,
        "bin/c++filt",
    )

    JLLWrappers.@init_executable_product(
        elfedit,
        "bin/elfedit",
    )

    JLLWrappers.@init_executable_product(
        nm,
        "bin/nm",
    )

    JLLWrappers.@init_executable_product(
        objcopy,
        "bin/objcopy",
    )

    JLLWrappers.@init_executable_product(
        objdump,
        "bin/objdump",
    )

    JLLWrappers.@init_executable_product(
        ranlib,
        "bin/ranlib",
    )

    JLLWrappers.@init_executable_product(
        readelf,
        "bin/readelf",
    )

    JLLWrappers.@init_executable_product(
        strings,
        "bin/strings",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
