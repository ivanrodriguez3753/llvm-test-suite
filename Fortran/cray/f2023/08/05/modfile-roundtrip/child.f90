! Child submodule: separate module procedure bodies.  `module procedure`
! bodies inherit the interface's dummies by copying them from
! m_bounds_provider.mod, so every bound that names another dummy (or an
! interface-local array) must still name the body's own copy.  This file's
! own module file, m_bounds_provider-child.mod, is read by the grandchild.
submodule(m_bounds_provider) child
  implicit none
contains

  module procedure sep
    z = 2.0
    b = 1.0
  end procedure

  module procedure g
    r = 3.0
  end procedure

  module procedure reverse
    d = 5.0
  end procedure

end submodule child
