using JuliaProjectTemplate
using Documenter

DocMeta.setdocmeta!(JuliaProjectTemplate, :DocTestSetup, :(using JuliaProjectTemplate); recursive=true)

makedocs(;
    modules=[JuliaProjectTemplate],
    authors="Javier González Monge",
    repo="https://github.com/RayleighLord/JuliaProjectTemplate.jl/blob/{commit}{path}#{line}",
    sitename="JuliaProjectTemplate.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://RayleighLord.github.io/JuliaProjectTemplate.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/RayleighLord/JuliaProjectTemplate.jl",
    devbranch="main",
)
