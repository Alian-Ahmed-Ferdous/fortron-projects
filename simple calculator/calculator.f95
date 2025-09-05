program calculator

implicit none

integer:: op
real:: a, b,ans
character:: step = "x"

!this is a calculator

do
    print *, "1.divide"
    print *, "2.multiple"
    print *, "3.add"
    print *, "4.subtract"
    print *, "enter options number :"
    read *, op

    if (op > 4 .or. op < 1 ) then

        print *, "No such options"
        stop

    end if

    if (step == "x") then
        print *, 'Enter a number: '
        read *, a
    end if

    print *, 'Enter a number: '
    read *, b

    if (op == 1) then

        if (abs(b) < 0.0000001 .and. abs(b) > -0.0000001) then

        print *, "divided by zero error"
        stop
        end if

        call div(a,b,ans)

    else if (op == 2) then

        call mul(a,b,ans)

    else if (op == 3) then

        call add(a,b,ans)

    else if (op == 4) then

        call sub(a,b,ans)

    end if

    print *, "Answers is: ", ans

    a = ans

    print *, "press c to continue manipulation of the answer"
    print *, "or press any other character to exit"
    read *, step

    if (step /= "c") then

        stop

    end if

end do

end program calculator


subroutine div(a,b,ans)

implicit none

real :: a, b, ans

print *, a
print *, b

ans = a / b

End subroutine div


subroutine mul(a,b,ans)

implicit none

real :: a, b, ans

ans = a * b

End subroutine mul


subroutine sub(a,b,ans)

implicit none

real :: a, b, ans

ans = a - b

End subroutine sub

subroutine add(a,b,ans)

implicit none

real :: a, b, ans

ans = a + b

End subroutine add
