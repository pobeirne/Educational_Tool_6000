# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



############################################################################################################
user1 = User.create(email: 'pobeirne@outlook.ie', password: '12345678', password_confirmation: '12345678')
############################################################################################################


############################################################################################################
lvl1 = Level.create(name: 'beginner' , description: 'knows nothing')
lvl2 = Level.create(name: 'intermediate' , description: 'knows something')
lvl3 = Level.create(name: 'advanced' , description: 'knows a lot')
############################################################################################################


############################################################################################################  
#Profile.create(
#               user_name: 'Paul OBeirne', 
#              description: 'Cool guy', 
#               avatar_url: 'https://www.science.unsw.edu.au/files/news/527C868C9284958A22F9E4D448BDDA12.JPG', 
#               college_name: 'National College Of Ireland', 
#               course_name: 'BSHC', 
#               year: '4', 
#               level_id: lvl1.id, 
#               user_id: user1.id
#               )
############################################################################################################



############################################################################################################
cat1 = Category.create(name: 'Selections' , description: 'boolean Data Type ')
cat2 = Category.create(name: 'Methods' , description: 'Defining a Method')
############################################################################################################


############################################################################################################
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



#13
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


#14
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


#15
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

#16
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

#17
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


#18
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



#19
question = Question.create(question: 'The statement System.out.printf("%3.1f", 1234.56) outputs ___________.',
                           category_id: cat1.id,
                           level_id: lvl1.id
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

#20
question = Question.create(question: 'The statement System.out.printf("%3.1e", 1234.56) outputs ___________.',
                           category_id: cat1.id,
                           level_id: lvl1.id
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


#21
question = Question.create(question: 'The statement System.out.printf("%5d", 123456) outputs ___________.',
                           category_id: cat1.id,
                           level_id: lvl1.id
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
                           category_id: cat1.id,
                           level_id: lvl1.id
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
                           category_id: cat1.id,
                           level_id: lvl1.id
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

#23
question = Question.create(question: 'The order of the precedence (from high to low) of the operators binary +, *, &&, || is:',
                           category_id: cat1.id,
                           level_id: lvl1.id
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
                           category_id: cat1.id,
                           level_id: lvl1.id
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
                           category_id: cat1.id,
                           level_id: lvl1.id
                           )                 
                                     
ans1 = Answer.create( answer: 'true', is_correct:  true)
ans2 = Answer.create( answer: ' false', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)


#25
question = Question.create(question: 'Suppose your method does not return any value, which of the following keywords can be used as a return type?',
                           category_id: cat2.id,
                           level_id: lvl1.id
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


#26
question = Question.create(question: 'The signature of a method consists of ____________.',
                           category_id: cat2.id,
                           level_id: lvl1.id
                           )          
ans1 = Answer.create( answer: 'method name', is_correct: false)
ans2 = Answer.create( answer: 'method name and parameter list', is_correct: true)
ans3 = Answer.create( answer: 'return type, method name, and parameter list', is_correct: false)
ans4 = Answer.create( answer: 'parameter list', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#27
question = Question.create(question: 'All Java applications must have a method __________.',
                           category_id: cat2.id,
                           level_id: lvl1.id
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


#28
question = Question.create(question: 'Arguments to methods always appear within __________.',
                           category_id: cat2.id,
                           level_id: lvl1.id
                           )          
ans1 = Answer.create( answer: 'brackets', is_correct: false)
ans2 = Answer.create( answer: 'parentheses', is_correct: true)
ans3 = Answer.create( answer: 'curly braces', is_correct: false)
ans4 = Answer.create( answer: 'quotation marks', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)

#29
question = Question.create(question: 'Each time a method is invoked, the system stores parameters and local variables in an area of memory, 
                                      known as _______, which stores elements in last-in first-out fashion.',
                           category_id: cat2.id,
                           level_id: lvl1.id
                           )          
ans1 = Answer.create( answer: 'a heap', is_correct: false)
ans2 = Answer.create( answer: 'storage area', is_correct: false)
ans3 = Answer.create( answer: 'a stack', is_correct: true)
ans4 = Answer.create( answer: 'an array', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#30
question = Question.create(question: 'Which of the following should be defined as a void method?',
                           category_id: cat2.id,
                           level_id: lvl1.id
                           )          
ans1 = Answer.create( answer: 'Write a method that prints integers from 1 to 100.', is_correct: true)
ans2 = Answer.create( answer: 'Write a method that returns a random integer from 1 to 100.', is_correct: false)
ans3 = Answer.create( answer: 'Write a method that checks whether current second is an integer from 1 to 100.', is_correct: false)
ans4 = Answer.create( answer: 'Write a method that converts an uppercase letter to lowercase.', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)



#31
question = Question.create(question: 'When you invoke a method with a parameter, the value of the argument is 
                                      passed to the parameter. This is referred to as _________.',
                           category_id: cat2.id,
                           level_id: lvl1.id
                           )          
ans1 = Answer.create( answer: 'method invocation', is_correct: false)
ans2 = Answer.create( answer: 'pass by value', is_correct: true)
ans3 = Answer.create( answer: 'pass by reference', is_correct: false)
ans4 = Answer.create( answer: 'pass by name', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#32
question = Question.create(question: 'A variable defined inside a method is referred to as __________.',
                           category_id: cat2.id,
                           level_id: lvl1.id
                           )          
ans1 = Answer.create( answer: 'a global variable', is_correct: false)
ans2 = Answer.create( answer: 'a method variable', is_correct: false)
ans3 = Answer.create( answer: 'a block variable', is_correct: false)
ans4 = Answer.create( answer: 'a local variable', is_correct: true)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)



#33
question = Question.create(question: 'Which of the following is a possible output from invoking Math.random()?',
                           category_id: cat2.id,
                           level_id: lvl1.id
                           )          
ans1 = Answer.create( answer: '3.43', is_correct: false)
ans2 = Answer.create( answer: '0.5', is_correct: true)
ans3 = Answer.create( answer: '1.0', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)



#33
question = Question.create(question: 'What is Math.round(3.6)?',
                           category_id: cat2.id,
                           level_id: lvl1.id
                           )          
ans1 = Answer.create( answer: '3.0', is_correct: false)
ans2 = Answer.create( answer: '3', is_correct: false)
ans3 = Answer.create( answer: '4', is_correct: true)
ans4 = Answer.create( answer: '4.0', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)

#34
question = Question.create(question: 'What is Math.rint(3.6)?',
                           category_id: cat2.id,
                           level_id: lvl1.id
                           )          
ans1 = Answer.create( answer: '3.0', is_correct: false)
ans2 = Answer.create( answer: '3', is_correct: false)
ans3 = Answer.create( answer: '4.0', is_correct: true)
ans4 = Answer.create( answer: '5.0', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)

#35
question = Question.create(question: 'What is Math.rint(3.5)?',
                           category_id: cat2.id,
                           level_id: lvl1.id
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


#36
question = Question.create(question: 'What is Math.ceil(3.6)?',
                           category_id: cat2.id,
                           level_id: lvl1.id
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
question = Question.create(question: 'What is Math.floor(3.6)?',
                           category_id: cat2.id,
                           level_id: lvl1.id
                           )          
ans1 = Answer.create( answer: '3.0', is_correct: true)
ans2 = Answer.create( answer: '3', is_correct: false)
ans3 = Answer.create( answer: '4.0', is_correct: false)
ans4 = Answer.create( answer: '5.0', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#38
question = Question.create(question: 'What is Math.sqrt(4.0)?',
                           category_id: cat2.id,
                           level_id: lvl1.id
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


#39
question = Question.create(question: 'What is Math.max(Math.min(3, 6), 2)?',
                           category_id: cat2.id,
                           level_id: lvl1.id
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

#40
question = Question.create(question: 'What is Math.sin(Math.PI / 2)?',
                           category_id: cat2.id,
                           level_id: lvl1.id
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


#41
question = Question.create(question: 'What is Math.sin(Math.PI / 6)?',
                           category_id: cat2.id,
                           level_id: lvl1.id
                           )          
ans1 = Answer.create( answer: '1', is_correct: false)
ans2 = Answer.create( answer: '0.5', is_correct: true)
ans3 = Answer.create( answer: '0.4', is_correct: false)
ans4 = Answer.create( answer: '1.5', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)

#42
question = Question.create(question: 'What is Math.asin(0.5)?',
                           category_id: cat2.id,
                           level_id: lvl1.id
                           )          
ans1 = Answer.create( answer: '90', is_correct: false)
ans2 = Answer.create( answer: '30', is_correct: false)
ans3 = Answer.create( answer: 'Math.PI / 6', is_correct: true)
ans4 = Answer.create( answer: 'Math.PI / 2', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#43
question = Question.create(question: '(int)(Math.random() * (65535 + 1)) returns a random number __________.',
                           category_id: cat2.id,
                           level_id: lvl1.id
                           )          
ans1 = Answer.create( answer: 'between 1 and 65536', is_correct: false)
ans2 = Answer.create( answer: 'between 1 and 65535', is_correct: false)
ans3 = Answer.create( answer: 'between 0 and 65535', is_correct: true)
ans4 = Answer.create( answer: 'between 0 and 65536', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#44
question = Question.create(question: '(int)("a" + Math.random() * ("z" - "a" + 1)) returns a random number __________.',
                           category_id: cat2.id,
                           level_id: lvl1.id
                           )          
ans1 = Answer.create( answer: 'between 0 and (int)"z"', is_correct: false)
ans2 = Answer.create( answer: 'between (int)"a" and (int)"z"', is_correct: true)
ans3 = Answer.create( answer: 'between "a"  and "z"', is_correct: false)
ans4 = Answer.create( answer: '"a"  and "y"', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)

#45
question = Question.create(question: '(char)("a" + Math.random() * ("z" - "a" + 1)) returns a random character __________.',
                           category_id: cat2.id,
                           level_id: lvl1.id
                           )          
ans1 = Answer.create( answer: 'between "a" and "z"', is_correct: true)
ans2 = Answer.create( answer: 'between "a" and "y"', is_correct: false)
ans3 = Answer.create( answer: 'between "b" and "z"', is_correct: false)
ans4 = Answer.create( answer: '"b" and "y"', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)


#46
question = Question.create(question: 'Which of the following is the best for generating random integer 0 or 1?',
                           category_id: cat2.id,
                           level_id: lvl1.id
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



#47
question = Question.create(question: '__________ is to implement one method in the structure chart at a time from the top to the bottom.',
                           category_id: cat2.id,
                           level_id: lvl1.id
                           )          
ans1 = Answer.create( answer: 'Bottom-up approach', is_correct: false)
ans2 = Answer.create( answer: 'Top-down approach', is_correct: true)
ans3 = Answer.create( answer: 'Bottom-up and top-down approach', is_correct: false)
ans4 = Answer.create( answer: 'Stepwise refinement', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)

#48
question = Question.create(question: '__________ is a simple but incomplete version of a method.',
                           category_id: cat2.id,
                           level_id: lvl1.id
                           )          
ans1 = Answer.create( answer: 'A stub', is_correct: true)
ans2 = Answer.create( answer: 'A main method', is_correct: false)
ans3 = Answer.create( answer: 'A non-main method', is_correct: false)
ans4 = Answer.create( answer: 'A method developed using top-down approach', is_correct: false)

question.question_answers.create(answer_id: ans1.id)
question.question_answers.create(answer_id: ans2.id)
question.question_answers.create(answer_id: ans3.id)
question.question_answers.create(answer_id: ans4.id)





