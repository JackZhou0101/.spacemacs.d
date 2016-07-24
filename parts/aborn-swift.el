;; some swift action

(defun aborn/swift-git-commit-push (message)
  "message and push"
  (interactive "sCommit Message: ")
  (when (null message)
    (setq message (read-string "your message: " nil nil "update")))
  (message "your message is %s" message)
  (save-buffer)
  (magit-stage-modified)
  (magit-commit (list "-m" message))
  ) 

(provide 'aborn-swift)
