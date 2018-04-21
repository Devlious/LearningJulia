function count_nucleotides(strand::AbstractString)

    a = 0
    c = 0
    g = 0
    t = 0

    for i in strand
        if i == 'A'
            a += 1
        elseif i == 'C'
            c += 1
        elseif i == 'G'
            g += 1
        elseif i == 'T'
            t += 1
        else
            return throw(DomainError())
        end
    end
    return Dict( 'A' => a, 'C' => c, 'G' => g, 'T' => t)
end

count_nucleotides("GAGAGACGTT")
