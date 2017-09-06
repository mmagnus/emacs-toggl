;;; emacs-toggl.el --- a simple plugin to work with toggl
;;; Commentary:
;;   URL: https://github.com/mmagnus/emacs-toggl
;;; Code:


(defun toggl-start-task ()
  "Send a higlighted test (region) to toggl to start a new task."
  (interactive)
  (setq cmd (concat "toggl start" " " (buffer-substring (region-beginning) (region-end))))
  (message cmd)
  (call-process-shell-command cmd)
  )

(provide 'emacs-toggl)
;;; emacs-toggl.el ends here
