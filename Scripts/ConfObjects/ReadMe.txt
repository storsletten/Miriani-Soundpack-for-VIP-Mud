  Conf Manager objects

The different Conf Manager object types are:
  A: An alias
  B: A boolean value
  C: A list of values where only one of them can be selected
  E: An executable object
  M: A regular menu
  N: A numeric value
  P: A percentage value
  S: A string value

The syntax for alias objects are:
  A:<path to a conf manager object>
The syntax for B objects arE:
  B:<variable name>:<menu text>[
  <output text when setting the option to ON>:<output text when setting the option to OFF>]
The syntax for E objects are:
  E:[<path to a conf manager object>]
  <code to be executed>
  [...]
The syntax for M objects are:
  M:<menu title>
  <object reference word>[:<entry text>]
  [...]
The syntax for C objects are:
  C:<menu title>
  [<numeric offset value>:]<variable name>:<output text>
  [<internal value>:]<entry text>
  [...]
The syntax for N, P, and S objects are:
  <object type>:<variable name>:<menu text>[
  <output text>]
 Notes:
<output text> can contain the following formatters:
  $V = The new value
<code to be executed> in E objects can span over multiple lines.
<internal value> fields in C objects will be ignored if setting a <numeric offset value>.

Important notes:
  Never put any characters in front of the object type in any objects.
  Type C and M objects must end with a blank line, and can not have any empty lines before that.
