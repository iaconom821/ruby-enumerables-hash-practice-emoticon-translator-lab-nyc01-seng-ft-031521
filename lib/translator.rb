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
end

def get_japanese_emoticon(file, emoticon)
  library_hash = load_library(file)
  library_hash.each do |key|
    if library_hash[key]['english'] == emoticon
      return library_hash['japanese']
    end
  end
end

def get_english_meaning
  # code goes here
end