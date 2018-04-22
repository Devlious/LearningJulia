function to_rna(dna::AbstractString)
    if length(split(dna, r"A|C|G|T", keep=false)) >= 1
        return throw(ErrorException("Error"))
    else
        tmp = ""
        for i in dna
            if i == 'G'
                tmp = string(tmp, "C")
            elseif i == 'C'
                tmp = string(tmp, "G")
            elseif i == 'T'
                tmp = string(tmp, "A")
            elseif i == 'A'
                tmp = string(tmp, "U")
            end
        end
        return tmp
    end
end

to_rna("A")
