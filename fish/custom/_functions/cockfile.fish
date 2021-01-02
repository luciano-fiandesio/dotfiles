# upload file to cockfile - 5gb max, stores for 24 hours

function cockfile
  curl --progress-bar -F file=@$argv "https://cockfile.com/api.php?d=upload-tool"
end