# your code goes here
require "pry"
def begins_with_r(tools)
  tools.each do |word|
    if word[0] != "r"
      return false
    end
  end
  true
end

def contain_a(array)
  words = []
  array.each do |word|
    if word.include?("a")
      words << word
    end
  end
  words
end

def first_wa(array)
  array.each do |word|
    if word[0..1] == "wa"
      return word
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |ele|
    ele != ele.to_s
  end
end

def count_elements(array)
  results = []
  counter = 0
  array.each do |element|
    if !results.include?(element)
      results << element
      results[counter][:count] = array.count(element)
      array.delete_if do |same|
        same == element
      end
      counter += 1
      #binding.pry
    end
  end

  results
end

def merge_data(data1, data2)
  results = []
  i = 0

  while i < data1.length
    results[i] = data2[0].values[i]
    results[i][data1[i].keys[0]] = data1[i].values[0]
    #binding.pry
    i += 1
  end

  results
end

def find_cool(array)
  coolPeople = []
  array.each do |element|
    element.each do |characteristic, info|
      if characteristic == :temperature
        if info == "cool"
          coolPeople << element
        end
      end
    end
  end
  coolPeople
end

def organize_schools(hash)
  results = {}
  hash.each do |school, info|
    info.each do |key, value|
      if results[value] == nil
        results[value] = [school]
      else
        results[value] << school
      end
    end
  end
  results
end
