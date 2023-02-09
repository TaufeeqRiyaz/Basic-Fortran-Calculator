program calculator
   implicit none
   integer :: num1, num2, result
   character(1) :: operator
   
   write(*,"(A)") "Enter operator (+, -, *, /): "
   read(*,'(A1)') operator
 
   
   write(*,"(A)") "Enter first number: "
   read(*,'(I5)') num1
   
   write(*,"(A)") "Enter second number: "
   read(*,'(I5)') num2
   
   if (operator .eq. '+') then
      result = num1 + num2
      write(*,"(A,I5)") "The result of addition is: ", result
   else if (operator .eq. '-') then
      result = num1 - num2
      write(*,"(A,I5)") "The result of subtraction is: ", result
   else if (operator .eq. '*') then
      result = num1 * num2
      write(*,"(A,I5)") "The result of multiplication is: ", result
   else if (operator .eq. '/') then
      if (num2 /= 0) then
         result = num1 / num2
         write(*,"(A,I5)") "The result of division is: ", result
      else
         write(*,"(A)") "Error: Cannot divide by zero"
      end if
   else
      write(*,"(A)") "Error: Invalid operator"
   end if
end program calculator
