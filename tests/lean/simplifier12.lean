import algebra.ring
open algebra

set_option simplify.max_steps 1000
universe l
constants (T : Type.{l}) (s : algebra.comm_ring T)
constants (x1 x2 x3 x4 : T) (f g : T → T)
attribute s [instance]

attribute add.comm [simp]
attribute add.assoc [simp]
attribute left_distrib [simp]
attribute right_distrib [simp]

attribute mul.comm [simp]
attribute mul.assoc [simp]

theorem add.o2 [simp] {A : Type} [s : add_comm_semigroup A] (a b c : A) :
  a + (b + c) = b + (a + c) := sorry

#simplify eq 0 x2 + (g x1 + (f x3 * 3 * (x2 + g x1 * 7) * x2)) + 5 * (x4 + f x1)

