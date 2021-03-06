(defsystem :ctype
  :depends-on ()
  :components
  ((:file "packages")
   (:file "trivalent" :depends-on ("packages"))
   (:file "config" :depends-on ("packages"))
   (:file "classes" :depends-on ("packages"))
   (:file "create" :depends-on ("classes" "packages"))
   (:file "generic-functions"
    :depends-on ("trivalent" "create" "classes" "packages"))
   (:file "cclass"
    :depends-on ("generic-functions" "classes" "config" "packages"))
   (:file "negation"
    :depends-on ("generic-functions" "create" "classes" "trivalent" "packages"))
   (:file "conjunction"
    :depends-on ("generic-functions" "create" "classes" "trivalent" "packages"))
   (:file "disjunction"
    :depends-on ("generic-functions" "create" "classes" "trivalent" "packages"))
   (:file "ccons"
    :depends-on ("generic-functions" "create" "classes" "trivalent" "packages"))
   (:file "range"
    :depends-on ("generic-functions" "create" "classes" "config" "packages"))
   (:file "fpzero"
    :depends-on ("generic-functions" "create" "classes" "packages"))
   (:file "ccomplex"
    :depends-on ("generic-functions" "create" "classes" "config" "packages"))
   (:file "cmember"
    :depends-on ("generic-functions" "create" "classes" "packages"))
   (:file "carray"
    :depends-on ("generic-functions" "create" "classes" "packages"))
   (:file "charset"
    :depends-on ("generic-functions" "create" "classes" "config" "packages"))
   (:file "cvalues"
    :depends-on ("generic-functions" "create" "classes" "packages"))
   (:file "cfunction"
    :depends-on ("cvalues" "generic-functions" "create" "classes" "packages"))
   (:file "csatisfies"
    :depends-on ("generic-functions" "create" "classes" "packages"))
   (:file "pairwise"
    :depends-on ("generic-functions" "trivalent" "create" "classes"
                                     "cfunction" "packages"))
   (:file "parse"
    :depends-on ("generic-functions" "create" "classes" "config" "packages"))))
