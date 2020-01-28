require 'pry'

def my_all?(collection)
  if block_given?
    final_result = true
    i = 0
    while i < collection.size do
      final_result = yield(collection[i])
      i += 1
    end
    return final_result
  else
    return nil
  end
end