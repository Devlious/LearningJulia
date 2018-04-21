function distance(s1::AbstractString, s2::AbstractString)
    count = 0
    if length(s1) != length(s2)
        return throw(ArgumentError("LOL"))
    else
        for i in 1:length(s1)
            println("$(s1[i]) == $(s2[i])")
            if s1[i] != s2[i]
                count += 1
            end
        end
        return count
    end

end
