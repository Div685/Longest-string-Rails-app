module AlgosHelper
  def longest_string(string)
    return 0 if ['', nil].include?(string)

    map = Hash.new(0)
    n = string.length
    maxlen = 0
    start_point = 0
    start = 0

    i = 0
    while i < n
      if !map.include?(string[i])
        map[string[i]] = i

      elsif map[string[i]] >= start_point
        curr_len = i - start_point
        if maxlen < curr_len
          maxlen = curr_len
          start = start_point
        end
        start_point = map[string[i]] + 1
      end
      map[string[i]] = i
      i += 1
    end

    if maxlen < i - start_point
      maxlen = i - start_point
      start = start_point
    end
    "#{string[start...(start + maxlen)]} #{maxlen}"
  end
end
