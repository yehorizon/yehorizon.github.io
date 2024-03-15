

# git submodule init;
# git submodule update;

echo "Updating _posts";
# git submodule update --remote --rebase _posts;
# cd _posts; 
# git fetch;
# git merge;
echo "Merged fetched _posts";

# cd _posts;
# git checkout main;
# git submodule update --remote --merge _posts;


# Input message for commit
echo "Enter message for commit: ";
read message;

echo "Updating submodule";
cd _posts;
git add --all;
git commit -m "$message";
git push -u origin main;

echo "Updating parent repository";
cd ..;
git add _posts;
git commit -m "Update _posts";
git push --recurse-submodules=check;

