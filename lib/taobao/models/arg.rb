require 'taobao/model'

module Taobao
  class Arg < Model
    def self.elm_name
      "arg"
    end

    def self.attr_names
      [
       :name,
       :val
      ]
    end

    for a in attr_names
      attr_accessor a
    end

    def push_sym(stack)
      stack.push(:val=)
    end

  end
end
