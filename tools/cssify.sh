#! /bin/sh
# removes leading and trailing whitespace
# places opening brackets on the same line as the descriptor
# places closing brackets on their own line
# adds closing semicolon to any instructions that don't have it
# 

sed -e 's/^\s*$//' -e 's/{\(.\)/{\n\1/g' -e 's/\(.\)\n{\(.\)/\1{\n\2/' -e 's/\(.\)}/\1\n}/g' -e 's/;\(.\)/;\n\1/g' $1 | \
 sed -e 's/^\s*//g' -e 's/\s*$//g' -e '/^$/ d' | \
 sed -e :a -e '$!N;s/\n{/ {/;ta' -e 'P;D' | \
 sed '
    /{/,/}/ {
      /{/n # skip over the line that has the opening bracket
      /}/ !{ # and the line that has the closing bracket
        s/^/    /
      }  
    }
 ' | \
 sed '
    /{/,/}/ {
      /{/n # skip over the line that has the opening bracket
      /}/ !{ # and the line that has the closing bracket
        s/\([^;]\)$/\1;/
      }  
    }
 ' | \
 sed 's/:\([^ \t]\)/: \1/g' # space between colon and instruction