# require modules here
require 'yaml'
require 'pry'

def load_library(file)
  library = YAML.load_file(file)
  library_hash = library.each_with_object({}) do |(key, value), new_hash|
    new_hash[key] = {
      'english' => value[0],
      'japanese' => value[1]
    }
    end
  library_hash
  binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end