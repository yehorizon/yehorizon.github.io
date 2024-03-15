

# git submodule init;
# git submodule update;

echo "Updating _posts";
git submodule update --remote --rebase _posts;
# cd _posts; 
# git fetch;
# git merge;
echo "Merged fetched _posts";

# cd _posts;
# git checkout main;
# git submodule update --remote --merge _posts;


# # Input message for commit
# echo "Enter message for commit: ";
# read message;


# echo $message;
