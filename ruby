# Ruby RegEx
#######################################################################
# https://rubular.com/
\A        # Start of string
\z        # End of string
\s        # Any whitespace character
\S        # Any non-whitespace character
\d        # Any digit
\D        # Any non-digit
\w        # Any word character (letter, number, underscore)
\W        # Any non-word character
\b        # Any word boundary

# POSIX classes [[:class_name:]]
alnum   # letters and digits
alpha   # letters
ascii   # ASCII codes 0-127
blank   # space or tab
cntrl   # control chars
digit   # decimal digits
graph   # visible chars (not space)
lower   # lowercase letters
print   # printable (visible) chars
punct   # visible punctuation chars
space   # any whitespace
upper   # uppercase letters
word    # word chars (letter, number, underscore)
xdigit  # hexadecimal digits


# options (after the last slash)
i # case insensitive
m # make dot match newlines 
x # ignore whitespace in regex
o # perform #{...} substitutions only once

# Pry REPL - https://pry.github.io/
#######################################################################
# install
gem install pry

# make irb run Pry
# put this in ~/.irbc
######################
require 'rubygems'
require 'pry'
Pry.start
exit
######################

# performance proof of different string concatenation methods
#!/usr/bin/env ruby

require 'benchmark'

Benchmark.bmbm do |x|
  x.report('+= :') do
    s = ""
    10000.times { s += "something " }
  end
  x.report('<< :') do
    s = ""
    10000.times { s << "something " }
  end
end

