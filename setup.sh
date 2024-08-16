if ! command -v nasm &> /dev/null
then
    echo "nasm could not be found, installing..."
    sudo apt-get update
    sudo apt-get install -y nasm
else
    echo "nasm is already installed"
fi
