# Table of content
  |          Day          | Content                        |
  | --------------------- |:------------------------------:|
  | 3/25/2022             | [Detail](#325)                 |
  | 3/28/2022             | [Detail](#328)                 |
  | 3/29/2022             | [Detail](#329)                 |

### (3/25/2022) <a name="325"></a>

[Ruby in twenty Minutes](https://www.ruby-lang.org/en/documentation/quickstart/)


![Example1](https://user-images.githubusercontent.com/101615624/160316287-804efc01-29b1-41ea-8689-53f868585ad5.png)

![Example2](https://user-images.githubusercontent.com/101615624/160317856-00c7e291-0e1f-45e4-90db-030318bd3235.png)

![example3](https://user-images.githubusercontent.com/101615624/160321078-e58e24ba-e239-4233-b881-74c5243bf809.png)

### (3/28/2022) <a name="328"></a>
[Code example]()

1. **Datatype:**
- Number (integer and float)
- **Boolean**
- **String**
```ruby:
"hello".capitalize   #=> "Hello"
"HELLO".downcase     #=> "hello"
"hello".center(9)    #=> "  hello  "
"  hello  ".strip    #=> "hello"

"hello world".split(" ")   #=> ["hello", "world"]
```

```ruby:
# Replace one character with another
"noob".gsub("o","0")   #=> "n00b"

# (Advanced) Replace a regular expression
"Ruby really rocks".gsub(/[aieou]/,'')   #=> "Rby rlly rcks"
```

[String docs](https://ruby-doc.org/core-2.7.0/String.html)


![String](https://user-images.githubusercontent.com/101615624/160325736-61753303-3de8-43ef-a5e8-7ecca6bea35f.png)


- **Hashes:** A hash assign its values to its key. Value to a key is assigned by => sign. A key pair is separated with a comma between them and all the pairs are enclosed within curly braces. A hash in Ruby is like an object literal in JavaScript or an associative array in PHP. They’re made similarly to arrays.e. A trailing comma is ignored.
```ruby:

H = Hash["a" => 100, "b" => 200]

puts "#{H['a']}"
puts "#{H['b']}"
```
You can use any Ruby object as a key or value, even an array, so the following example is a valid one −
```ruby:
[1,"jan"] => "January"
```
![Screenshot from 2022-03-28 15-32-09](https://user-images.githubusercontent.com/101615624/160358529-ff086465-220e-48a8-a863-2360f698981d.png)

[Hash method](https://www.tutorialspoint.com/ruby/ruby_hashes.htm)

- **Arrays:**  An array stores data or list of data. It can contain all types of data. Data in an array are separated by comma in between them and are enclosed within square bracket.The position of elements in an array starts with 0. A trailing comma is ignored.

- **Symbols:** Symbols are light-weight strings. A symbol is preceded by a colon (:). They are used instead of strings because they can take up much less memory. Symbols have better performance.

2. **Types of Variable:** [Link](https://www.geeksforgeeks.org/ruby-types-of-variables/?ref=lbp)
- Local variables. ( _ or lowercase letter )
- Instant variables. ( @ )
- Class variables. ( @@ )
- Global variables. ($)
- Constrant. ( uppercase letter )
- Pseudo-variables.
- ![Screenshot from 2022-03-28 15-42-34](https://user-images.githubusercontent.com/101615624/160360411-703b986c-f168-492d-ba31-da3bd5096315.png)

3. **IF...ELSE**
4. **Module** [Link](https://www.tutorialspoint.com/ruby/ruby_modules.htm)
(3/29/2022) <a name="329"></a>
- In Ruby, modules are somewhat similar to classes: they are things that hold methods, just like classes do. However, modules **can not be instantiated.** I.e., it is not possible to create objects from a module. And modules, unlike classes, therefore **do not have a method new.**
- With modules you can share methods between classes: Modules can be included into classes, and this makes their methods available on the class, just as if we’d copied and pasted these methods over to the class definition.
5. **Block, Proc, Lambda** [Link](https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/)

![Screenshot from 2022-03-29 17-21-31](https://user-images.githubusercontent.com/101615624/160590940-14c56469-2b7e-4c10-81db-6a7bd9060390.png)

- *Yield in block:*
