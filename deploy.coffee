exec = require('child_process').exec
ghpages = require('gh-pages')

commandOfGetLastCommit = "git log --pretty=format:'%h : %s' | head -n 1"

exec commandOfGetLastCommit, (err, stdout, stderr) ->
  lastCommit = stdout.replace(/\r?\n/g,"")

  console.info "Deploy '#{lastCommit}'."

  ghpages.publish 'dist',
    message: "Deploy '#{lastCommit}'"
    , (err) ->
      if err
        console.error err
      else
        console.info "Finish."
