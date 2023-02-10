def identify_class(obj)
#Use the Case conditional statement.
    case obj
#Use when to give types to the conditions.
        when Hacker
#Use puts to print the case.
        puts "It's a Hacker!"
        when Submission
        puts "It's a Submission!"
        when TestCase
        puts "It's a TestCase!"
        when Contest
        puts "It's a Contest!"
#Use else to show the negative in the conditional statement.
    else
        puts "It's an unknown model"
    end
end