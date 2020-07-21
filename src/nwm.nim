
import logging
let log = newConsoleLogger(fmtStr = "[$date $time] - $levelname: ")
addHandler(log)

import os

proc main(argv: seq) =
  info argv[0] & " init"
  defer: info argv[0] & " fini"
  # args
  for i in pairs(argv):
    info "argv[", i.key, "] = <", i.val, ">"


when isMainModule:
  let argv = @[os.getAppFilename()] & os.commandLineParams()
  main(argv)
