;;;Driver for snakes generator consumption in iterate macro.

(in-package :snakes)

(defmacro-driver (FOR var IN-GENERATOR gen)
  "Iterate through a snakes generator"
  (let ((g (gensym))
	(tmp (gensym))
	(kwd (if generate 'generate 'for)))
    `(progn
       (with ,g = ,gen)
       (,kwd ,var next (if-generator (,tmp ,g)
				     ,tmp
				     (terminate))))))



