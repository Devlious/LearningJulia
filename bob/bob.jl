function bob(stimulus::AbstractString)

    # If alpha in string, then select all and check if uppercase
    any(isalpha, stimulus) && all(isupper, filter(isalpha, stimulus)) && return "Whoa, chill out!"

    # Remove the special characters and check if is empty
    isempty(strip(stimulus)) && return "Fine. Be that way!"

    # Remove the special characters and check if the last is '?'
    endswith(strip(stimulus), '?') && return "Sure."

    return "Whatever."

end
