init:
	@terraform init \
    -backend-config="address=*gitlab_address*" \
    -backend-config="lock_address=*gitlab_lock_address*" \
    -backend-config="unlock_address=*gitlab_unlock_address*" \
    -backend-config="username=${GITLAB_USERNAME}" \
    -backend-config="password=${GITLAB_ACCESS_TOKEN}" \
    -backend-config="lock_method=POST" \
    -backend-config="unlock_method=DELETE" \
    -backend-config="retry_wait_min=5"
