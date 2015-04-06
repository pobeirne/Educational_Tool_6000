# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).


############################################################################################################
user1 = User.create(email: 'pobeirne@outlook.ie', password: '12345678', password_confirmation: '12345678')
############################################################################################################


############################################################################################################
lvl1 = Level.create(name: 'beginner' , description: 'knows nothing')
lvl2 = Level.create(name: 'intermediate' , description: 'knows something')
lvl3 = Level.create(name: 'advanced' , description: 'knows a lot')
############################################################################################################


############################################################################################################
cat1 = Category.create(name: 'Selections' , description: 'boolean Data Type')

#1
question = Question.create(question: 'The less than or equal to comparison operator in Java is __________.',
                           category_id: cat1.id,
                           level_id: lvl1.id
                           )
                           
ans1 = Answer.create( answer: '<', is_correct: false)
ans2 = Answer.create( answer: '<=', is_correct: true)
ans3 = Answer.create( answer: '=<', is_correct: false)
ans4 = Answer.create( answer: '<<', is_correct: false)
ans5 = Answer.create( answer: '!=', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)


#2
question = Question.create(question: 'The equal comparison operator in Java is __________.',
                           category_id: cat1.id,
                           level_id: lvl1.id
                           )
                           
ans1 = Answer.create( answer: '<>', is_correct: false)
ans2 = Answer.create( answer: '!=', is_correct: false)
ans3 = Answer.create( answer: '==', is_correct: true)
ans4 = Answer.create( answer: '^=', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)

#3
question = Question.create(question: 'What is 1 + 1 + 1 + 1 + 1 == 5?',
                           category_id: cat1.id,
                           level_id: lvl1.id
                           )
                           
ans1 = Answer.create( answer: 'true', is_correct: true)
ans2 = Answer.create( answer: 'false', is_correct: false)
ans3 = Answer.create( answer: 'There is no guarantee that 1 + 1 + 1 + 1 + 1 == 5 is true.', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)


#4
question = Question.create(question: 'What is 1.0 + 1.0 + 1.0 + 1.0 + 1.0 == 5.0?',
                           category_id: cat1.id,
                           level_id: lvl1.id
                           )
                           
ans1 = Answer.create( answer: 'true', is_correct: false)
ans2 = Answer.create( answer: 'false', is_correct: false)
ans3 = Answer.create( answer: 'There is no guarantee that 1.0 + 1.0 + 1.0 + 1.0 + 1.0 == 5.0 is true.', is_correct: true)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)

#5
question = Question.create(question: 'In Java, the word true is ________.',
                           category_id: cat1.id,
                           level_id: lvl1.id
                           )
                           
ans1 = Answer.create( answer: 'a Java keyword', is_correct: false)
ans2 = Answer.create( answer: 'a Boolean literal', is_correct: true)
ans3 = Answer.create( answer: 'same as value 1', is_correct: false)
ans4 = Answer.create( answer: 'same as value 0', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)

#6
question = Question.create(question: 'Which of the following code displays the area of a circle if the radius is positive.',
                           category_id: cat1.id,
                           level_id: lvl1.id
                           )
                           
ans1 = Answer.create( answer: 'if (radius != 0) System.out.println(radius * radius * 3.14159);', is_correct: false)
ans2 = Answer.create( answer: 'if (radius >= 0) System.out.println(radius * radius * 3.14159);', is_correct: false)
ans3 = Answer.create( answer: 'if (radius > 0) System.out.println(radius * radius * 3.14159);', is_correct: true)
ans4 = Answer.create( answer: 'if (radius <= 0) System.out.println(radius * radius * 3.14159);', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#7
question = Question.create(question: 'Suppose isPrime is a boolean variable, which of the following is 
                                      the correct and best statement for testing if isPrime is true.',
                           category_id: cat1.id,
                           level_id: lvl1.id
                           )
                           
ans1 = Answer.create( answer: 'if (isPrime = true)', is_correct: false)
ans2 = Answer.create( answer: 'if (isPrime == true)', is_correct: false)
ans3 = Answer.create( answer: 'if (isPrime)', is_correct: true)
ans4 = Answer.create( answer: 'if (!isPrime = false)', is_correct: false)
ans5 = Answer.create( answer: 'if (!isPrime == false) ', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)


#8
question = Question.create(question: 'The __________ method immediately terminates the program.',
                           category_id: cat1.id,
                           level_id: lvl1.id
                           )
                           
ans1 = Answer.create( answer: 'System.terminate(0);', is_correct: false)
ans2 = Answer.create( answer: 'System.halt(0);', is_correct: false)
ans3 = Answer.create( answer: 'System.exit(0);', is_correct: true)
ans4 = Answer.create( answer: 'System.quit(0);', is_correct: false)
ans5 = Answer.create( answer: 'System.stop(0);', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)


#9
question = Question.create(question: 'Which of the following is the correct expression that evaluates 
                                      to true if the number x is between 1 and 100 or the number is negative?',
                           category_id: cat1.id,
                           level_id: lvl1.id
                           )
                           
ans1 = Answer.create( answer: '1 < x < 100 && x < 0', is_correct: false)
ans2 = Answer.create( answer: '((x < 100) && (x > 1)) || (x < 0)', is_correct: true)
ans3 = Answer.create( answer: '((x < 100) && (x > 1)) && (x < 0)', is_correct: false)
ans4 = Answer.create( answer: '(1 > x > 100) || (x < 0)', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#10
question = Question.create(question: 'Assume x = 4 and y = 5, Which of the following is true?',
                           category_id: cat1.id,
                           level_id: lvl1.id
                           )
                           
ans1 = Answer.create( answer: 'x < 5 && y < 5', is_correct: false)
ans2 = Answer.create( answer: 'x < 5 || y < 5', is_correct: true)
ans3 = Answer.create( answer: 'x > 5 && y > 5', is_correct: false)
ans4 = Answer.create( answer: 'x > 5 || y > 5', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#11
question = Question.create(question: 'Assume x = 4, Which of the following is true?',
                           category_id: cat1.id,
                           level_id: lvl1.id
                           )
                           
ans1 = Answer.create( answer: '!(x == 4)', is_correct: false)
ans2 = Answer.create( answer: 'x != 4', is_correct: false)
ans3 = Answer.create( answer: 'x == 5', is_correct: false)
ans4 = Answer.create( answer: 'x != 5', is_correct: true)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#12
question = Question.create(question: 'Which of the following is equivalent to x != y?',
                           category_id: cat1.id,
                           level_id: lvl1.id
                           )
                           
ans1 = Answer.create( answer: '! (x == y)', is_correct: true)
ans2 = Answer.create( answer: 'x > y && x < y', is_correct: false)
ans3 = Answer.create( answer: 'x >= y || x <= y', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)


#13
question = Question.create(question: 'Suppose x=10 and y=10. What is x after evaluating the expression (y > 10) && (x-- > 10)?',
                           category_id: cat1.id,
                           level_id: lvl1.id
                           )
                           
ans1 = Answer.create( answer: '9', is_correct: false)
ans2 = Answer.create( answer: '10', is_correct: true)
ans3 = Answer.create( answer: '11', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)


#14
question = Question.create(question: 'Suppose x=10 and y=10 what is x after evaluating the expression (y > 10) && (x++ > 10).',
                           category_id: cat1.id,
                           level_id: lvl1.id
                           )
                           
ans1 = Answer.create( answer: '9', is_correct: false)
ans2 = Answer.create( answer: '10', is_correct: true)
ans3 = Answer.create( answer: '11', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)

#15
question = Question.create(question: 'Suppose x=10 and y=10 what is x after evaluating the expression (y >= 10) || (x-- > 10).',
                           category_id: cat1.id,
                           level_id: lvl1.id
                           )
                           
ans1 = Answer.create( answer: '9', is_correct: false)
ans2 = Answer.create( answer: '10', is_correct: true)
ans3 = Answer.create( answer: '11', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)

#16
question = Question.create(question: 'Suppose x=10 and y=10 what is x after evaluating the expression (y >= 10) || (x++ > 10).',
                           category_id: cat1.id,
                           level_id: lvl1.id
                           )
                           
ans1 = Answer.create( answer: '9', is_correct: false)
ans2 = Answer.create( answer: '10', is_correct: true)
ans3 = Answer.create( answer: '11', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)


#17
question = Question.create(question: 'To check whether a char variable ch is an uppercase letter, you write ___________.',
                           category_id: cat1.id,
                           level_id: lvl1.id
                           )
                           
ans1 = Answer.create( answer: '(ch >= "A" && ch >= "Z")', is_correct: false)
ans2 = Answer.create( answer: '(ch >= "A" && ch <= "Z")', is_correct: true)
ans3 = Answer.create( answer: '(ch >= "A" || ch <= "Z")', is_correct: false)
ans4 = Answer.create( answer: '("A" <= ch <= "Z")', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)














############################################################################################################
cat2 = Category.create(name: 'Selections' , description: 'Formatting Console Output and Strings')


#18
question = Question.create(question: 'The statement System.out.printf("%3.1f", 1234.56) outputs ___________.',
                           category_id: cat2.id,
                           level_id: lvl2.id
                           )
                           
ans1 = Answer.create( answer: '123.4', is_correct: false)
ans2 = Answer.create( answer: '123.5', is_correct: false)
ans3 = Answer.create( answer: '1234.5', is_correct: false)
ans4 = Answer.create( answer: '1234.56', is_correct: false)
ans5 = Answer.create( answer: '1234.6', is_correct: true)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)

#19
question = Question.create(question: 'The statement System.out.printf("%3.1e", 1234.56) outputs ___________.',
                           category_id: cat2.id,
                           level_id: lvl2.id
                           )
                           
ans1 = Answer.create( answer: '0.1e+04', is_correct: false)
ans2 = Answer.create( answer: '0.123456e+04', is_correct: false)
ans3 = Answer.create( answer: '0.123e+04', is_correct: false)
ans4 = Answer.create( answer: '1.2e+03', is_correct: true)
ans5 = Answer.create( answer: '1.23+03', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)


#20
question = Question.create(question: 'The statement System.out.printf("%5d", 123456) outputs ___________.',
                           category_id: cat2.id,
                           level_id: lvl2.id
                           )
                           
ans1 = Answer.create( answer: '12345', is_correct: false)
ans2 = Answer.create( answer: '23456', is_correct: false)
ans3 = Answer.create( answer: '123456', is_correct: true)
ans4 = Answer.create( answer: '123456', is_correct: false)
ans5 = Answer.create( answer: '12345.6', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)

#21
question = Question.create(question: 'The statement System.out.printf("%10s", "123456") outputs ___________. (Note: * represents a space)',
                           category_id: cat2.id,
                           level_id: lvl2.id
                           )
                           
ans1 = Answer.create( answer: '123456****', is_correct: false)
ans2 = Answer.create( answer: '23456*****', is_correct: false)
ans3 = Answer.create( answer: '12345*****', is_correct: false)
ans4 = Answer.create( answer: '****123456', is_correct: true)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)

#22
question = Question.create(question: 'Suppose a number contains integer value 4, which of the following statement is correct?',
                           category_id: cat2.id,
                           level_id: lvl2.id
                           )
                           
ans1 = Answer.create( answer: 'System.out.printf("%3d %4d", number, Math.pow(number, 1.5));', is_correct: false)
ans2 = Answer.create( answer: 'System.out.printf("%3d %4.2d", number, Math.pow(number, 1.5));', is_correct: false)
ans3 = Answer.create( answer: 'System.out.printf("%3d %4.2f", number, Math.pow(number, 1.5));', is_correct: true)
ans4 = Answer.create( answer: 'System.out.printf("%3f %4.2d", number, Math.pow(number, 1.5));', is_correct: false)
ans5 = Answer.create( answer: 'System.out.printf("%3f %4.2f", number, Math.pow(number, 1.5));', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)


############################################################################################################
cat3 = Category.create(name: 'Selections' , description: 'Operator Precedence and Associativity')


#23
question = Question.create(question: 'The order of the precedence (from high to low) of the operators binary +, *, &&, || is:',
                           category_id: cat3.id,
                           level_id: lvl2.id
                           )
                           
ans1 = Answer.create( answer: '&&, ||, *, +', is_correct: false)
ans2 = Answer.create( answer: '*, +, &&, ||', is_correct: true)
ans3 = Answer.create( answer: '*, +, ||, &&', is_correct: false)
ans4 = Answer.create( answer: '||, &&, *, +', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#24
question = Question.create(question: 'Which of the following operators are right-associative.',
                           category_id: cat3.id,
                           level_id: lvl2.id
                           )
                           
ans1 = Answer.create( answer: '*', is_correct: false)
ans2 = Answer.create( answer: '+ (binary +)', is_correct: false)
ans3 = Answer.create( answer: '%', is_correct: false)
ans4 = Answer.create( answer: '&&', is_correct: false)
ans5 = Answer.create( answer: '=', is_correct: true)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)


#25
question = Question.create(question: 'What is the value of the following expression? true || true && false',
                           category_id: cat3.id,
                           level_id: lvl1.id
                           )                 
                                     
ans1 = Answer.create( answer: 'true', is_correct:  true)
ans2 = Answer.create( answer: ' false', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)


############################################################################################################

cat4 = Category.create(name: 'Methods' , description: 'Defining a Method')

#26
question = Question.create(question: 'Suppose your method does not return any value, which of the following keywords can be used as a return type?',
                           category_id: cat4.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: 'void', is_correct: true)
ans2 = Answer.create( answer: 'int', is_correct: false)
ans3 = Answer.create( answer: 'double', is_correct: false)
ans4 = Answer.create( answer: 'public', is_correct: false)
ans5 = Answer.create( answer: 'None of the above', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)


#27
question = Question.create(question: 'The signature of a method consists of ____________.',
                           category_id: cat4.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: 'method name', is_correct: false)
ans2 = Answer.create( answer: 'method name and parameter list', is_correct: true)
ans3 = Answer.create( answer: 'return type, method name, and parameter list', is_correct: false)
ans4 = Answer.create( answer: 'parameter list', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#28
question = Question.create(question: 'All Java applications must have a method __________.',
                           category_id: cat4.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: 'public static Main(String[] args)', is_correct: false)
ans2 = Answer.create( answer: 'public static Main(String args[])', is_correct: false)
ans3 = Answer.create( answer: 'public static void main(String[] args)', is_correct: true)
ans4 = Answer.create( answer: 'public void main(String[] args)', is_correct: false)
ans5 = Answer.create( answer: 'public static main(String[] args)', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)


############################################################################################################

cat5 = Category.create(name: 'Methods' , description: 'Calling a Method')

#29
question = Question.create(question: 'Arguments to methods always appear within __________.',
                           category_id: cat5.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: 'brackets', is_correct: false)
ans2 = Answer.create( answer: 'parentheses', is_correct: true)
ans3 = Answer.create( answer: 'curly braces', is_correct: false)
ans4 = Answer.create( answer: 'quotation marks', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)

#30
question = Question.create(question: 'Each time a method is invoked, the system stores parameters and local variables in an area of memory, 
                                      known as _______, which stores elements in last-in first-out fashion.',
                           category_id: cat5.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: 'a heap', is_correct: false)
ans2 = Answer.create( answer: 'storage area', is_correct: false)
ans3 = Answer.create( answer: 'a stack', is_correct: true)
ans4 = Answer.create( answer: 'an array', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)




############################################################################################################

cat6 = Category.create(name: 'Methods' , description: 'Void Method Example')


#31
question = Question.create(question: 'Which of the following should be defined as a void method?',
                           category_id: cat6.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: 'Write a method that prints integers from 1 to 100.', is_correct: true)
ans2 = Answer.create( answer: 'Write a method that returns a random integer from 1 to 100.', is_correct: false)
ans3 = Answer.create( answer: 'Write a method that checks whether current second is an integer from 1 to 100.', is_correct: false)
ans4 = Answer.create( answer: 'Write a method that converts an uppercase letter to lowercase.', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


############################################################################################################

cat7 = Category.create(name: 'Methods' , description: 'Passing Parameters by Values')

#32
question = Question.create(question: 'When you invoke a method with a parameter, the value of the argument is 
                                      passed to the parameter. This is referred to as _________.',
                           category_id: cat7.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: 'method invocation', is_correct: false)
ans2 = Answer.create( answer: 'pass by value', is_correct: true)
ans3 = Answer.create( answer: 'pass by reference', is_correct: false)
ans4 = Answer.create( answer: 'pass by name', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


############################################################################################################

cat8 = Category.create(name: 'Methods' , description: 'The Scope of Variables')



#33
question = Question.create(question: 'A variable defined inside a method is referred to as __________.',
                           category_id: cat8.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: 'a global variable', is_correct: false)
ans2 = Answer.create( answer: 'a method variable', is_correct: false)
ans3 = Answer.create( answer: 'a block variable', is_correct: false)
ans4 = Answer.create( answer: 'a local variable', is_correct: true)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


############################################################################################################

cat9 = Category.create(name: 'Methods' , description: 'The Math Class')

#34
question = Question.create(question: 'Which of the following is a possible output from invoking Math.random()?',
                           category_id: cat9.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: '3.43', is_correct: false)
ans2 = Answer.create( answer: '0.5', is_correct: true)
ans3 = Answer.create( answer: '1.0', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)



#35
question = Question.create(question: 'What is Math.round(3.6)?',
                           category_id: cat9.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: '3.0', is_correct: false)
ans2 = Answer.create( answer: '3', is_correct: false)
ans3 = Answer.create( answer: '4', is_correct: true)
ans4 = Answer.create( answer: '4.0', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)

#36
question = Question.create(question: 'What is Math.rint(3.6)?',
                           category_id: cat9.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: '3.0', is_correct: false)
ans2 = Answer.create( answer: '3', is_correct: false)
ans3 = Answer.create( answer: '4.0', is_correct: true)
ans4 = Answer.create( answer: '5.0', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)

#37
question = Question.create(question: 'What is Math.rint(3.5)?',
                           category_id: cat9.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: '3.0', is_correct: false)
ans2 = Answer.create( answer: '3', is_correct: false)
ans3 = Answer.create( answer: '4', is_correct: false)
ans4 = Answer.create( answer: '4.0', is_correct: true)
ans5 = Answer.create( answer: '5.0', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)


#38
question = Question.create(question: 'What is Math.ceil(3.6)?',
                           category_id: cat9.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: '3.0', is_correct: false)
ans2 = Answer.create( answer: '3', is_correct: false)
ans3 = Answer.create( answer: '4.0', is_correct: true)
ans4 = Answer.create( answer: '5.0', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#39
question = Question.create(question: 'What is Math.floor(3.6)?',
                           category_id: cat9.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: '3.0', is_correct: true)
ans2 = Answer.create( answer: '3', is_correct: false)
ans3 = Answer.create( answer: '4.0', is_correct: false)
ans4 = Answer.create( answer: '5.0', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#40
question = Question.create(question: 'What is Math.sqrt(4.0)?',
                           category_id: cat9.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: '2', is_correct: false)
ans2 = Answer.create( answer: '2.5', is_correct: false)
ans3 = Answer.create( answer: '1', is_correct: false)
ans4 = Answer.create( answer: '3.0', is_correct: false)
ans5 = Answer.create( answer: '2.0', is_correct: true)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)


#41
question = Question.create(question: 'What is Math.max(Math.min(3, 6), 2)?',
                           category_id: cat9.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: '2', is_correct: false)
ans2 = Answer.create( answer: '3', is_correct: true)
ans3 = Answer.create( answer: '4', is_correct: false)
ans4 = Answer.create( answer: '2.0', is_correct: false)
ans5 = Answer.create( answer: '3.0', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)

#42
question = Question.create(question: 'What is Math.sin(Math.PI / 2)?',
                           category_id: cat9.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: '1', is_correct: false)
ans2 = Answer.create( answer: '0.5', is_correct: false)
ans3 = Answer.create( answer: '0.4', is_correct: false)
ans4 = Answer.create( answer: '1.5', is_correct: false)
ans5 = Answer.create( answer: '1.0', is_correct: true)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)


#43
question = Question.create(question: 'What is Math.sin(Math.PI / 6)?',
                           category_id: cat9.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: '1', is_correct: false)
ans2 = Answer.create( answer: '0.5', is_correct: true)
ans3 = Answer.create( answer: '0.4', is_correct: false)
ans4 = Answer.create( answer: '1.5', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)

#44
question = Question.create(question: 'What is Math.asin(0.5)?',
                           category_id: cat9.id,
                           level_id: lvl2.id
                           )          
ans1 = Answer.create( answer: '90', is_correct: false)
ans2 = Answer.create( answer: '30', is_correct: false)
ans3 = Answer.create( answer: 'Math.PI / 6', is_correct: true)
ans4 = Answer.create( answer: 'Math.PI / 2', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


############################################################################################################

cat10 = Category.create(name: 'Methods' , description: 'Generating Random Characters')

#45
question = Question.create(question: '(int)(Math.random() * (65535 + 1)) returns a random number __________.',
                           category_id: cat10.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: 'between 1 and 65536', is_correct: false)
ans2 = Answer.create( answer: 'between 1 and 65535', is_correct: false)
ans3 = Answer.create( answer: 'between 0 and 65535', is_correct: true)
ans4 = Answer.create( answer: 'between 0 and 65536', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#46
question = Question.create(question: '(int)("a" + Math.random() * ("z" - "a" + 1)) returns a random number __________.',
                           category_id: cat10.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: 'between 0 and (int)"z"', is_correct: false)
ans2 = Answer.create( answer: 'between (int)"a" and (int)"z"', is_correct: true)
ans3 = Answer.create( answer: 'between "a"  and "z"', is_correct: false)
ans4 = Answer.create( answer: '"a"  and "y"', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)

#47
question = Question.create(question: '(char)("a" + Math.random() * ("z" - "a" + 1)) returns a random character __________.',
                           category_id: cat10.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: 'between "a" and "z"', is_correct: true)
ans2 = Answer.create( answer: 'between "a" and "y"', is_correct: false)
ans3 = Answer.create( answer: 'between "b" and "z"', is_correct: false)
ans4 = Answer.create( answer: '"b" and "y"', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#48
question = Question.create(question: 'Which of the following is the best for generating random integer 0 or 1?',
                           category_id: cat10.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: '(int)Math.random()', is_correct: false)
ans2 = Answer.create( answer: '(int)Math.random() + 1', is_correct: false)
ans3 = Answer.create( answer: '(int)(Math.random() + 0.5)', is_correct: true)
ans4 = Answer.create( answer: '(int)(Math.random() + 0.2)', is_correct: false)
ans5 = Answer.create( answer: '(int)(Math.random() + 0.8)', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)





############################################################################################################

cat11 = Category.create(name: 'Methods' , description: 'Method Abstraction and Stepwise Refinement')

#49
question = Question.create(question: '__________ is to implement one method in the structure chart at a time from the top to the bottom.',
                           category_id: cat11.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: 'Bottom-up approach', is_correct: false)
ans2 = Answer.create( answer: 'Top-down approach', is_correct: true)
ans3 = Answer.create( answer: 'Bottom-up and top-down approach', is_correct: false)
ans4 = Answer.create( answer: 'Stepwise refinement', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)

#50
question = Question.create(question: '__________ is a simple but incomplete version of a method.',
                           category_id: cat11.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: 'A stub', is_correct: true)
ans2 = Answer.create( answer: 'A main method', is_correct: false)
ans3 = Answer.create( answer: 'A non-main method', is_correct: false)
ans4 = Answer.create( answer: 'A method developed using top-down approach', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


############################################################################################################

cat12 = Category.create(name: 'Single-Dimensional Arrays' , description: 'Array Basics')


#51
question = Question.create(question: 'What is the representation of the third element in an array called a?',
                           category_id: cat12.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: 'a[2]', is_correct: true)
ans2 = Answer.create( answer: 'a(2)', is_correct: false)
ans3 = Answer.create( answer: 'a[3]', is_correct: false)
ans4 = Answer.create( answer: 'a(3)', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#52
question = Question.create(question: 'If you declare an array double[] list = {3.4, 2.0, 3.5, 5.5}, list[1] is ________.',
                           category_id: cat12.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: '3.4', is_correct: false)
ans2 = Answer.create( answer: '2.0', is_correct: true)
ans3 = Answer.create( answer: '3.5', is_correct: false)
ans4 = Answer.create( answer: '5.5', is_correct: false)
ans5 = Answer.create( answer: 'undefined', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)


#53
question = Question.create(question: 'If you declare an array double[] list = {3.4, 2.0, 3.5, 5.5}, the highest index in array list is __________.',
                           category_id: cat12.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: '0', is_correct: false)
ans2 = Answer.create( answer: '1', is_correct: false)
ans3 = Answer.create( answer: '2', is_correct: false)
ans4 = Answer.create( answer: '3', is_correct: true)
ans5 = Answer.create( answer: '4', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)



#54
question = Question.create(question: 'How many elements are in array double[] list = new double[5]?',
                           category_id: cat12.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: '4', is_correct: false)
ans2 = Answer.create( answer: '5', is_correct: true)
ans3 = Answer.create( answer: '6', is_correct: false)
ans4 = Answer.create( answer: '0', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#55
question = Question.create(question: 'What is the correct term for numbers[99]?',
                           category_id: cat12.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: 'index', is_correct: false)
ans2 = Answer.create( answer: 'index variable', is_correct: false)
ans3 = Answer.create( answer: 'indexed variable', is_correct: true)
ans4 = Answer.create( answer: 'array variable', is_correct: false)
ans5 = Answer.create( answer: 'array', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)


#56
question = Question.create(question: 'Assume int[] t = {1, 2, 3, 4}. What is t.length?',
                           category_id: cat12.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: '0', is_correct: false)
ans2 = Answer.create( answer: '3', is_correct: false)
ans3 = Answer.create( answer: '4', is_correct: true)
ans4 = Answer.create( answer: '5', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)

#57
question = Question.create(question: 'The __________ method copies the sourceArray to the targetArray.',
                           category_id: cat12.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: 'System.copyArrays(sourceArray, 0, targetArray, 0, sourceArray.length);', is_correct: false)
ans2 = Answer.create( answer: 'System.copyarrays(sourceArray, 0, targetArray, 0, sourceArray.length);', is_correct: false)
ans3 = Answer.create( answer: 'System.arrayCopy(sourceArray, 0, targetArray, 0, sourceArray.length);', is_correct: false)
ans4 = Answer.create( answer: 'System.arraycopy(sourceArray, 0, targetArray, 0, sourceArray.length);', is_correct: true)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


cat13 = Category.create(name: 'Single-Dimensional Arrays' , description: 'Passing Arrays to Methods')


#58
question = Question.create(question: 'When you pass an array to a method, the method receives __________.',
                           category_id: cat13.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: 'a copy of the array', is_correct: false)
ans2 = Answer.create( answer: 'a copy of the first element', is_correct: false)
ans3 = Answer.create( answer: 'the reference of the array', is_correct: true)
ans4 = Answer.create( answer: 'the length of the array', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)

#59
question = Question.create(question: 'The JVM stores the array in an area of memory, called _______, which is used for dynamic 
memory allocation where blocks of memory are allocated and freed in an arbitrary order.',
                           category_id: cat13.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: 'stack', is_correct: false)
ans2 = Answer.create( answer: 'heap', is_correct: true)
ans3 = Answer.create( answer: 'memory block', is_correct: false)
ans4 = Answer.create( answer: 'dynamic memory', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)



cat14 = Category.create(name: 'Single-Dimensional Arrays' , description: 'Returning an Array from a Method')



#60
question = Question.create(question: 'When you return an array from a method, the method returns __________.',
                           category_id: cat14.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: 'a copy of the array', is_correct: false)
ans2 = Answer.create( answer: 'a copy of the first element', is_correct: false)
ans3 = Answer.create( answer: 'the reference of the array', is_correct: true)
ans4 = Answer.create( answer: 'the length of the array', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


cat15 = Category.create(name: 'Single-Dimensional Arrays' , description: 'Searching Arrays')



#61
question = Question.create(question: 'For the binarySearch method in Section 6.9.2, what is low and high after the first iteration
 of the while loop when invoking binarySearch(new int[]{1, 4, 6, 8, 10, 15, 20}, 11)?',
                           category_id: cat15.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: 'low is 0 and high is 6', is_correct: false)
ans2 = Answer.create( answer: 'low is 0 and high is 3', is_correct: false)
ans3 = Answer.create( answer: 'low is 3 and high is 6', is_correct: false)
ans4 = Answer.create( answer: 'low is 4 and high is 6', is_correct: true)
ans5 = Answer.create( answer: 'low is 0 and high is 5', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)


#62
question = Question.create(question: 'If a key is not in the list, the binarySearch method returns _________.',
                           category_id: cat15.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: 'insertion point', is_correct: false)
ans2 = Answer.create( answer: 'insertion point - 1', is_correct: false)
ans3 = Answer.create( answer: '-(insertion point + 1)', is_correct: true)
ans4 = Answer.create( answer: '-insertion point', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


cat16 = Category.create(name: 'Single-Dimensional Arrays' , description: 'Sorting Arrays')



#63
question = Question.create(question: 'Use the selectionSort method presented in this section to answer this question. 
Assume list is {3.1, 3.1, 2.5, 6.4, 2.1}, what is the content of list after the first iteration of the outer loop in the method?',
                           category_id: cat16.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: '3.1, 3.1, 2.5, 6.4, 2.1', is_correct: false)
ans2 = Answer.create( answer: '2.5, 3.1, 3.1, 6.4, 2.1', is_correct: false)
ans3 = Answer.create( answer: '2.1, 2.5, 3.1, 3.1, 6.4', is_correct: false)
ans4 = Answer.create( answer: '3.1, 3.1, 2.5, 2.1, 6.4', is_correct: false)
ans5 = Answer.create( answer: '2.1, 3.1, 2.5, 6.4, 3.1', is_correct: true)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)


cat17 = Category.create(name: 'Single-Dimensional Arrays' , description: 'The Arrays Class')


#64
question = Question.create(question: 'The __________ method sorts the array scores of the double[] type.',
                           category_id: cat17.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: 'java.util.Arrays(scores)', is_correct: false)
ans2 = Answer.create( answer: 'java.util.Arrays.sorts(scores)', is_correct: false)
ans3 = Answer.create( answer: 'java.util.Arrays.sort(scores)', is_correct: true)
ans4 = Answer.create( answer: 'Njava.util.Arrays.sortArray(scores)', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)

#65
question = Question.create(question: 'Assume int[] scores = {1, 20, 30, 40, 50}, what value does java.util.Arrays.binarySearch(scores, 30) return?',
                           category_id: cat17.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: '0', is_correct: false)
ans2 = Answer.create( answer: '-1', is_correct: false)
ans3 = Answer.create( answer: '1', is_correct: false)
ans4 = Answer.create( answer: '2', is_correct: true)
ans5 = Answer.create( answer: '-2', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)


#66
question = Question.create(question: 'Assume int[] scores = {1, 20, 30, 40, 50}, what value does java.util.Arrays.binarySearch(scores, 3) return?',
                           category_id: cat17.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: '0', is_correct: false)
ans2 = Answer.create( answer: '-1', is_correct: false)
ans3 = Answer.create( answer: '1', is_correct: false)
ans4 = Answer.create( answer: '2', is_correct: false)
ans5 = Answer.create( answer: '-2', is_correct: true)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)
question.question_answers.create(answer_id: ans5.id)


#66
question = Question.create(question: 'Assume int[] scores = {3, 4, 1, 9, 13}, which of the following statement displays all the element values in the array?',
                           category_id: cat17.id,
                           level_id: lvl3.id
                           )          
ans1 = Answer.create( answer: 'System.out.println(scores);', is_correct: false)
ans2 = Answer.create( answer: 'System.out.println(scores.toString());', is_correct: false)
ans3 = Answer.create( answer: 'System.out.println(java.util.Arrays.toString(scores)); *', is_correct: false)
ans4 = Answer.create( answer: 'System.out.println(scores[0]);', is_correct: false)


question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)












