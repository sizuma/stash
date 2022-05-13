 kubectl -n self-order-${1} get pod | grep -e Containe -e Terminating -e Completed | awk '{print $1}' | xargs -n 1 kubectl -n self-order-${1} delete pod
