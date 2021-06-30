module AlgosHelper
  def longest_string(string)
    return 0 if string == "" || string == nil
    map = Hash.new(0)
    n = string.length
    maxlen = 0
    start_point = 0
    start = 0
    
    i =0
    while (i < n)
        if !map.include?(string[i])
            map[string[i]] = i
        
        else
            if map[string[i]] >= start_point
                curr_len = i - start_point
                if maxlen < curr_len
                    maxlen = curr_len
                    start = start_point
                end
                start_point = map[string[i]] + 1
            end
        end
        map[string[i]] = i
        i += 1
    end
    
    if maxlen < i - start_point
        maxlen = i - start_point
        start = start_point
    end
    return "#{string[start...(start+maxlen)]} #{maxlen}"
  end
end
