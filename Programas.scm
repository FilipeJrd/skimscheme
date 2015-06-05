PROGRAMA 1 ---------- SOMATORIO --------- (testando if/eqv?/recursão) ---------------------------
"(begin(define f (lambda (x) (if (eqv? x 0) 0 (+ x (f (- x 1))))))(f 5))"

PROGRAMA 2 ---------- MAIOR QUE 10 DIDIDE POR 10 (testando if/lt?/divisão)--------------------------

"(begin (define f (lambda (x) (if (lt? 10 x) (/ x 10) 0))) (f 20))"

PROGRAMA 3 ----- FIBONACCI (testando eqv?/if/variavel locais e globais recursão----------------------------------------

"(begin (define n 0) (define fib (lambda (n) (if (eqv? n 0) 0 (if (eqv? n 1) 1 (+ (fib (- n 1)) (fib (- n 2))))))) (fib 18) )"

PROGRAMA 4 --------------- DIVIDE POR 5 (TESTANDO SET!) ---------------------------------

"(begin (define x 10) (define f (lambda (x) (set! x (/ x 5)))) (f 20))"

PROGRAMA 5 --------------- FATORIAL ----------------------------------

"(begin (define fat (lambda (x) (if (lt? x 1) 1 (* x (fat (- x 1)))))) (fat 2))"

PROGRAMA 6 -------------------- CHECAR PARIDADE ---------------------------
 
"(begin (define paridade (lambda (x) (begin (if (lt? x 0) (if (eqv? (mod (/ x -1) 2) 0) \"par\" \"impar\" ) (if (eqv? (mod x 2) 0) \"par\" \"impar\" )	)))) (paridade -2))"

PROGRAMA 7 -------------------- TESTANDO SET COM! LET ------------------------

"(begin (let ((x 5) (y 0)) (set! x (+ x (set! y (+ x x)))))))"

PROGRAMA 8 ---------------------------- QUICKSORT ------------------------------

"(begin (define aux (lambda (comp l) (if (eqv? l '()) '() (if (comp (car l)) (cons (car l) (aux comp (cdr l))) (aux comp (cdr l)))))) (define qcksort (lambda (l) (if (eqv? l '()) '() (let ((p (car l))) (append (append (qcksort (aux (lambda (x) (lt? x p)) l)) (aux (lambda (x) (eqv? x p)) l)) (qcksort (aux (lambda (x) (lt? p x)) l))))))) (qcksort '(7 6 5 2 3 4 1)))"

PROGRAMA 9 --------------------------- CONS COM COMMENT ----------------------------

"(begin (comment isso aqui eh um teste do cons beijos para todos) (cons '(10 22 33) '(14 45 56)))"