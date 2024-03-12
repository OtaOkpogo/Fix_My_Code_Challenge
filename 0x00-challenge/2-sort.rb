###
#
# Sort integer arguments (ascending)
#
###

result = []
ARGV.each do |arg|
    # Skip if not an integer
    next if arg !~ /^-?\d+$/

    # Convert to integer
    i_arg = arg.to_i

    # Find the correct position to insert
    is_inserted = false
    i = 0
    l = result.size
    while !is_inserted && i < l do
        if result[i] <= i_arg
            i += 1
        else
            is_inserted = true
            break
        end
    end

    # Insert the integer at the correct position
    result.insert(i, i_arg) unless is_inserted
end

puts result
