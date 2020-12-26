# Add shell & miscellaneous app aliases to .zshrc
SOURCE_FILES=(
    .aliases
    .apps
    .env-vars
)

echo "# Add shell & miscellaneous app aliases" >> ~/.zshrc

for file in ${SOURCE_FILES[@]}
do
    echo source $(pwd)/$file >> ~/.zshrc
done
