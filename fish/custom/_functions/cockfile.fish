# upload file to cockfile - 5gb max, stores for 24 hours

function cockfile --description 'upload file to cockfile - 5gb max, stores for 24 hours'
  curl -s -F files[]=@$argv https://cockfile.com/upload.php | jq -r .files[0].url
end
