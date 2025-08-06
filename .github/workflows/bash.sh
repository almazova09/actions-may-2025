read -p "Select your choics" action

if [[ $action == "apply" ]]; then
    terraform apply -auto-approve
else
    terraform destroy -auto-approve