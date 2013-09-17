(setq js-indent-level 4)

(defun json-format ()
  (interactive)
  (save-excursion
    (shell-command-on-region (mark) (point) "python -c 'import sys,json; data=json.loads(sys.stdin.read()); print json.dumps(data,sort_keys=True,indent=2).decode(\"unicode_escape\").encode(\"utf8\",\"replace\")'" (buffer-name) t)
    )
  )

(provide 'mg-javascript)
