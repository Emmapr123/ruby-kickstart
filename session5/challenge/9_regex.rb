# This challenge requires that you've completed challenges 7 and 8

# The Green Thumb Nursery calls you up "hey, remember that list of trees we sent you?"
# "Sure" you reply, fondly reveling in the brillinace of your regular expression that
# parsed it. "We want you to put it in a webpage for us" they tell you.
#
# Given the same inputs as challenge 7, output results in string format like this:
#   <!doctype html>
#   <html>
#     <head>
#       <title>Green Thumb Nursery</title>
#     </head>
#     <body>
#       <h1>Catalog</h1>
#       <table>
#         <tr>
#           <th>Type of tree</th>
#           <th>Size of the tree</th>
#           <th>Price of the tree</th>
#         </tr>
#
#         <!-- Put records here -->
#         <tr>
#           <td>American Redbud Tree</td>
#           <td>1 to 2 feet</td>
#           <td>$5.95</td>
#         </tr>
#         <!-- etc -->
#       </table>
#     </body>
#   </html>

require_relative './7_regex.rb'

def trees_to_html(trees)
  output = "
  <!doctype html>
     <html>
       <head>
         <title>Green Thumb Nursery</title>
       </head>
       <body>
         <h1>Catalog</h1>
         <table>
         <tr>
            <td>Type of tree</td>
            <td>Size of the tree</td>
            <td>Price of the tree</td>
         </tr>
         "

  tree_parser(trees).each { |tree, number, price|
    output <<  "<tr>
            <td>#{tree}</td>
            <td>#{number}</td>
            <td>#{price}</td>
            </tr>
            " }

    output << "
          </table>
        </body>
      </html>
    "

    output
end
