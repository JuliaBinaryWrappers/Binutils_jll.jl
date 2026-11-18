using Base.BinaryPlatforms
function augment_platform!(p::Platform)
    if !haskey(p, "target_arch")
        for tag in ("arch", "os", "libc", "call_abi")
            if haskey(p, tag)
                p["target_$(tag)"] = p[tag]
            end
        end
    end
    return p
end

