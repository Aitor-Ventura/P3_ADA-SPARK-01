-- Método vacío que copia un vector en otro vector
-- Procedure which clones a vector

package Pkg_copyVector with SPARK_Mode is
   -- Variable global
   Last_Len : Positive;
   -- Definición de vector: un array de hasta MAX valores de Naturales
   MAX : constant := 5;
   type Vector is array(Positive range 1 .. MAX) of Natural;

   procedure copyVector
     (v1 : Vector; cpy: out Vector)
     with
       Global => (Output => (Last_Len)),
       Depends => (Last_Len => null, cpy => (v1)),
       Pre => v1'Length > 0,
       Post => (for all k in v1'Range => cpy(k) = v1(k));

end Pkg_copyVector;


