project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "imconfig.h",
        "imgui.cpp",
        "imgui.h",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",

        "../implot/implot.cpp",        
        "../implot/implot.h",
        "../implot/implot_demo.cpp",
        "../implot/implot_internal.h",
        "../implot/implot_items.cpp",


        "../imgui-node-editor/crude_json.cpp",
        "../imgui-node-editor/crude_json.h",
        "../imgui-node-editor/imgui_bezier_math.h",
        "../imgui-node-editor/imgui_bezier_math.inl",
        "../imgui-node-editor/imgui_canvas.cpp",
        "../imgui-node-editor/imgui_extra_math.h",
        "../imgui-node-editor/imgui_extra_math.inl",
        "../imgui-node-editor/imgui_node_editor.cpp",
        "../imgui-node-editor/imgui_node_editor.h",
        "../imgui-node-editor/imgui_node_editor_api.cpp",
        "../imgui-node-editor/imgui_node_editor_internal.h",
        "../imgui-node-editor/imgui_node_editor_internal.inl",

        "../ImGuizmo/GraphEditor.cpp",
        "../ImGuizmo/GraphEditor.h",
        "../ImGuizmo/ImCurveEdit.cpp",
        "../ImGuizmo/ImCurveEdit.h",
        "../ImGuizmo/ImGradient.cpp",
        "../ImGuizmo/ImGradient.h",
        "../ImGuizmo/ImGuizmo.cpp",
        "../ImGuizmo/ImGuizmo.h",
        "../ImGuizmo/ImSequencer.cpp",
        "../ImGuizmo/ImSequencer.h",
        "../ImGuizmo/ImZoomSlider.h"
    }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"