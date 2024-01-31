echo "Switching to branch master"
git checkout master

echo "Building app..."
npm run build

echo "Deploying files to server..."
scp -r build/* viper@192.168.1.48:/var/www/dotanlabs.com/

echo "Done!"