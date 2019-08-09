proj_name="biobert-k8s"
tar --exclude=.git --exclude=$proj_name.tar.gz -vzcf $proj_name.tar.gz ../$proj_name
scp ./$proj_name.tar.gz docker_jump:workspace/
ssh docker_jump "cd workspace && rm -r $proj_name && tar -vzxf $proj_name.tar.gz && rm $proj_name.tar.gz"
rm ./$proj_name.tar.gz
