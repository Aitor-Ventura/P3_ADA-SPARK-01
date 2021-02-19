-- Función que devuelve 1 si el valor pasado por parámetro es primo, 0 si no
-- Function that returns 1 if the value given is prime, 0 if it isn't

package Pkg_isPrime with SPARK_Mode is

   function isPrime
     (num : Natural) return Natural
     with
       Global => null,
       Depends => (isPrime'Result => (num)),
       Pre => (num <= Natural'Last),
       Post => (if num in 0 .. 2 then isPrime'Result = 1
                elsif num >= 3 and then isPrime'Result = 1 then
                  (for all i in 2 .. num - 1 => num rem i /= 0)
                else (for some i in 2 .. num - 1 => num rem i = 0));

end Pkg_isPrime;


