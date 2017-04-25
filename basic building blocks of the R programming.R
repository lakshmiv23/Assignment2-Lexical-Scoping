In this lesson, we will explore some basic building blocks of the R programming language.


If at any point you'd like more information on a particular topic related to R, you can type help.start() at the prompt, which will open a menu of resources (either within RStudio or your default web browser, depending on your setup). Alternatively, a simple web search often yields the answer you're looking for.

In its simplest form, R can be used as an interactive calculator. Type 5 + 7 and press Enter.

R simply prints the result of 12 by default. However, R is a programming language and often the reason we use a programming language as opposed to a calculator is to automate some process or avoid unnecessary repetition.

In this case, we may want to use our result from above in a second calculation. Instead of retyping 5 + 7 every time we need it, we can just create a new variable that stores the result.

The way you assign a value to a variable in R is by using the assignment operator, which is just a 'less than' symbol followed by a 'minus' sign. It looks like this: <-
  
  Think of the assignment operator as an arrow. You are assigning the value on the right side of the arrow to the variable name on the left side of the arrow.

To assign the result of 5 + 7 to a new variable called x, you type

x <- 5 + 7
This can be read as 'x gets 5 plus 7'. Give it a try now.


You'll notice that R did not print the result of 12 this time. When you use the assignment operator, R assumes that you don't want to see the result immediately, but rather that you intend to use the result for something else later on.

To view the contents of the variable x, just type x and press Enter. Try it now.

Now, store the result of x - 3 in a new variable called y.

What is the value of y? Type y to find out.

Now, let's create a small collection of numbers called a vector. Any object that contains data is called a data structure and numeric vectors are the simplest type of data structure in R. In fact, even a single number is considered a vector of length one.

The easiest way to create a vector is with the c() function, which stands for 'concatenate' or 'combine'. To create a vector containing the numbers 1.1, 9, and 3.14, type

c(1.1, 9, 3.14)
Try it now and store the result in a variable called z.


2 Lesson
Please choose a lesson, or type 0 to return to course menu.
 1: Basic Building Blocks      2: Workspace and Files     
3: Sequences of Numbers       4: Vectors                 
5: Missing Values             6: Subsetting Vectors      
7: Matrices and Data Frames   8: Logic                   
9: Functions                 10: lapply and sapply       
11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times         
15: Base Graphics             
Selection: 2
|                                                          |   0%
| In this lesson, you'll learn how to examine your local workspace
| in R and begin to explore the relationship between your workspace
| and the file system of your machine.
...
|=                                                         |   2%
| Because different operating systems have different conventions
| with regards to things like file paths, the outputs of these
| commands may vary across machines.
...
|===                                                       |   5%
| However it's important to note that R provides a common API (a
| common set of commands) for interacting with files, that way your
| code will work across different kinds of computers.
...
|====                                                      |   7%
| Let's jump right in so you can get a feel for how these special
| functions work!
  ...
|======                                                    |  10%
| Determine which directory your R session is using as its current
| working directory using getwd().
> getwd()
[1] "C:/Users/Kang Lu/Documents"
| You got it!
  |=======                                                   |  12%
| List all the objects in your local workspace using ls().
> ls()
[1] "beer"        "beer.counts" "data"        "my_char"    
[5] "my_data"     "my_div"      "my_na"       "my_name"    
[9] "my_seq"      "my_sqrt"     "num_vect"    "old.dir"    
[13] "sals"        "scores"      "tf"          "x"          
[17] "y"           "z"          
| You got it!
  |========                                                  |  14%
| Some R commands are the same as their equivalents commands on
| Linux or on a Mac. Both Linux and Mac operating systems are based
| on an operating system called Unix. It's always a good idea to
| learn more about Unix!
...
|==========                                                |  17%
| Assign 9 to x using x <- 9.
> x<-9
| That's a job well done!
  |===========                                               |  19%
| Now take a look at objects that are in your workspace using ls().
> ls()
[1] "beer"        "beer.counts" "data"        "my_char"    
[5] "my_data"     "my_div"      "my_na"       "my_name"    
[9] "my_seq"      "my_sqrt"     "num_vect"    "old.dir"    
[13] "sals"        "scores"      "tf"          "x"          
[17] "y"           "z"          
| Excellent work!
  |============                                              |  21%
| List all the files in your working directory using list.files()
| or dir().
> list.files()
[1] "Adobe"                             
[2] "Custom Office Templates"           
[3] "desktop.ini"                       
[4] "EasyBCD_Backup (2016-03-28).bcd"   
[5] "eTicket Itinerary and Receipt.oxps"
[6] "GitHub"                            
[7] "My Cheat Tables"                   
[8] "My Games"                          
[9] "My IML Studio Files"               
[10] "My Music"                          
[11] "My Pictures"                       
[12] "My Videos"                         
[13] "R"                                 
[14] "Tencent Files"                     
[15] "WeChat Files"                      
| All that hard work is paying off!
  |==============                                            |  24%
| As we go through this lesson, you should be examining the help
| page for each new function. Check out the help page for
| list.files with the command ?list.files.
> ?list.files
| You nailed it! Good job!
  |===============                                           |  26%
| One of the most helpful parts of any R help file is the See Also
| section. Read that section for list.files. Some of these
| functions may be used in later portions of this lesson.
...
|=================                                         |  29%
| Using the args() function on a function name is also a handy way
| to see what arguments a function can take.
...
|==================                                        |  31%
| Use the args() function to determine the arguments to
| list.files().
> args(list.files)
function (path = ".", pattern = NULL, all.files = FALSE, full.names = FALSE, 
          recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE, 
          no.. = FALSE) 
  NULL
| You got it!
  |===================                                       |  33%
| Assign the value of the current working directory to a variable
| called "old.dir".
> old.dir<-getwd()
| You got it right!
  |=====================                                     |  36%
| We will use old.dir at the end of this lesson to move back to the
| place that we started. A lot of query functions like getwd() have
| the useful property that they return the answer to the question
| as a result of the function.
...
|======================                                    |  38%
| Use dir.create() to create a directory in the current working
| directory called "testdir".
> dir.create("testdir")
| You nailed it! Good job!
  |=======================                                   |  40%
| We will do all our work in this new directory and then delete it
| after we are done. This is the R analog to "Take only pictures,
| leave only footprints."
...
|=========================                                 |  43%
| Set your working directory to "testdir" with the setwd() command.
> setwd("testdir")
| You nailed it! Good job!
  |==========================                                |  45%
| In general, you will want your working directory to be someplace
| sensible, perhaps created for the specific project that you are
| working on. In fact, organizing your work in R packages using
| RStudio is an excellent option. Check out RStudio at
| http://www.rstudio.com/
  ...
|============================                              |  48%
| Create a file in your working directory called "mytest.R" using
| the file.create() function.
> file.create("mytest.R")
[1] TRUE
| You are really on a roll!
  |=============================                             |  50%
| This should be the only file in this newly created directory.
| Let's check this by listing all the files in the current
| directory.
> list.files()
[1] "mytest.R"
| Great job!
|==============================                            |  52%
| Check to see if "mytest.R" exists in the working directory using
| the file.exists() function.
> file.exists("mytest.R")
[1] TRUE
| Keep working like that and you'll get there!
  |================================                          |  55%
| These sorts of functions are excessive for interactive use. But,
| if you are running a program that loops through a series of files
| and does some processing on each one, you will want to check to
| see that each exists before you try to process it.
...
|=================================                         |  57%
| Access information about the file "mytest.R" by using
| file.info().
> file.info("mytest.R")
size isdir mode               mtime               ctime
mytest.R    0 FALSE  666 2016-07-14 16:20:08 2016-07-14 16:20:08
atime exe
mytest.R 2016-07-14 16:20:08  no
| Great job!
  |===================================                       |  60%
| You can use the $ operator --- e.g., file.info("mytest.R")$mode
| --- to grab specific items.
...
|====================================                      |  62%
| Change the name of the file "mytest.R" to "mytest2.R" by using
| file.rename().
> file.rename("mytest.R","mytest2.R")
[1] TRUE
| You are amazing!
  |=====================================                     |  64%
| Your operating system will provide simpler tools for these sorts
| of tasks, but having the ability to manipulate files
| programatically is useful. You might now try to delete mytest.R
| using file.remove('mytest.R'), but that won't work since mytest.R
| no longer exists. You have already renamed it.
... 
|=======================================                   |  67%
| Make a copy of "mytest2.R" called "mytest3.R" using file.copy().
> file.copy("mytest2.R","mytest3.R")
[1] TRUE
| Excellent job!
|========================================                  |  69%
| You now have two files in the current directory. That may not
| seem very interesting. But what if you were working with dozens,
| or millions, of individual files? In that case, being able to
| programatically act on many files would be absolutely necessary.
| Don't forget that you can, temporarily, leave the lesson by
| typing play() and then return by typing nxt().
...
|=========================================                 |  71%
| Provide the relative path to the file "mytest3.R" by using
| file.path().
> file.path("mytest3.R")
[1] "mytest3.R"
| Great job!
  |===========================================               |  74%
| You can use file.path to construct file and directory paths that
| are independent of the operating system your R code is running
| on. Pass 'folder1' and 'folder2' as arguments to file.path to
| make a platform-independent pathname.
> file.path('folder1','folder2')
[1] "folder1/folder2"
| Keep working like that and you'll get there!
|============================================              |  76%
| Take a look at the documentation for dir.create by entering
| ?dir.create . Notice the 'recursive' argument. In order to create
| nested directories, 'recursive' must be set to TRUE.
> ?dir.create
| You're the best!
  |==============================================            |  79%
| Create a directory in the current working directory called
| "testdir2" and a subdirectory for it called "testdir3", all in
| one command by using dir.create() and file.path().
> dir.create(file.path('testdir2','testdir3'), recursive = TRUE)
| Excellent work!
  |===============================================           |  81%
| To delete a directory you need to use the recursive = TRUE
| argument with the function unlink(). If you don't use recursive =
| TRUE, R is concerned that you're unaware that you're deleting a
| directory and all of its contents. R reasons that, if you don't
| specify that recursive equals TRUE, you don't know that something
| is in the directory you're trying to delete. R tries to prevent
| you from making a mistake.
...
|================================================          |  83%
| Delete the "testdir2" directory that you created by using
| unlink().
> unlink("testdir2", recursive =TRUE)
| That's correct!
|==================================================        |  86%
| Why is this command named "unlink" rather than something more
| sensible like "dir.delete" or "dir.remove"? Mainly, history.
| unlink is the traditional Unix command for removing directories.
...
|===================================================       |  88%
| Go back to your original working directory using setwd(). (Recall
| that we created the variable old.dir with the full path for the
| orginal working directory at the start of these questions.)
> setwd(old.dir)
| Nice work!
|====================================================      |  90%
| It is often helpful to save the settings that you had before you
| began an analysis and then go back to them at the end. This trick
| is often used within functions; you save, say, the par() settings
| that you started with, mess around a bunch, and then set them
| back to the original values at the end. This isn't the same as
| what we have done here, but it seems similar enough to mention.
...
|======================================================    |  93%
| Delete the 'testdir' directory that you just left (and everything
                                                     | in it)
> unlink('testdir',recursive =TRUE)
| You are quite good my friend!
  |=======================================================   |  95%
| Take nothing but results. Leave nothing but assumptions. That
| sounds like 'Take nothing but pictures. Leave nothing but
| footprints.' But it makes no sense! Surely our readers can come
| up with a better motto . . .
...
|========================================================= |  98%
| In this lesson, you learned how to examine your R workspace and
| work with the file system of your machine from within R. Thanks
| for playing!
  ...
|==========================================================| 100%

3 Lesson - swirl, sequences of numbers 

| Please choose a course, or type 0 to exit swirl.
1: R Programming
2: Take me to the swirl course repository!
  Selection: 1
| Please choose a lesson, or type 0 to return to course menu.
1: Basic Building Blocks      2: Workspace and Files     
3: Sequences of Numbers       4: Vectors                 
5: Missing Values             6: Subsetting Vectors      
7: Matrices and Data Frames   8: Logic                   
9: Functions                 10: lapply and sapply       
11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times         
15: Base Graphics             
Selection: 3
|                                                          |   0%
| In this lesson, you'll learn how to create sequences of numbers
| in R.
...
|===                                                       |   4%
| The simplest way to create a sequence of numbers in R is by using
| the `:` operator. Type 1:20 to see how it works.
> 1:20
[1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
| Keep up the great work!
|=====                                                     |   9%
| That gave us every integer between (and including) 1 and 20. We
| could also use it to create a sequence of real numbers. For
| example, try pi:10.
> pi:10
[1] 3.141593 4.141593 5.141593 6.141593 7.141593 8.141593 9.141593
| You are amazing!
|========                                                  |  13%
| The result is a vector of real numbers starting with pi
| (3.142...) and increasing in increments of 1. The upper limit of
| 10 is never reached, since the next number in our sequence would
| be greater than 10.
...
|==========                                                |  17%
| What happens if we do 15:1? Give it a try to find out.
> 15:1
[1] 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1
| Excellent job!
|=============                                             |  22%
| It counted backwards in increments of 1! It's unlikely we'd want
| this behavior, but nonetheless it's good to know how it could
| happen.
...
|===============                                           |  26%
| Remember that if you have questions about a particular R
| function, you can access its documentation with a question mark
| followed by the function name: ?function_name_here. However, in
| the case of an operator like the colon used above, you must
| enclose the symbol in backticks like this: ?`:`. (NOTE: The
                                                    | backtick (`) key is generally located in the top left corner of a
                                                    | keyboard, above the Tab key. If you don't have a backtick key,
                                                    | you can use regular quotes.)
                                                    ...
                                                    |==================                                        |  30%
                                                    | Pull up the documentation for `:` now.
                                                    > ?`:`
                                                    | Excellent work!
                                                    |====================                                      |  35%
                                                    | Often, we'll desire more control over a sequence we're creating
                                                    | than what the `:` operator gives us. The seq() function serves
                                                    | this purpose.
                                                    ...
                                                    |=======================                                   |  39%
                                                    | The most basic use of seq() does exactly the same thing as the
                                                    | `:` operator. Try seq(1, 20) to see this.
                                                    > seq(1,20)
                                                    [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
                                                    | You nailed it! Good job!
                                                    |=========================                                 |  43%
                                                    | This gives us the same output as 1:20. However, let's say that
                                                    | instead we want a vector of numbers ranging from 0 to 10,
                                                    | incremented by 0.5. seq(0, 10, by=0.5) does just that. Try it
                                                    | out.
                                                    > seq(0,10,by=0.5)
                                                    [1]  0.0  0.5  1.0  1.5  2.0  2.5  3.0  3.5  4.0  4.5  5.0  5.5
                                                    [13]  6.0  6.5  7.0  7.5  8.0  8.5  9.0  9.5 10.0
                                                    | You got it!
                                                      |============================                              |  48%
                                                    | Or maybe we don't care what the increment is and we just want a
                                                    | sequence of 30 numbers between 5 and 10. seq(5, 10, length=30)
                                                    | does the trick. Give it a shot now and store the result in a new
                                                    | variable called my_seq.
                                                    > my_seq<-seq(5,10,length=30)
                                                    | Excellent job!
                                                    |==============================                            |  52%
                                                    | To confirm that my_seq has length 30, we can use the length()
                                                    | function. Try it now.
                                                    > length(my_seq)
                                                    [1] 30
                                                    | Your dedication is inspiring!
                                                    |=================================                         |  57%
                                                    | Let's pretend we don't know the length of my_seq, but we want to
                                                    | generate a sequence of integers from 1 to N, where N represents
                                                    | the length of the my_seq vector. In other words, we want a new
                                                    | vector (1, 2, 3, ...) that is the same length as my_seq.
                                                    ...
                                                    |===================================                       |  61%
                                                    | There are several ways we could do this. One possibility is to
                                                    | combine the `:` operator and the length() function like this:
                                                    | 1:length(my_seq). Give that a try.
                                                    > 1:length(my_seq)
                                                    [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21
                                                    [22] 22 23 24 25 26 27 28 29 30
                                                    | Your dedication is inspiring!
                                                    |======================================                    |  65%
                                                    | Another option is to use seq(along.with = my_seq). Give that a
                                                    | try.
                                                    > seq(along.with = my_seq)
                                                    [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21
                                                    [22] 22 23 24 25 26 27 28 29 30
                                                    | You are quite good my friend!
                                                    |========================================                  |  70%
                                                    | However, as is the case with many common tasks, R has a separate
                                                    | built-in function for this purpose called seq_along(). Type
                                                    | seq_along(my_seq) to see it in action.
                                                    > seq_along(my_seq)
                                                    [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21
                                                    [22] 22 23 24 25 26 27 28 29 30
                                                    | Excellent work!
                                                    |===========================================               |  74%
                                                    | There are often several approaches to solving the same problem,
                                                    | particularly in R. Simple approaches that involve less typing are
                                                    | generally best. It's also important for your code to be readable,
                                                    | so that you and others can figure out what's going on without too
                                                    | much hassle.
                                                    ...
                                                    |=============================================             |  78%
                                                    | If R has a built-in function for a particular task, it's likely
                                                    | that function is highly optimized for that purpose and is your
                                                    | best option. As you become a more advanced R programmer, you'll
                                                    | design your own functions to perform tasks when there are no
                                                    | better options. We'll explore writing your own functions in
                                                    | future lessons.
                                                    ...
                                                    |================================================          |  83%
                                                    | One more function related to creating sequences of numbers is
                                                    | rep(), which stands for 'replicate'. Let's look at a few uses.
                                                    ...
                                                    |==================================================        |  87%
                                                    | If we're interested in creating a vector that contains 40 zeros,
                                                    | we can use rep(0, times = 40). Try it out.
                                                    > rep(0, times =40)
                                                    [1] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
                                                    [33] 0 0 0 0 0 0 0 0
                                                    | You are amazing!
                                                      |=====================================================     |  91%
                                                    | If instead we want our vector to contain 10 repetitions of the
                                                    | vector (0, 1, 2), we can do rep(c(0, 1, 2), times = 10). Go
                                                    | ahead.
                                                    > rep(c(0,1,2),times=10)
                                                    [1] 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2
                                                    | You nailed it! Good job!
                                                      |=======================================================   |  96%
                                                    | Finally, let's say that rather than repeating the vector (0, 1,
                                                    | 2) over and over again, we want our vector to contain 10 zeros,
                                                    | then 10 ones, then 10 twos. We can do this with the `each`
                                                    | argument. Try rep(c(0, 1, 2), each = 10).
                                                    > rep(c(0,1,2),each=10)
                                                    [1] 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2
                                                    | You are amazing!
                                                    |==========================================================| 100%



swirl Lesson 4 - Vectors
| Please choose a course, or type 0 to exit swirl.
1: R Programming
                                                    2: Take me to the swirl course repository!
                                                    Selection: 1
                                                    | Please choose a lesson, or type 0 to return to course menu.
                                                    1: Basic Building Blocks      2: Workspace and Files     
                                                    3: Sequences of Numbers       4: Vectors                 
                                                    5: Missing Values             6: Subsetting Vectors      
                                                    7: Matrices and Data Frames   8: Logic                   
                                                    9: Functions                 10: lapply and sapply       
                                                    11: vapply and tapply         12: Looking at Data         
                                                    13: Simulation                14: Dates and Times         
                                                    15: Base Graphics             
                                                    Selection: 4
                                                    |                                                          |   0%
                                                    | The simplest and most common data structure in R is the vector.
                                                    ...
                                                    |==                                                        |   3%
                                                    | Vectors come in two different flavors: atomic vectors and lists.
                                                    | An atomic vector contains exactly one data type, whereas a list
                                                    | may contain multiple data types. We'll explore atomic vectors
                                                    | further before we get to lists.
                                                    ...
                                                    |===                                                       |   5%
                                                    | In previous lessons, we dealt entirely with numeric vectors,
                                                    | which are one type of atomic vector. Other types of atomic
                                                    | vectors include logical, character, integer, and complex. In this
                                                    | lesson, we'll take a closer look at logical and character
                                                    | vectors.
                                                    ...
                                                    |=====                                                     |   8%
                                                    | Logical vectors can contain the values TRUE, FALSE, and NA (for
                                                    | 'not available'). These values are generated as the result of
                                                    | logical 'conditions'. Let's experiment with some simple
                                                    | conditions.
                                                    ...
                                                    |======                                                    |  11%
                                                    | First, create a numeric vector num_vect that contains the values
                                                    | 0.5, 55, -10, and 6.
                                                    > num_vect<-c(0.5,55,-10,6)
                                                    | Excellent work!
                                                      |========                                                  |  13%
                                                    | Now, create a variable called tf that gets the result of num_vect
                                                    | < 1, which is read as 'num_vect is less than 1'.
                                                    > tf<- num_vect<1
                                                    | You nailed it! Good job!
                                                      |=========                                                 |  16%
                                                    | What do you think tf will look like?
                                                    1: a vector of 4 logical values
                                                    2: a single logical value
                                                    Selection: 1
                                                    | You got it!
                                                      |===========                                               |  18%
                                                    | Print the contents of tf now.
                                                    > tf
                                                    [1]  TRUE FALSE  TRUE FALSE
                                                    | You are amazing!
                                                      |============                                              |  21%
                                                    | The statement num_vect < 1 is a condition and tf tells us whether
                                                    | each corresponding element of our numeric vector num_vect
                                                    | satisfies this condition.
                                                    ...
                                                    |==============                                            |  24%
                                                    | The first element of num_vect is 0.5, which is less than 1 and
                                                    | therefore the statement 0.5 < 1 is TRUE. The second element of
                                                    | num_vect is 55, which is greater than 1, so the statement 55 < 1
                                                    | is FALSE. The same logic applies for the third and fourth
                                                    | elements.
                                                    ...
                                                    |===============                                           |  26%
                                                    | Let's try another. Type num_vect >= 6 without assigning the
                                                    | result to a new variable.
                                                    > num_vect >= 6
                                                    [1] FALSE  TRUE FALSE  TRUE
                                                    | All that hard work is paying off!
                                                    |=================                                         |  29%
                                                    | This time, we are asking whether each individual element of
                                                    | num_vect is greater than OR equal to 6. Since only 55 and 6 are
                                                    | greater than or equal to 6, the second and fourth elements of the
                                                    | result are TRUE and the first and third elements are FALSE.
                                                    ...
                                                    |==================                                        |  32%
                                                    | The `<` and `>=` symbols in these examples are called 'logical
                                                    | operators'. Other logical operators include `>`, `<=`, `==` for
                                                    | exact equality, and `!=` for inequality.
                                                    ...
                                                    |====================                                      |  34%
                                                    | If we have two logical expressions, A and B, we can ask whether
                                                    | at least one is TRUE with A | B (logical 'or' a.k.a. 'union') or
                                                    | whether they are both TRUE with A & B (logical 'and' a.k.a.
                                                    | 'intersection'). Lastly, !A is the negation of A and is TRUE when
                                                    | A is FALSE and vice versa.
                                                    ...
                                                    |=====================                                     |  37%
                                                    | It's a good idea to spend some time playing around with various
                                                    | combinations of these logical operators until you get comfortable
                                                    | with their use. We'll do a few examples here to get you started.
                                                    ...
                                                    |=======================                                   |  39%
                                                    | Try your best to predict the result of each of the following
                                                    | statements. You can use pencil and paper to work them out if it's
                                                    | helpful. If you get stuck, just guess and you've got a 50% chance
                                                    | of getting the right answer!
                                                    ...
                                                    |========================                                  |  42%
                                                    | (3 > 5) & (4 == 4)
                                                    1: TRUE
                                                    2: FALSE
                                                    Selection: 2
                                                    | You're the best!
                                                      |==========================                                |  45%
                                                    | (TRUE == TRUE) | (TRUE == FALSE)
                                                    1: TRUE
                                                    2: FALSE
                                                    Selection: 1
                                                    | You are really on a roll!
                                                      |===========================                               |  47%
                                                    | ((111 >= 111) | !(TRUE)) & ((4 + 1) == 5)
                                                    1: TRUE
                                                    2: FALSE
                                                    Selection: 1
                                                    | You got it right!
                                                      |=============================                             |  50%
                                                    | Don't worry if you found these to be tricky. They're supposed to
                                                    | be. Working with logical statements in R takes practice, but your
                                                    | efforts will be rewarded in future lessons (e.g. subsetting and
                                                                                                  | control structures).
                                                    ...
                                                    |===============================                           |  53%
                                                    | Character vectors are also very common in R. Double quotes are
                                                    | used to distinguish character objects, as in the following
                                                    | example.
                                                    ...
                                                    |================================                          |  55%
                                                    | Create a character vector that contains the following words:
                                                      | "My", "name", "is". Remember to enclose each word in its own set
                                                    | of double quotes, so that R knows they are character strings.
                                                    | Store the vector in a variable called my_char.
                                                    > my_char <- c("my","name","is")
                                                    | One more time. You can do it! Or, type info() for more options.
                                                    | Type my_char <- c("My", "name", "is") to create a new variable
                                                    | called my_char that contains a character vector of length 3. Make
                                                    | sure that the commas separating the words are OUTSIDE of the
                                                    | double quotes, or else R thinks the commas are part of the words.
                                                    > my_char <- c("My","name","is")
                                                    | Great job!
                                                      |==================================                        |  58%
                                                    | Print the contents of my_char to see what it looks like.
                                                    > my_char
                                                    [1] "My"   "name" "is"  
                                                    | You are quite good my friend!
                                                      |===================================                       |  61%
                                                    | Right now, my_char is a character vector of length 3. Let's say
                                                    | we want to join the elements of my_char together into one
                                                    | continuous character string (i.e. a character vector of length
                                                    | 1). We can do this using the paste() function.
                                                    ...
                                                    |=====================================                     |  63%
                                                    | Type paste(my_char, collapse = " ") now. Make sure there's a
                                                    | space between the double quotes in the `collapse` argument.
                                                    | You'll see why in a second.
                                                    > paste(my_char, collapse = " ")
                                                    [1] "My name is"
                                                    | You are really on a roll!
                                                    |======================================                    |  66%
                                                    | The `collapse` argument to the paste() function tells R that when
                                                    | we join together the elements of the my_char character vector,
                                                    | we'd like to separate them with single spaces.
                                                    ...
                                                    |========================================                  |  68%
                                                    | It seems that we're missing something.... Ah, yes! Your name!
                                                    ...
                                                    |=========================================                 |  71%
                                                    | To add (or 'concatenate') your name to the end of my_char, use
                                                    | the c() function like this: c(my_char, "your_name_here"). Place
                                                    | your name in double quotes where I've put "your_name_here". Try
                                                    | it now, storing the result in a new variable called my_name.
                                                    > my_name <- c(my_char,"Kang Lu")
                                                    | You nailed it! Good job!
                                                      |===========================================               |  74%
                                                    | Take a look at the contents of my_name.
                                                    > my_name
                                                    [1] "My"      "name"    "is"      "Kang Lu"
                                                    | You are amazing!
                                                      |============================================              |  76%
                                                    | Now, use the paste() function once more to join the words in
                                                    | my_name together into a single character string. Don't forget to
                                                    | say collapse = " "!
                                                    > paste(my_name, collapse=" ")
                                                    [1] "My name is Kang Lu"
                                                    | All that hard work is paying off!
                                                    |==============================================            |  79%
                                                    | In this example, we used the paste() function to collapse the
                                                    | elements of a single character vector. paste() can also be used
                                                    | to join the elements of multiple character vectors.
                                                    ...
                                                    |===============================================           |  82%
                                                    | In the simplest case, we can join two character vectors that are
                                                    | each of length 1 (i.e. join two words). Try paste("Hello",
                                                    | "world!", sep = " "), where the `sep` argument tells R that we
                                                    | want to separate the joined elements with a single space.
                                                    > paste("Hello","world!", sep=" ")
                                                    [1] "Hello world!"
                                                    | Your dedication is inspiring!
                                                    |=================================================         |  84%
                                                    | For a slightly more complicated example, we can join two vectors,
                                                    | each of length 3. Use paste() to join the integer vector 1:3 with
                                                    | the character vector c("X", "Y", "Z"). This time, use sep = "" to
                                                    | leave no space between the joined elements.
                                                    > paste(1:3, c("X","Y","Z"),sep="")
                                                    [1] "1X" "2Y" "3Z"
                                                    | You are amazing!
                                                    |==================================================        |  87%
                                                    | What do you think will happen if our vectors are of different
                                                    | length? (Hint: we talked about this in a previous lesson.)
                                                    ...
                                                    |====================================================      |  89%
                                                    | Vector recycling! Try paste(LETTERS, 1:4, sep = "-"), where
                                                    | LETTERS is a predefined variable in R containing a character
                                                    | vector of all 26 letters in the English alphabet.
                                                    > paste(LETTERS,1:4,sep="-")
                                                    [1] "A-1" "B-2" "C-3" "D-4" "E-1" "F-2" "G-3" "H-4" "I-1" "J-2"
                                                    [11] "K-3" "L-4" "M-1" "N-2" "O-3" "P-4" "Q-1" "R-2" "S-3" "T-4"
                                                    [21] "U-1" "V-2" "W-3" "X-4" "Y-1" "Z-2"
                                                    | All that practice is paying off!
                                                    |=====================================================     |  92%
                                                    | Since the character vector LETTERS is longer than the numeric
                                                    | vector 1:4, R simply recycles, or repeats, 1:4 until it matches
                                                    | the length of LETTERS.
                                                    ...
                                                    |=======================================================   |  95%
                                                    | Also worth noting is that the numeric vector 1:4 gets 'coerced'
                                                    | into a character vector by the paste() function.
                                                    ...
                                                    |========================================================  |  97%
                                                    | We'll discuss coercion in another lesson, but all it really means
                                                    | is that the numbers 1, 2, 3, and 4 in the output above are no
                                                    | longer numbers to R, but rather characters "1", "2", "3", and
                                                    | "4".
                                                    ...
                                                    |==========================================================| 100%
                                                    
                                                    
         Swirl Lesson 5, Missing values
                                                    
                                                    | Please choose a course, or type 0 to exit swirl.
                                                    1: R Programming
                                                    2: Take me to the swirl course repository!
                                                      Selection: 1
                                                    | Please choose a lesson, or type 0 to return to course menu.
                                                    1: Basic Building Blocks      2: Workspace and Files     
                                                    3: Sequences of Numbers       4: Vectors                 
                                                    5: Missing Values             6: Subsetting Vectors      
                                                    7: Matrices and Data Frames   8: Logic                   
                                                    9: Functions                 10: lapply and sapply       
                                                    11: vapply and tapply         12: Looking at Data         
                                                    13: Simulation                14: Dates and Times         
                                                    15: Base Graphics             
                                                    Selection: 5
                                                    |                                                     |   0%
                                                    | Missing values play an important role in statistics and data
                                                    | analysis. Often, missing values must not be ignored, but
                                                    | rather they should be carefully studied to see if there's an
                                                    | underlying pattern or cause for their missingness.
                                                    ...
                                                    |===                                                  |   5%
                                                    | In R, NA is used to represent any value that is 'not
                                                    | available' or 'missing' (in the statistical sense). In this
                                                    | lesson, we'll explore missing values further.
                                                    ...
                                                    |=====                                                |  10%
                                                    | Any operation involving NA generally yields NA as the
                                                    | result. To illustrate, let's create a vector c(44, NA, 5,
                                                    | NA) and assign it to a variable x.
                                                    > x<-c(44,NA,5,NA)
                                                    | Perseverance, that's the answer.
                                                    |========                                             |  15%
                                                    | Now, let's multiply x by 3.
                                                    > 3*x
                                                    [1] 132  NA  15  NA
                                                    | Excellent job!
                                                    |===========                                          |  20%
                                                    | Notice that the elements of the resulting vector that
                                                    | correspond with the NA values in x are also NA.
                                                    ...
                                                    |=============                                        |  25%
                                                    | To make things a little more interesting, lets create a
                                                    | vector containing 1000 draws from a standard normal
                                                    | distribution with y <- rnorm(1000).
                                                    > y<-rnorm(1000)
                                                    | Keep up the great work!
                                                    |================                                     |  30%
                                                    | Next, let's create a vector containing 1000 NAs with z <-
                                                      | rep(NA, 1000).
                                                    > z<-rep(NA,1000)
                                                    | You're the best!
                                                    |===================                                  |  35%
                                                    | Finally, let's select 100 elements at random from these 2000
                                                    | values (combining y and z) such that we don't know how many
                                                    | NAs we'll wind up with or what positions they'll occupy in
                                                    | our final vector -- my_data <- sample(c(y, z), 100).
                                                    > my_data <- sample(c(y, z), 100)
                                                    | You are really on a roll!
                                                    |=====================                                |  40%
                                                    | Let's first ask the question of where our NAs are located in
                                                    | our data. The is.na() function tells us whether each element
                                                    | of a vector is NA. Call is.na() on my_data and assign the
                                                    | result to my_na.
                                                    > my_na<- is.na(my_data)
                                                    | You are doing so well!
                                                      |========================                             |  45%
                                                    | Now, print my_na to see what you came up with.
                                                    > my_na
                                                    [1] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE
                                                    [10]  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE
                                                    [19]  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE
                                                    [28]  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE
                                                    [37] FALSE FALSE FALSE  TRUE FALSE  TRUE  TRUE FALSE FALSE
                                                    [46] FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE
                                                    [55] FALSE  TRUE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE
                                                    [64]  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE  TRUE FALSE
                                                    [73] FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE
                                                    [82] FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE  TRUE FALSE
                                                    [91] FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE
                                                    [100]  TRUE
                                                    | You nailed it! Good job!
                                                      |==========================                           |  50%
                                                    | Everywhere you see a TRUE, you know the corresponding
                                                    | element of my_data is NA. Likewise, everywhere you see a
                                                    | FALSE, you know the corresponding element of my_data is one
                                                    | of our random draws from the standard normal distribution.
                                                    ...
                                                    |=============================                        |  55%
                                                    | In our previous discussion of logical operators, we
                                                    | introduced the `==` operator as a method of testing for
                                                    | equality between two objects. So, you might think the
                                                    | expression my_data == NA yields the same results as is.na().
                                                    | Give it a try.
                                                    > my_data == NA
                                                    [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
                                                    [20] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
                                                    [39] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
                                                    [58] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
                                                    [77] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
                                                    [96] NA NA NA NA NA
                                                    | You got it!
                                                      |================================                     |  60%
                                                    | The reason you got a vector of all NAs is that NA is not
                                                    | really a value, but just a placeholder for a quantity that
                                                    | is not available. Therefore the logical expression is
                                                    | incomplete and R has no choice but to return a vector of the
                                                    | same length as my_data that contains all NAs.
                                                    ...
                                                    |==================================                   |  65%
                                                    | Don't worry if that's a little confusing. The key takeaway
                                                    | is to be cautious when using logical expressions anytime NAs
                                                    | might creep in, since a single NA value can derail the
                                                    | entire thing.
                                                    ...
                                                    |=====================================                |  70%
                                                    | So, back to the task at hand. Now that we have a vector,
                                                    | my_na, that has a TRUE for every NA and FALSE for every
                                                    | numeric value, we can compute the total number of NAs in our
                                                    | data.
                                                    ...
                                                    |========================================             |  75%
                                                    | The trick is to recognize that underneath the surface, R
                                                    | represents TRUE as the number 1 and FALSE as the number 0.
                                                    | Therefore, if we take the sum of a bunch of TRUEs and
                                                    | FALSEs, we get the total number of TRUEs.
                                                    ...
                                                    |==========================================           |  80%
                                                    | Let's give that a try here. Call the sum() function on my_na
                                                    | to count the total number of TRUEs in my_na, and thus the
                                                    | total number of NAs in my_data. Don't assign the result to a
                                                    | new variable.
                                                    > sum(my_na)
                                                    [1] 46
                                                    | Great job!
                                                      |=============================================        |  85%
                                                    | Pretty cool, huh? Finally, let's take a look at the data to
                                                    | convince ourselves that everything 'adds up'. Print my_data
                                                    | to the console.
                                                    > my_data
                                                    [1]  1.28833738 -1.71566792 -2.10643156  0.52646288
                                                    [5]          NA -0.43369979 -0.73588709          NA
                                                    [9]          NA          NA          NA  0.04198942
                                                    [13]          NA          NA -0.07881950          NA
                                                    [17] -0.95076395  2.31028848          NA -0.73152858
                                                    [21]          NA          NA          NA  1.05294332
                                                    [25]          NA          NA          NA          NA
                                                    [29]          NA -0.59012503 -0.38427819          NA
                                                    [33]          NA          NA -0.48309105          NA
                                                    [37]  0.32180094 -1.05520535  0.27521195          NA
                                                    [41] -1.62668329          NA          NA -2.18910058
                                                    [45]  1.74314263 -0.07327235  1.49444965          NA
                                                    [49]  1.05747803          NA  0.71787615 -1.11394933
                                                    [53] -0.08661972  0.87982505 -0.51738201          NA
                                                    [57]  0.40314933          NA          NA  0.17416071
                                                    [61] -0.46598802          NA  0.01918326          NA
                                                    [65] -0.47643745          NA  0.96464973          NA
                                                    [69]  1.07043774          NA          NA  0.55960535
                                                    [73]  0.41772515          NA          NA -0.41373806
                                                    [77]  0.80355818 -1.01706160 -1.36218341 -1.55671571
                                                    [81]          NA  1.42576312 -0.49953533 -0.52994970
                                                    [85]  0.62437351          NA -0.53641307          NA
                                                    [89]          NA -0.08968300  0.18669337          NA
                                                    [93]          NA  1.05551995  1.19631709 -0.47725033
                                                    [97]          NA          NA -1.49508777          NA
                                                    | You're the best!
                                                      |================================================     |  90%
                                                    | Now that we've got NAs down pat, let's look at a second type
                                                    | of missing value -- NaN, which stands for 'not a number'. To
                                                    | generate NaN, try dividing (using a forward slash) 0 by 0
                                                    | now.
                                                    > 0/0
                                                    [1] NaN
                                                    | Your dedication is inspiring!
                                                      |==================================================   |  95%
                                                    | Let's do one more, just for fun. In R, Inf stands for
                                                    | infinity. What happens if you subtract Inf from Inf?
                                                    > Inf-Inf
                                                    [1] NaN
                                                    | All that hard work is paying off!
                                                    |=====================================================| 100%                                          



swirl Lesson - 6 ,Subsetting value
| Please choose a course, or type 0 to exit swirl.
1: R Programming
                                                    2: Take me to the swirl course repository!
                                                    Selection: 1
                                                    | Please choose a lesson, or type 0 to return to course menu.
                                                    1: Basic Building Blocks      2: Workspace and Files     
                                                    3: Sequences of Numbers       4: Vectors                 
                                                    5: Missing Values             6: Subsetting Vectors      
                                                    7: Matrices and Data Frames   8: Logic                   
                                                    9: Functions                 10: lapply and sapply       
                                                    11: vapply and tapply         12: Looking at Data         
                                                    13: Simulation                14: Dates and Times         
                                                    15: Base Graphics             
                                                    Selection: 6
                                                    |                                                          |   0%
                                                    | In this lesson, we'll see how to extract elements from a vector
                                                    | based on some conditions that we specify.
                                                    ...
                                                    |=                                                         |   3%
                                                    | For example, we may only be interested in the first 20 elements
                                                    | of a vector, or only the elements that are not NA, or only those
                                                    | that are positive or correspond to a specific variable of
                                                    | interest. By the end of this lesson, you'll know how to handle
                                                    | each of these scenarios.
                                                    ...
                                                    |===                                                       |   5%
                                                    | I've created for you a vector called x that contains a random
                                                    | ordering of 20 numbers (from a standard normal distribution) and
                                                    | 20 NAs. Type x now to see what it looks like.
                                                    > x
                                                    [1] -0.33405234 -0.49484149          NA          NA          NA
                                                    [6]          NA          NA  0.61599044          NA -0.44508310
                                                    [11] -0.38448303          NA          NA          NA -0.82861770
                                                    [16]          NA          NA -1.17988002          NA          NA
                                                    [21] -1.61544872  0.42726934 -0.05340495  1.09906686          NA
                                                    [26]          NA          NA          NA -0.28733649  0.03352711
                                                    [31]  0.78400054 -1.85444549          NA -0.71313966          NA
                                                    [36]  0.58638413  0.68991587 -2.03005637          NA -0.53542368
                                                    | That's correct!
                                                    |====                                                      |   8%
                                                    | The way you tell R that you want to select some particular
                                                    | elements (i.e. a 'subset') from a vector is by placing an 'index
                                                    | vector' in square brackets immediately following the name of the
                                                    | vector.
                                                    ...
                                                    |======                                                    |  10%
                                                    | For a simple example, try x[1:10] to view the first ten elements
                                                    | of x.
                                                    > x[1:10]
                                                    [1] -0.3340523 -0.4948415         NA         NA         NA
                                                    [6]         NA         NA  0.6159904         NA -0.4450831
                                                    | You nailed it! Good job!
                                                    |=======                                                   |  13%
                                                    | Index vectors come in four different flavors -- logical vectors,
                                                    | vectors of positive integers, vectors of negative integers, and
                                                    | vectors of character strings -- each of which we'll cover in this
                                                    | lesson.
                                                    ...
                                                    |=========                                                 |  15%
                                                    | Let's start by indexing with logical vectors. One common scenario
                                                    | when working with real-world data is that we want to extract all
                                                    | elements of a vector that are not NA (i.e. missing data). Recall
                                                    | that is.na(x) yields a vector of logical values the same length
                                                    | as x, with TRUEs corresponding to NA values in x and FALSEs
                                                    | corresponding to non-NA values in x.
                                                    ...
                                                    |==========                                                |  18%
                                                    | What do you think x[is.na(x)] will give you?
                                                    1: A vector of TRUEs and FALSEs
                                                    2: A vector with no NAs
                                                    3: A vector of all NAs
                                                    4: A vector of length 0
                                                    Selection: 3
                                                    | Perseverance, that's the answer.
                                                    |============                                              |  21%
                                                    | Prove it to yourself by typing x[is.na(x)].
                                                    > x[is.na(x)]
                                                    [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
                                                    | Nice work!
                                                      |=============                                             |  23%
                                                    | Recall that `!` gives us the negation of a logical expression, so
                                                    | !is.na(x) can be read as 'is not NA'. Therefore, if we want to
                                                    | create a vector called y that contains all of the non-NA values
                                                    | from x, we can use y <- x[!is.na(x)]. Give it a try.
                                                    > y<-x[!is.na(x)]
                                                    | All that hard work is paying off!
                                                      |===============                                           |  26%
                                                    | Print y to the console.
                                                    > y
                                                    [1] -0.33405234 -0.49484149  0.61599044 -0.44508310 -0.38448303
                                                    [6] -0.82861770 -1.17988002 -1.61544872  0.42726934 -0.05340495
                                                    [11]  1.09906686 -0.28733649  0.03352711  0.78400054 -1.85444549
                                                    [16] -0.71313966  0.58638413  0.68991587 -2.03005637 -0.53542368
                                                    | Excellent work!
                                                      |================                                          |  28%
                                                    | Now that we've isolated the non-missing values of x and put them
                                                    | in y, we can subset y as we please.
                                                    ...
                                                    |==================                                        |  31%
                                                    | Recall that the expression y > 0 will give us a vector of logical
                                                    | values the same length as y, with TRUEs corresponding to values
                                                    | of y that are greater than zero and FALSEs corresponding to
                                                    | values of y that are less than or equal to zero. What do you
                                                    | think y[y > 0] will give you?
                                                    1: A vector of all the negative elements of y
                                                    2: A vector of all NAs
                                                    3: A vector of TRUEs and FALSEs
                                                    4: A vector of length 0
                                                    5: A vector of all the positive elements of y
                                                    Selection: 5
                                                    | Your dedication is inspiring!
                                                    |===================                                       |  33%
                                                    | Type y[y > 0] to see that we get all of the positive elements of
                                                    | y, which are also the positive elements of our original vector x.
                                                    > y[y>0]
                                                    [1] 0.61599044 0.42726934 1.09906686 0.03352711 0.78400054
                                                    [6] 0.58638413 0.68991587
                                                    | Excellent job!
                                                    |=====================                                     |  36%
                                                    | You might wonder why we didn't just start with x[x > 0] to
                                                    | isolate the positive elements of x. Try that now to see why.
                                                    > x[x>0]
                                                    [1]         NA         NA         NA         NA         NA
                                                    [6] 0.61599044         NA         NA         NA         NA
                                                    [11]         NA         NA         NA         NA 0.42726934
                                                    [16] 1.09906686         NA         NA         NA         NA
                                                    [21] 0.03352711 0.78400054         NA         NA 0.58638413
                                                    [26] 0.68991587         NA
                                                    | That's correct!
                                                    |======================                                    |  38%
                                                    | Since NA is not a value, but rather a placeholder for an unknown
                                                    | quantity, the expression NA > 0 evaluates to NA. Hence we get a
                                                    | bunch of NAs mixed in with our positive numbers when we do this.
                                                    ...
                                                    |========================                                  |  41%
                                                    | Combining our knowledge of logical operators with our new
                                                    | knowledge of subsetting, we could do this -- x[!is.na(x) & x >
                                                    | 0]. Try it out.
                                                    > x[!is.na(x) & x>0]
                                                    [1] 0.61599044 0.42726934 1.09906686 0.03352711 0.78400054
                                                    [6] 0.58638413 0.68991587
                                                    | You got it right!
                                                    |=========================                                 |  44%
                                                    | In this case, we request only values of x that are both
                                                    | non-missing AND greater than zero.
                                                    ...
                                                    |===========================                               |  46%
                                                    | I've already shown you how to subset just the first ten values of
                                                    | x using x[1:10]. In this case, we're providing a vector of
                                                    | positive integers inside of the square brackets, which tells R to
                                                    | return only the elements of x numbered 1 through 10.
                                                    ...
                                                    |============================                              |  49%
                                                    | Many programming languages use what's called 'zero-based
                                                    | indexing', which means that the first element of a vector is
                                                    | considered element 0. R uses 'one-based indexing', which (you
                                                                                                                | guessed it!) means the first element of a vector is considered
                                                    | element 1.
                                                    ...
                                                    |==============================                            |  51%
                                                    | Can you figure out how we'd subset the 3rd, 5th, and 7th elements
                                                    | of x? Hint -- Use the c() function to specify the element numbers
                                                    | as a numeric vector.
                                                    > x[c(3,5,7)]
                                                    [1] NA NA NA
                                                    | You are doing so well!
                                                    |===============================                           |  54%
                                                    | It's important that when using integer vectors to subset our
                                                    | vector x, we stick with the set of indexes {1, 2, ..., 40} since
                                                    | x only has 40 elements. What happens if we ask for the zeroth
                                                    | element of x (i.e. x[0])? Give it a try.
                                                    > x[0]
                                                    numeric(0)
                                                    | Nice work!
                                                      |=================================                         |  56%
                                                    | As you might expect, we get nothing useful. Unfortunately, R
                                                    | doesn't prevent us from doing this. What if we ask for the 3000th
                                                    | element of x? Try it out.
                                                    > x[3000]
                                                    [1] NA
                                                    | You got it!
                                                    |==================================                        |  59%
                                                    | Again, nothing useful, but R doesn't prevent us from asking for
                                                    | it. This should be a cautionary tale. You should always make sure
                                                    | that what you are asking for is within the bounds of the vector
                                                    | you're working with.
                                                    ...
                                                    |====================================                      |  62%
                                                    | What if we're interested in all elements of x EXCEPT the 2nd and
                                                    | 10th? It would be pretty tedious to construct a vector containing
                                                    | all numbers 1 through 40 EXCEPT 2 and 10.
                                                    ...
                                                    |=====================================                     |  64%
                                                    | Luckily, R accepts negative integer indexes. Whereas x[c(2, 10)]
                                                    | gives us ONLY the 2nd and 10th elements of x, x[c(-2, -10)] gives
                                                    | us all elements of x EXCEPT for the 2nd and 10 elements.  Try
                                                    | x[c(-2, -10)] now to see this.
                                                    > x[c(-2,-10)]
                                                    [1] -0.33405234          NA          NA          NA          NA
                                                    [6]          NA  0.61599044          NA -0.38448303          NA
                                                    [11]          NA          NA -0.82861770          NA          NA
                                                    [16] -1.17988002          NA          NA -1.61544872  0.42726934
                                                    [21] -0.05340495  1.09906686          NA          NA          NA
                                                    [26]          NA -0.28733649  0.03352711  0.78400054 -1.85444549
                                                    [31]          NA -0.71313966          NA  0.58638413  0.68991587
                                                    [36] -2.03005637          NA -0.53542368
                                                    | That's a job well done!
                                                    |=======================================                   |  67%
                                                    | A shorthand way of specifying multiple negative numbers is to put
                                                    | the negative sign out in front of the vector of positive numbers.
                                                    | Type x[-c(2, 10)] to get the exact same result.
                                                    > x[-c(2,10)]
                                                    [1] -0.33405234          NA          NA          NA          NA
                                                    [6]          NA  0.61599044          NA -0.38448303          NA
                                                    [11]          NA          NA -0.82861770          NA          NA
                                                    [16] -1.17988002          NA          NA -1.61544872  0.42726934
                                                    [21] -0.05340495  1.09906686          NA          NA          NA
                                                    [26]          NA -0.28733649  0.03352711  0.78400054 -1.85444549
                                                    [31]          NA -0.71313966          NA  0.58638413  0.68991587
                                                    [36] -2.03005637          NA -0.53542368
                                                    | That's the answer I was looking for.
                                                    |========================================                  |  69%
                                                    | So far, we've covered three types of index vectors -- logical,
                                                    | positive integer, and negative integer. The only remaining type
                                                    | requires us to introduce the concept of 'named' elements.
                                                    ...
                                                    |==========================================                |  72%
                                                    | Create a numeric vector with three named elements using vect <-
                                                    | c(foo = 11, bar = 2, norf = NA).
                                                    > vect<-c(foo=11,bar=2,norf=NA)
                                                    | Keep working like that and you'll get there!
                                                      |===========================================               |  74%
                                                    | When we print vect to the console, you'll see that each element
                                                    | has a name. Try it out.
                                                    > vect
                                                    foo  bar norf 
                                                    11    2   NA 
                                                    | That's the answer I was looking for.
                                                    |=============================================             |  77%
                                                    | We can also get the names of vect by passing vect as an argument
                                                    | to the names() function. Give that a try.
                                                    > names(vect)
                                                    [1] "foo"  "bar"  "norf"
                                                    | All that hard work is paying off!
                                                      |==============================================            |  79%
                                                    | Alternatively, we can create an unnamed vector vect2 with c(11,
                                                                                                                  | 2, NA). Do that now.
                                                    > vect2<-c(11,2,NA)
                                                    | Excellent job!
                                                      |================================================          |  82%
                                                    | Then, we can add the `names` attribute to vect2 after the fact
                                                    | with names(vect2) <- c("foo", "bar", "norf"). Go ahead.
                                                    > names(vect2)<-c("foo","bar","norf")
                                                    | All that practice is paying off!
                                                      |=================================================         |  85%
                                                    | Now, let's check that vect and vect2 are the same by passing them
                                                    | as arguments to the identical() function.
                                                    > identical(vect,vect2)
                                                    [1] TRUE
                                                    | That's a job well done!
                                                      |===================================================       |  87%
                                                    | Indeed, vect and vect2 are identical named vectors.
                                                    ...
                                                    |====================================================      |  90%
                                                    | Now, back to the matter of subsetting a vector by named elements.
                                                    | Which of the following commands do you think would give us the
                                                    | second element of vect?
                                                    1: vect["2"]
                                                    2: vect[bar]
                                                    3: vect["bar"]
                                                    Selection: 3
                                                    | You're the best!
                                                    |======================================================    |  92%
                                                    | Now, try it out.
                                                    > vect["bar"]
                                                    bar 
                                                    2 
                                                    | Great job!
                                                    |=======================================================   |  95%
                                                    | Likewise, we can specify a vector of names with vect[c("foo",
                                                    | "bar")]. Try it out.
                                                    > vect[c("foo","bar")]
                                                    foo bar 
                                                    11   2 
                                                    | Nice work!
                                                    |========================================================= |  97%
                                                    | Now you know all four methods of subsetting data from vectors.
                                                    | Different approaches are best in different scenarios and when in
                                                    | doubt, try it out!
                                                    ...                                                |==========================================================| 100%
 Swirl Lesson 7 - Matrices and Data Framer
| Please choose a course, or type 0 to exit swirl.
1: R Programming
                                                    2: Take me to the swirl course repository!
                                                    Selection: 1
                                                    | Please choose a lesson, or type 0 to return to course menu.
                                                    1: Basic Building Blocks      2: Workspace and Files     
                                                    3: Sequences of Numbers       4: Vectors                 
                                                    5: Missing Values             6: Subsetting Vectors      
                                                    7: Matrices and Data Frames   8: Logic                   
                                                    9: Functions                 10: lapply and sapply       
                                                    11: vapply and tapply         12: Looking at Data         
                                                    13: Simulation                14: Dates and Times         
                                                    15: Base Graphics             
                                                    Selection: 7
                                                    |                                                          |   0%
                                                    | In this lesson, we'll cover matrices and data frames. Both
                                                    | represent 'rectangular' data types, meaning that they are used to
                                                    | store tabular data, with rows and columns.
                                                    ...
                                                    |==                                                        |   3%
                                                    | The main difference, as you'll see, is that matrices can only
                                                    | contain a single class of data, while data frames can consist of
                                                    | many different classes of data.
                                                    ...
                                                    |===                                                       |   6%
                                                    | Let's create a vector containing the numbers 1 through 20 using
                                                    | the `:` operator. Store the result in a variable called
                                                    | my_vector.
                                                    > my_vector<- 1:20
                                                    | You're the best!
                                                    |=====                                                     |   8%
                                                    | View the contents of the vector you just created.
                                                    > my_vector
                                                    [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
                                                    | You got it!
                                                    |======                                                    |  11%
                                                    | The dim() function tells us the 'dimensions' of an object. What
                                                    | happens if we do dim(my_vector)? Give it a try.
                                                    > dim(my_vector)
                                                    NULL
                                                    | Excellent job!
                                                    |========                                                  |  14%
                                                    | Clearly, that's not very helpful! Since my_vector is a vector, it
                                                    | doesn't have a `dim` attribute (so it's just NULL), but we can
| find its length using the length() function. Try that now.
> length(my_vector)
[1] 20
| Great job!
  |==========                                                |  17%
| Ah! That's what we wanted. But, what happens if we give my_vector
| a `dim` attribute? Let's give it a try. Type dim(my_vector) <-
  | c(4, 5).
> dim(my_vector)<-c(4,5)
| You are really on a roll!
  |===========                                               |  19%
| It's okay if that last command seemed a little strange to you. It
| should! The dim() function allows you to get OR set the `dim`
| attribute for an R object. In this case, we assigned the value
| c(4, 5) to the `dim` attribute of my_vector.
...
|=============                                             |  22%
| Use dim(my_vector) to confirm that we've set the `dim` attribute
| correctly.
> dim(my_vector)
[1] 4 5
| You nailed it! Good job!
  |==============                                            |  25%
| Another way to see this is by calling the attributes() function
| on my_vector. Try it now.
> attributes(my_vector)
$dim
[1] 4 5
| That's correct!
|================                                          |  28%
| Just like in math class, when dealing with a 2-dimensional object
| (think rectangular table), the first number is the number of rows
| and the second is the number of columns. Therefore, we just gave
| my_vector 4 rows and 5 columns.
...   
|==================                                        |  31%
| But, wait! That doesn't sound like a vector any more. Well, it's
| not. Now it's a matrix. View the contents of my_vector now to see
| what it looks like.
> my_vector
[,1] [,2] [,3] [,4] [,5]
[1,]    1    5    9   13   17
[2,]    2    6   10   14   18
[3,]    3    7   11   15   19
[4,]    4    8   12   16   20
| Nice work!
  |===================                                       |  33%
| Now, let's confirm it's actually a matrix by using the class()
| function. Type class(my_vector) to see what I mean.
> class(my_vector)
[1] "matrix"
| You are doing so well!
  |=====================                                     |  36%
| Sure enough, my_vector is now a matrix. We should store it in a
| new variable that helps us remember what it is. Store the value
| of my_vector in a new variable called my_matrix.
> my_matrix<-my_vector
| Nice work!
  |=======================                                   |  39%
| The example that we've used so far was meant to illustrate the
| point that a matrix is simply an atomic vector with a dimension
| attribute. A more direct method of creating the same matrix uses
| the matrix() function.
...
|========================                                  |  42%
| Bring up the help file for the matrix() function now using the
| `?` function.
> ?matrix
| You nailed it! Good job!
|==========================                                |  44%
| Now, look at the documentation for the matrix function and see if
| you can figure out how to create a matrix containing the same
| numbers (1-20) and dimensions (4 rows, 5 columns) by calling the
| matrix() function. Store the result in a variable called
| my_matrix2.
> my_matrix2<-matrix(1:20, nrow=4,ncol=5,byrow = FALSE,)
| That's correct!
  |===========================                               |  47%
| Finally, let's confirm that my_matrix and my_matrix2 are actually
| identical. The identical() function will tell us if its first two
| arguments are the same. Try it out.
> identical(my_matrix,my_matrix2)
[1] TRUE
| You are amazing!
|=============================                             |  50%
| Now, imagine that the numbers in our table represent some
| measurements from a clinical experiment, where each row
| represents one patient and each column represents one variable
| for which measurements were taken.
...
|===============================                           |  53%
| We may want to label the rows, so that we know which numbers
| belong to each patient in the experiment. One way to do this is
| to add a column to the matrix, which contains the names of all
| four people.
...
|================================                          |  56%
| Let's start by creating a character vector containing the names
| of our patients -- Bill, Gina, Kelly, and Sean. Remember that
| double quotes tell R that something is a character string. Store
| the result in a variable called patients.
> patients<-c("Bill","Gina","Kelly","Sean")
| That's a job well done!
|==================================                        |  58%
| Now we'll use the cbind() function to 'combine columns'. Don't
| worry about storing the result in a new variable. Just call
| cbind() with two arguments -- the patients vector and my_matrix.
> cbind(patients,my_matrix)
patients                       
[1,] "Bill"   "1" "5" "9"  "13" "17"
[2,] "Gina"   "2" "6" "10" "14" "18"
[3,] "Kelly"  "3" "7" "11" "15" "19"
[4,] "Sean"   "4" "8" "12" "16" "20"
| All that practice is paying off!
|===================================                       |  61%
| Something is fishy about our result! It appears that combining
| the character vector with our matrix of numbers caused everything
| to be enclosed in double quotes. This means we're left with a
| matrix of character strings, which is no good.
...
|=====================================                     |  64%
| If you remember back to the beginning of this lesson, I told you
| that matrices can only contain ONE class of data. Therefore, when
| we tried to combine a character vector with a numeric matrix, R
| was forced to 'coerce' the numbers to characters, hence the
| double quotes.
...
|=======================================                   |  67%
| This is called 'implicit coercion', because we didn't ask for it.
| It just happened. But why didn't R just convert the names of our
| patients to numbers? I'll let you ponder that question on your
| own.
...
|========================================                  |  69%
| So, we're still left with the question of how to include the
| names of our patients in the table without destroying the
| integrity of our numeric data. Try the following -- my_data <-
  | data.frame(patients, my_matrix)
> my_data<-data.frame(patients,my_matrix)
| Perseverance, that's the answer.
|==========================================                |  72%
| Now view the contents of my_data to see what we've come up with.
> my_data
patients X1 X2 X3 X4 X5
1     Bill  1  5  9 13 17
2     Gina  2  6 10 14 18
3    Kelly  3  7 11 15 19
4     Sean  4  8 12 16 20
| Your dedication is inspiring!
  |============================================              |  75%
| It looks like the data.frame() function allowed us to store our
| character vector of names right alongside our matrix of numbers.
| That's exactly what we were hoping for!
...
|=============================================             |  78%
| Behind the scenes, the data.frame() function takes any number of
| arguments and returns a single object of class `data.frame` that
| is composed of the original objects.
...
|===============================================           |  81%
| Let's confirm this by calling the class() function on our newly
| created data frame.
> class(my_data)
[1] "data.frame"
| Excellent job!
  |================================================          |  83%
| It's also possible to assign names to the individual rows and
| columns of a data frame, which presents another possible way of
| determining which row of values in our table belongs to each
| patient.
...
|==================================================        |  86%
| However, since we've already solved that problem, let's solve a
| different problem by assigning names to the columns of our data
| frame so that we know what type of measurement each column
| represents.
...
|====================================================      |  89%
| Since we have six columns (including patient names), we'll need
| to first create a vector containing one element for each column.
| Create a character vector called cnames that contains the
| following values (in order) -- "patient", "age", "weight", "bp",
| "rating", "test".
> cnames<-c("patient", "age", "weight", "bp", "rating", "test")
| That's correct!
|=====================================================     |  92%
| Now, use the colnames() function to set the `colnames` attribute
| for our data frame. This is similar to the way we used the dim()
| function earlier in this lesson.
> colnames(my_data)<-cnames
| Nice work!
|=======================================================   |  94%
| Let's see if that got the job done. Print the contents of
| my_data.
> my_data
patient age weight bp rating test
1    Bill   1      5  9     13   17
2    Gina   2      6 10     14   18
3   Kelly   3      7 11     15   19
4    Sean   4      8 12     16   20
| That's correct!
|========================================================  |  97%
| In this lesson, you learned the basics of working with two very
| important and common data structures -- matrices and data frames.
| There's much more to learn and we'll be covering more advanced
| topics, particularly with respect to data frames, in future
| lessons.
...
|==========================================================| 100%


 Swirll Lesson -8 Logic

| Please choose a course, or type 0 to exit swirl.
1: R Programming
2: Take me to the swirl course repository!
Selection: 1
| Please choose a lesson, or type 0 to return to course menu.
1: Basic Building Blocks      2: Workspace and Files     
3: Sequences of Numbers       4: Vectors                 
5: Missing Values             6: Subsetting Vectors      
7: Matrices and Data Frames   8: Logic                   
9: Functions                 10: lapply and sapply       
11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times         
15: Base Graphics             
Selection: 8
|                                                          |   0%
| This lesson is meant to be a short introduction to logical
| operations in R.
...
|=                                                         |   2%
| There are two logical values in R, also called boolean values.
| They are TRUE and FALSE. In R you can construct logical
| expressions which will evaluate to either TRUE or FALSE.
...
|==                                                        |   4%
| Many of the questions in this lesson will involve evaluating
| logical expressions. It may be useful to open up a second R
| terminal where you can experiment with some of these expressions.
...
|===                                                       |   6%
| Creating logical expressions requires logical operators. You're
| probably familiar with arithmetic operators like `+`, `-`, `*`,
| and `/`. The first logical operator we are going to discuss is
| the equality operator, represented by two equals signs `==`. Use
| the equality operator below to find out if TRUE is equal to TRUE.
> TRUE == TRUE
[1] TRUE
| You're the best!
|====                                                      |   8%
| Just like arithmetic, logical expressions can be grouped by
| parenthesis so that the entire expression (TRUE == TRUE) == TRUE
| evaluates to TRUE.
...
|======                                                    |  10%
| To test out this property, try evaluating (FALSE == TRUE) ==
| FALSE .
> (FALSE == TRUE) == FALSE
[1] TRUE
| You got it!
|=======                                                   |  12%
| The equality operator can also be used to compare numbers. Use
| `==` to see if 6 is equal to 7.
> 6 == 7
[1] FALSE
| You got it right!
|========                                                  |  13%
| The previous expression evaluates to FALSE because 6 is less than
| 7. Thankfully, there are inequality operators that allow us to
| test if a value is less than or greater than another value.
...
|=========                                                 |  15%
| The less than operator `<` tests whether the number on the left
| side of the operator (called the left operand) is less than the
| number on the right side of the operator (called the right
| operand). Write an expression to test whether 6 is less than 7.
> 6<7
[1] TRUE
| Keep working like that and you'll get there!
  |==========                                                |  17%
| There is also a less-than-or-equal-to operator `<=` which tests
| whether the left operand is less than or equal to the right
| operand. Write an expression to test whether 10 is less than or
| equal to 10.
> 10<=10
[1] TRUE
| Nice work!
  |===========                                               |  19%
| Keep in mind that there are the corresponding greater than `>`
| and greater-than-or-equal-to `>=` operators.
...
|============                                              |  21%
| Which of the following evaluates to FALSE?
1: 9 >= 10
2: 6 < 8
3: 7 == 7
4: 0 > -36
Selection: 1
| You are amazing!
  |=============                                             |  23%
| Which of the following evaluates to TRUE?
1: 7 == 9
2: 9 >= 10
3: 57 < 8
4: -6 > -7
Selection: 4
| All that hard work is paying off!
  |==============                                            |  25%
| The next operator we will discuss is the 'not equals' operator
| represented by `!=`. Not equals tests whether two values are
| unequal, so TRUE != FALSE evaluates to TRUE. Like the equality
| operator, `!=` can also be used with numbers. Try writing an
| expression to see if 5 is not equal to 7.
> 5 != 7
[1] TRUE
| You nailed it! Good job!
  |================                                          |  27%
| In order to negate boolean expressions you can use the NOT
| operator. An exclamation point `!` will cause !TRUE (say: not
                                                       | true) to evaluate to FALSE and !FALSE (say: not false) to
| evaluate to TRUE. Try using the NOT operator and the equals
| operator to find the opposite of whether 5 is equal to 7.
> !(5==7)
[1] TRUE
| Excellent work!
  |=================                                         |  29%
| Let's take a moment to review. The equals operator `==` tests
| whether two boolean values or numbers are equal, the not equals
| operator `!=` tests whether two boolean values or numbers are
| unequal, and the NOT operator `!` negates logical expressions so
| that TRUE expressions become FALSE and FALSE expressions become
| TRUE.
...
|==================                                        |  31%
| Which of the following evaluates to FALSE?
1: 9 < 10
2: !FALSE
3: 7 != 8
4: !(0 >= -1)
Selection: 4
| You got it!
|===================                                       |  33%
| What do you think the following expression will evaluate to?:
| (TRUE != FALSE) == !(6 == 7)
1: %>%
2: TRUE
3: FALSE
4: Can there be objective truth when programming?
Selection: 2
| All that hard work is paying off!
|====================                                      |  35%
| At some point you may need to examine relationships between
| multiple logical expressions. This is where the AND operator and
| the OR operator come in.
...
|=====================                                     |  37%
| Let's look at how the AND operator works. There are two AND
| operators in R, `&` and `&&`. Both operators work similarly, if
| the right and left operands of AND are both TRUE the entire
| expression is TRUE, otherwise it is FALSE. For example, TRUE &
  | TRUE evaluates to TRUE. Try typing FALSE & FALSE to how it is
| evaluated.
> FALSE & FALSE
[1] FALSE
| All that practice is paying off!
  |======================                                    |  38%
| You can use the `&` operator to evaluate AND across a vector. The
| `&&` version of AND only evaluates the first member of a vector.
| Let's test both for practice. Type the expression TRUE & c(TRUE,
| FALSE, FALSE).
> TRUE & c(TRUE,FALSE,FALSE)
[1]  TRUE FALSE FALSE
| That's correct!
  |=======================                                   |  40%
| What happens in this case is that the left operand `TRUE` is
| recycled across every element in the vector of the right operand.
| This is the equivalent statement as c(TRUE, TRUE, TRUE) & c(TRUE,
                                                              | FALSE, FALSE).
...
|=========================                                 |  42%
| Now we'll type the same expression except we'll use the `&&`
| operator. Type the expression TRUE && c(TRUE, FALSE, FALSE).
> TRUE && c(TRUE,FALSE,FALSE)
[1] TRUE
| You are doing so well!
  |==========================                                |  44%
| In this case, the left operand is only evaluated with the first
| member of the right operand (the vector). The rest of the
| elements in the vector aren't evaluated at all in this
| expression.
...
|===========================                               |  46%
| The OR operator follows a similar set of rules. The `|` version
| of OR evaluates OR across an entire vector, while the `||`
| version of OR only evaluates the first member of a vector.
...
|============================                              |  48%
| An expression using the OR operator will evaluate to TRUE if the
| left operand or the right operand is TRUE. If both are TRUE, the
| expression will evaluate to TRUE, however if neither are TRUE,
| then the expression will be FALSE.
...
|=============================                             |  50%
| Let's test out the vectorized version of the OR operator. Type
| the expression TRUE | c(TRUE, FALSE, FALSE).
> TRUE | c(TRUE,FALSE,FALSE)
[1] TRUE TRUE TRUE
| You are quite good my friend!
  |==============================                            |  52%
| Now let's try out the non-vectorized version of the OR operator.
| Type the expression TRUE || c(TRUE, FALSE, FALSE).
> TRUE || c(TRUE,FALSE,FALSE)
[1] TRUE
| You got it right!
|===============================                           |  54%
| Logical operators can be chained together just like arithmetic
| operators. The expressions: `6 != 10 && FALSE && 1 >= 2` or `TRUE
| || 5 < 9.3 || FALSE` are perfectly normal to see.
...
|================================                          |  56%
| As you may recall, arithmetic has an order of operations and so
| do logical expressions. All AND operators are evaluated before OR
| operators. Let's look at an example of an ambiguous case. Type: 5
| > 8 || 6 != 8 && 4 > 3.9
> 
  > 5>8 || 6 != 8 && 4>3.9
[1] TRUE
| You are amazing!
  |=================================                         |  58%
| Let's walk through the order of operations in the above case.
| First the left and right operands of the AND operator are
| evaluated. 6 is not equal 8, 4 is greater than 3.9, therefore
| both operands are TRUE so the resulting expression `TRUE && TRUE`
| evaluates to TRUE. Then the left operand of the OR operator is
| evaluated: 5 is not greater than 8 so the entire expression is
| reduced to FALSE || TRUE. Since the right operand of this
| expression is TRUE the entire expression evaluates to TRUE.
...
|===================================                       |  60%
| Which one of the following expressions evaluates to TRUE?
1: 99.99 > 100 || 45 < 7.3 || 4 != 4.0
2: TRUE && 62 < 62 && 44 >= 44
3: FALSE || TRUE && FALSE
4: TRUE && FALSE || 9 >= 4 && 3 < 6
Selection: 4
| Excellent work!
|====================================                      |  62%
| Which one of the following expressions evaluates to FALSE?
1: 6 >= -9 && !(6 > 7) && !(!TRUE)
2: FALSE && 6 >= 6 || 7 >= 8 || 50 <= 49.5
3: !(8 > 4) ||  5 == 5.0 && 7.8 >= 7.79
4: FALSE || TRUE && 6 != 4 || 9 > 4
Selection: 2
| You're the best!
  |=====================================                     |  63%
| Now that you're familiar with R's logical operators you can take
| advantage of a few functions that R provides for dealing with
| logical expressions.
...
|======================================                    |  65%
| The function isTRUE() takes one argument. If that argument
| evaluates to TRUE, the function will return TRUE. Otherwise, the
| function will return FALSE. Try using this function by typing:
  | isTRUE(6 > 4)
> isTRUE(6>4)
[1] TRUE
| Your dedication is inspiring!
  |=======================================                   |  67%
| Which of the following evaluates to TRUE?
1: !isTRUE(4 < 3)
2: !isTRUE(8 != 5)
3: isTRUE(NA)
4: isTRUE(3)
5: isTRUE(!TRUE)
Selection: 1
| Keep working like that and you'll get there!
|========================================                  |  69%
| The function identical() will return TRUE if the two R objects
| passed to it as arguments are identical. Try out the identical()
| function by typing: identical('twins', 'twins')
> identical('twins', 'twins')
[1] TRUE
| You nailed it! Good job!
|=========================================                 |  71%
| Which of the following evaluates to TRUE?
1: identical(5 > 4, 3 < 3.1)
2: !identical(7, 7)
3: identical('hello', 'Hello')
4: identical(4, 3.1)
Selection: 1
| That's the answer I was looking for.
|==========================================                |  73%
| You should also be aware of the xor() function, which takes two
| arguments. The xor() function stands for exclusive OR. If one
| argument evaluates to TRUE and one argument evaluates to FALSE,
| then this function will return TRUE, otherwise it will return
| FALSE. Try out the xor() function by typing: xor(5 == 6, !FALSE)
> xor(5 == 6, !FALSE)
[1] TRUE
| Your dedication is inspiring!
  |============================================              |  75%
| 5 == 6 evaluates to FALSE, !FALSE evaluates to TRUE, so
| xor(FALSE, TRUE) evaluates to TRUE. On the other hand if the
| first argument was changed to 5 == 5 and the second argument was
| unchanged then both arguments would have been TRUE, so xor(TRUE,
                                                             | TRUE) would have evaluated to FALSE.
...
|=============================================             |  77%
| Which of the following evaluates to FALSE?
1: xor(identical(xor, 'xor'), 7 == 7.0)
2: xor(4 >= 9, 8 != 8.0)
3: xor(!!TRUE, !!FALSE)
4: xor(!isTRUE(TRUE), 6 > -1)
Selection: 2
| That's correct!
|==============================================            |  79%
| For the next few questions, we're going to need to create a
| vector of integers called ints. Create this vector by typing:
  | ints <- sample(10)
> ints <- sample(10)
| You got it!
  |===============================================           |  81%
| Now simply display the contents of ints.
> ints
[1]  7  9  2  8  1  5  3  6 10  4
| All that hard work is paying off!
  |================================================          |  83%
| The vector `ints` is a random sampling of integers from 1 to 10
| without replacement. Let's say we wanted to ask some logical
| questions about contents of ints. If we type ints > 5, we will
| get a logical vector corresponding to whether each element of
| ints is greater than 5. Try typing: ints > 5
> ints>5
[1]  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE
| That's correct!
  |=================================================         |  85%
| We can use the resulting logical vector to ask other questions
| about ints. The which() function takes a logical vector as an
| argument and returns the indices of the vector that are TRUE. For
| example which(c(TRUE, FALSE, TRUE)) would return the vector c(1,
                                                                | 3).
...
|==================================================        |  87%
| Use the which() function to find the indices of ints that are
| greater than 7.
> which(ints>7)
[1] 2 4 9
| That's correct!
|===================================================       |  88%
| Which of the following commands would produce the indices of the
| elements in ints that are less than or equal to 2?
1: ints < 2
2: which(ints < 2)
3: which(ints <= 2)
4: ints <= 2
Selection: 3
| Nice work!
|====================================================      |  90%
| Like the which() function, the functions any() and all() take
| logical vectors as their argument. The any() function will return
| TRUE if one or more of the elements in the logical vector is
| TRUE. The all() function will return TRUE if every element in the
| logical vector is TRUE.
...
|======================================================    |  92%
| Use the any() function to see if any of the elements of ints are
| less than zero.
> any(ints<0)
[1] FALSE
| Perseverance, that's the answer.
|=======================================================   |  94%
| Use the all() function to see if all of the elements of ints are
| greater than zero.
> all(ints>0)
[1] TRUE
| That's the answer I was looking for.
|========================================================  |  96%
| Which of the following evaluates to TRUE?
1: all(c(TRUE, FALSE, TRUE))
2: any(ints == 2.5)
3: all(ints == 10)
4: any(ints == 10)
Selection: 4
| Great job!
|========================================================= |  98%
| That's all for this introduction to logic in R. If you really
| want to see what you can do with logic, check out the control
| flow lesson!
  ...
|==========================================================| 100%

