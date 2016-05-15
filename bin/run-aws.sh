stackId=3fb88cac-65ed-40f1-bde6-9d127e944e5c
appId=1b4e3439-5616-480c-852a-2d5dbda1edab

if [ "$1" = "install_dependencies" ]
then
   aws opsworks --region us-east-1 create-deployment --stack-id $stackId --command "{\"Name\":\"install_dependencies\"}"
elif [ "$1" = "describe-deployments" ]
then
   aws opsworks --region us-east-1 describe-deployments --stack-id $stackId
elif [ "$1" = "setup" ]
then
   aws opsworks --region us-east-1 create-deployment --stack-id $stackId --command "{\"Name\":\"setup\"}"
elif [ "$1" = "deploy" ]
then
   aws opsworks --region us-east-1 create-deployment --app-id $appId --stack-id $stackId --command "{\"Name\":\"deploy\"}"
elif [ "$1" = "update_custom_cookbooks" ]
then
   aws opsworks --region us-east-1 create-deployment --app-id $appId --stack-id $stackId --command "{\"Name\":\"update_custom_cookbooks\"}"
else
   echo "unknown command \"$1\" "
fi
