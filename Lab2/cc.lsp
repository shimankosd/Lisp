(defun makesel1()   
   (setq fp(entsel"Choose an object\n"))
   (setq fp_name(car fp))
   (setq info1(entget fp_name))
   (setq nname(assoc 0 info1))
   (setq rname(cdr nname))
   (setq np1(assoc -1 info1))
   (setq nnp1(cdr namee))
   (setq nameofe1(vl-princ-to-string nnp1))
)

(defun makesel2()   
   (setq fp2(entsel"Choose an object\n"))
   (setq fp_name2(car fp2))
   (setq info2(entget fp_name2))
   (setq nname2(assoc 0 info2))
   (setq rname2(cdr nname2))
   (setq np2(assoc -1 info2))
   (setq nnp2(cdr namee))
   (setq nameofe2(vl-princ-to-string nnp2))
)

(defun checkIntersect()
	(vl-load-com)
	(setq
		vlaobj1 (vlax-ename->vla-object fp_name)
		vlaobj2 (vlax-ename->vla-object fp_name2)
		intp (vla-intersectwith vlaobj1 vlaobj2 acExtendBoth)
		; for INTersection Point(s)
		intc (safearray-value (variant-value intp))
		; for INTersection Coord's [all together]
	); end setq
	(if (= intc nil) (setq check "Do not intersect") (setq check "Intersect"))
)

(defun main_dialog ()
  (if (not (new_dialog "cc" dcl_id)) (exit))
  
  (set_tile "e1" nameofe1)
  (set_tile "e2" nameofe2)
  (set_tile "e3" check)
 
  (action_tile "button_Cancel" "(setq w_n 0)")
  (action_tile "r2" "(done_dialog 2)")
  (action_tile "r1" "(done_dialog 1)")
  (action_tile "b1" "(done_dialog 3)")
  
  (setq w_n (start_dialog))   
  (if (= w_n 1) (makesel1))
  (if (= w_n 2) (makesel2))
  (if (= w_n 3) (checkIntersect))
  
  
)

(defun c:cc ()  ; подгрузка dcl и установка начальных значений.
  (setq w_n 2 check "" nameofe1 "" nameofe2 "")  
  (setq dcl_id (load_dialog "d:\\lab\\cc.dcl"))
  (while (> w_n 0) (main_dialog))
  (unload_dialog dcl_id)
 )