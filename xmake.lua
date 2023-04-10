set_languages("c++23")
add_rules("mode.debug")
set_toolchains("msvc")

add_repositories("MrowrLib https://github.com/MrowrLib/package-repo.git")

add_requires("spdlog")
add_requires("StringFormatting")
add_requires("Logging")

target("Memory")
    set_kind("headeronly")
    add_headerfiles("include/(**.h)")
    add_includedirs("include", {public = true})
    add_packages("StringFormatting", "Logging", {public = true})

target("Example")
    set_kind("binary")
    add_files("Example.cpp")
    add_deps("Memory")
    add_packages("spdlog")
