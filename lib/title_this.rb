# frozen_string_literal: true

require "title_this/version"

module TitleThis
  class Error < StandardError; end
  def self.string(string)
    string.split.map(&:capitalize).join(' ')
  end

  def self.array(array)
    array.map(&:capitalize).join(' ')
  end

  def self.hash(hash, key)
    return nil unless hash[key]

    hash[key].split.map(&:capitalize).join(' ')
  end
end
