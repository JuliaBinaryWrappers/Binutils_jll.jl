# Pkg runs this with the `LOAD_PATH` of the process installing the JLL, which may
# not include the standard libraries (e.g. within `Pkg.test()`).
push!(Base.LOAD_PATH, dirname(@__DIR__), "@stdlib")

using TOML, Artifacts, Base.BinaryPlatforms

# Julia before v1.10 cannot parse riscv64 triplets, which Pkg passes when
# installing for a riscv64 platform.
if !haskey(BinaryPlatforms.arch_mapping, "riscv64")
    BinaryPlatforms.arch_mapping["riscv64"] = "(rv64|riscv64)"
end

include("./platform_augmentation.jl")
artifacts_toml = joinpath(dirname(@__DIR__), "Artifacts.toml")

# Get the target triplet from ARGS, if given (defaulting to the host triplet otherwise)
target_triplet = get(ARGS, 1, Base.BinaryPlatforms.host_triplet())

# Augment this platform object with any special tags we require
platform = augment_platform!(HostPlatform(parse(Platform, target_triplet)))

# Select all downloadable artifacts that match that platform
artifacts = select_downloadable_artifacts(artifacts_toml; platform, include_lazy=false)

# Output the result to `stdout` as a TOML dictionary
TOML.print(stdout, artifacts)
