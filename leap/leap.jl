function is_leap_year(year::Int)
    if year % 400 == 0
        return true
    elseif year % 100 == 0
        return false
    elseif year % 4 == 0
        return true
    end
end

is_leap_year(2015)
