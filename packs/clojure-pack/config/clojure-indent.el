;;; package --- Summary
;;; Commentary:
;;; Code:
(setq clojure-indent-style :align-arguments)
(define-clojure-indent
  (defroutes 'defun)
  (GET 2)
  (POST 2)
  (PUT 2)
  (DELETE 2)
  (HEAD 2)
  (ANY 2)
  (OPTIONS 2)
  (PATCH 2)
  (rfn 2)
  (let-routes 1)
  (context 2)
  (-> 1)
  (->> 1)
  (as-> 1)
  (some-> 1)
  (some->> 1))

;;; clojure-indent.el ends here
