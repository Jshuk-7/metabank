workspace "metabank"
    architecture "x64"
    configurations { "Debug", "Release", "Dist" }
    
    -- Workspace wide build options for MSVC
    filter "system:windows"
        buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

include "metabank/build-metabank.lua"
include "testbed/build-testbed.lua"